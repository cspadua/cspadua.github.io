var categories = [];
var products = [];

const getAllCategories = async () => {
  fetch(
    'http://localhost/cspadua.github.io/ADET/A04_FE&BE/A04_BE/categories.php'
  )
    .then(response => response.json())
    .then(data => {
      categories = data;
      loadCategories();
    });
}

const getAllProducts = async (categoryID) => {
  const categoryData = {
    categoryID: categoryID
  };

  fetch(
    'http://localhost/cspadua.github.io/ADET/A04_FE&BE/A04_BE/products.php', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(categoryData)
  })
    .then(response => response.json())
    .then(data => {
      products = data;
      loadProducts();
    });
}

getAllCategories();


var total = 0;

function loadCategories() {
  var categoriesContainer = document.getElementById("categories");

  categories.forEach((category) => {
    categoriesContainer.innerHTML += `
      <div onclick="getAllProducts(` + category.categoryID + `)" class="shadow-sm rounded-4 mx-1 custom-button p-3 text-center d-flex flex-column align-items-center justify-content-center">
        <img src="` + category.categoryImage + `" class="img-fluid mb-2" style="height: 25px;">
        <small>` + category.name + `</small>
      </div>
    `;
  });
}

function loadProducts(categoryID) {
  var maincontainer = document.getElementById("maincontainer");
  maincontainer.innerHTML = "";

  var categoryName = products[0].categoryName;
  maincontainer.innerHTML +=
    '<h4 class="my-3 w-100 text-start mb-3" style="font-family: \'Alexandria\', sans-serif; color: #1E3930;">' +
    categoryName + ' Menu' +
    '</h4>';

  {
    products.forEach(product => {
      maincontainer.innerHTML += `
      <div class="col-12 col-md-6 mb-4">
          <div class="card">
              <img src="` + product.contentImage + `" class="card-img-top">
              <div class="card-body">
                  <div class="d-flex justify-content-between align-items-start mb-1">
                      <div>
                          <h5 class="card-title mb-1">` + product.name + `</h5>
                      </div>
                      <h5 class="card-text mb-0">₱` + product.price + `</h5>
                  </div>
                  <div class="text-center mt-4">
                      <button id="contentBtn" onclick="addToReceipt('` + product.price + `','` + product.code + `')" class="btn btn-dark">Add to Billing</button>
                  </div>
              </div>
          </div>
      </div>
      `;

    });
  }

}

function addToReceipt(price, code) {
  var receiptContainer = document.getElementById("receipt");

  total += parseFloat(price);

  var totalValueElement = document.getElementById("totalValue");
  totalValueElement.innerHTML = "₱" + total.toFixed(2);

  receiptContainer.innerHTML += `
    <div class="m-0 d-flex flex-row justify-content-between">
      <div class="mt-2 peso">`+ code + `</div>
      <div class="mt-2 peso">₱`+ price + `</div>
    </div>
  `;

  updateTaxAndFinalPrice();
}

function updateTaxAndFinalPrice() {
  const taxRate = 0.01;
  const taxAmount = total * taxRate;
  const finalPrice = total + taxAmount;


  document.getElementById("taxValue").innerText = "₱" + taxAmount.toFixed(2);
  document.getElementById("finalPrice").innerText = "₱" + finalPrice.toFixed(2);
}

document.getElementById('resetBtn').addEventListener('click', function () {

  document.getElementById('receipt').innerHTML = '';


  total = 0;
  document.getElementById('totalValue').textContent = '₱0';
  document.getElementById('taxValue').textContent = '₱0';
  document.getElementById('finalPrice').textContent = '₱0.00';
});

