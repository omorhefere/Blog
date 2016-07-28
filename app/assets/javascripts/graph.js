$.ajax({
           type: "GET",
           contentType: "application/json; charset=utf-8",
           url: 'me/data',
           dataType: 'json',
           success: function (data) {
               draw(data);
           },
           error: function (result) {
               error();
           }
       });

function draw(data) {
    // the colour
    var color = d3.scale.category20b();
    //the width of the chart
    var width = 800,
        barHeight = 20; // the height of the bar.
    var language = ["Vanilla Javascrript", "Python", "Ruby on Rails", "Node Js", "Angular 2"];

    var x = d3.scale.linear()
        .range([0, width])
        .domain([0, 5]);

    var chart = d3.select("#graph")
        .attr("width", width)
        .attr("height", barHeight * data.length);

    var bar = chart.selectAll("g")
        .data(data)
        .enter().append("g")
        .attr("transform", function (d, i) {
                  return "translate(0," + i * barHeight + ")";
              });

    bar.append("rect")
        .attr("width", x)
        .attr("height", barHeight - 1)

        .style("fill", function (d) {
                   return color(d);
               })

    bar.append("text")
        .attr("x", function (d) {
                  return 10;
              })
        .attr("y", barHeight / 2)
        .attr("dy", ".35em")
        .style("fill", "white")
        .text(function (d) {
                  return d.key;
              });
}

function error() {
    console.log("error")
}
