(async function () {
  const table = document.getElementById("table");
  const resultFetch = await fetch("/api/roads/longest");
  if (!resultFetch.ok) return console.error(await resultFetch.json());

  const result = await resultFetch.json();

  return result.forEach((value) => {
    const tr = document.createElement("tr");
    const index = document.createElement("th");
    index.scope = "row";
    index.textContent = value.index;
    const name = document.createElement("td");
    name.textContent = value.name;
    const length = document.createElement("td");
    length.textContent = value.length;
    tr.appendChild(index);
    tr.appendChild(name);
    tr.appendChild(length);
    table.appendChild(tr);
  });
})();
