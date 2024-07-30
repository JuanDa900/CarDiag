document.addEventListener('DOMContentLoaded', function() {

    var lineasPorMarca = {
        'Toyota': ['Corolla', 'Camry', 'Prius', 'Rav4', 'Highlander', 'Tacoma', 'Sienna', 'C-HR', 'Avalon', '4Runner',],
        'Mazda': ['Mazda3', 'Mazda6', 'CX-5', 'MX-5 Miata', 'CX-9', 'Mazda2', 'Mazda5', 'RX-8', 'CX-30', 'MX-30',],
        'Honda': ['Civic', 'Accord', 'CR-V', 'Pilot', 'Fit', 'HR-V', 'Ridgeline', 'Odyssey', 'Insight', 'Passport',],
        'Ford': ['Focus', 'Fusion', 'Escape', 'Explorer', 'Mustang', 'Edge', 'F-150', 'Expedition', 'Ranger', 'EcoSport',],
        'Chevrolet': ['Malibu', 'Cruze', 'Equinox', 'Traverse', 'Silverado', 'Blazer', 'Suburban', 'Colorado', 'Tahoe', 'Spark',]
    };

    var marcaSelect = document.getElementById('id_marca');
    var lineaSelect = document.getElementById('id_linea');

    document.getElementById('id_marca').addEventListener('change', function() {
        var marcaSeleccionada = this.value;
        var lineas = lineasPorMarca[marcaSeleccionada];
        var lineaSelect = document.getElementById('id_linea');
        lineaSelect.innerHTML = '';

        lineas.forEach(function(linea) {
            var option = new Option(linea, linea);
            lineaSelect.options.add(option);
        });
    });

    if (marcaSelect.value) {
        marcaSelect.dispatchEvent(new Event('change'));
    }
    
});
