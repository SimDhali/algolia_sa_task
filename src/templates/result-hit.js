const resultHit = (hit, { html, sendEvent }) => html`
  <div>
    <div class="result-hit__image-container">
      <img class="result-hit__image" src="${hit.image}" />
    </div>
    <div class="result-hit__details">
      <h3 class="result-hit__name">${hit._highlightResult.name.value}</h3>
      <p class="result-hit__price">${hit.price}</p>
    </div>
    <div class="result-hit__controls">
      <button onclick="${() => sendEvent('click', hit, 'Product Viewed')}">View</button>
      <button onclick="${() => sendEvent('conversion', hit, 'Product Added To Cart')}">Add To Cart</button>
    </div>
  </div>
`;

export default resultHit;
