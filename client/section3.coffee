Meteor.startup ->
  width = 960
  height = 700
  centerNodeSize = 50
  nodeSize = 10
  colorScale = d3.scale.category20()

  focalNodeID = "N1"

  nodeSet = [
    {id: "N1", name: "Snoop Dogg", type: "Type 1", hlink: "http://www.if4it.com"},
    {id: "N2", name: "Meek Mills", type: "Type 3", hlink: "http://www.if4it.com/glossary.html"},
    {id: "N3", name: "Node 3", type: "Type 4", hlink: "http://www.if4it.com/resources.html"},
    {id: "N4", name: "Node 4", type: "Type 5", hlink: "http://www.if4it.com/taxonomy.html"},
    {id: "N5", name: "Node 5", type: "Type 1", hlink: "http://www.if4it.com/disciplines.html"},
    {id: "N6", name: "Node 6", type: "Type 2", hlink: "http://www.if4it.com"},
    {id: "N7", name: "Node 7", type: "Type 3", hlink: "http://www.if4it.com/glossary.html"},
    {id: "N8", name: "Node 8", type: "Type 4", hlink: "http://www.if4it.com/resources.html"},
    {id: "N9", name: "Node 9", type: "Type 5", hlink: "http://www.if4it.com/taxonomy.html"},
    {id: "N10", name: "Node 10", type: "Type 1", hlink: "http://www.if4it.com/disciplines.html"},
    {id: "N11", name: "Node 11", type: "Type 2", hlink: "http://www.if4it.com"},
    {id: "N12", name: "Node 12", type: "Type 3", hlink: "http://www.if4it.com/glossary.html"},
    {id: "N13", name: "Node 13", type: "Type 4", hlink: "http://www.if4it.com/resources.html"},
    {id: "N14", name: "Node 14", type: "Type 5", hlink: "http://www.if4it.com/taxonomy.html"},
    {id: "N15", name: "Node 15", type: "Type 1", hlink: "http://www.if4it.com/disciplines.html"},
    {id: "N16", name: "Node 16", type: "Type 3", hlink: "http://www.if4it.com"},
    {id: "N17", name: "Node 17", type: "Type 1", hlink: "http://www.if4it.com/glossary.html"},
    {id: "N18", name: "Node 18", type: "Type 1", hlink: "http://www.if4it.com/glossary.html"},
    {id: "N19", name: "Node 19", type: "Type 4", hlink: "http://www.if4it.com/glossary.html"},
    {id: "N20", name: "Node 20", type: "Type 4", hlink: "http://www.if4it.com/glossary.html"},
    {id: "N21", name: "Node 21", type: "Type 4", hlink: "http://www.if4it.com/glossary.html"},
    {id: "N22", name: "Node 22", type: "Type 1", hlink: "http://www.if4it.com/glossary.html"},
    {id: "N23", name: "Node 23", type: "Type 5", hlink: "http://www.if4it.com/glossary.html"},
    {id: "N24", name: "Node 24", type: "Type 5", hlink: "http://www.if4it.com/glossary.html"}
  ]

  linkSet = [
    {sourceId: "N1", linkName: "Relationship 1", targetId: "N2"},
    {sourceId: "N1", linkName: "Relationship 2", targetId: "N3"},
    {sourceId: "N1", linkName: "Relationship 3", targetId: "N4"},
    {sourceId: "N1", linkName: "Relationship 4", targetId: "N5"},
    {sourceId: "N1", linkName: "Relationship 5", targetId: "N6"},
    {sourceId: "N1", linkName: "Relationship 6", targetId: "N7"},
    {sourceId: "N1", linkName: "Relationship 7", targetId: "N8"},
    {sourceId: "N1", linkName: "Relationship 8", targetId: "N9"},
    {sourceId: "N1", linkName: "Relationship 9", targetId: "N10"},
    {sourceId: "N1", linkName: "Relationship 10", targetId: "N11"},
    {sourceId: "N1", linkName: "Relationship 11", targetId: "N12"},
    {sourceId: "N1", linkName: "Relationship 12", targetId: "N13"},
    {sourceId: "N1", linkName: "Relationship 13", targetId: "N14"},
    {sourceId: "N1", linkName: "Relationship 14", targetId: "N15"},
    {sourceId: "N1", linkName: "Relationship 15", targetId: "N16"},
    {sourceId: "N1", linkName: "Relationship 16", targetId: "N17"},
    {sourceId: "N1", linkName: "Relationship 17", targetId: "N18"},
    {sourceId: "N1", linkName: "Relationship 18", targetId: "N19"},
    {sourceId: "N1", linkName: "Relationship 19", targetId: "N20"},
    {sourceId: "N1", linkName: "Relationship 20", targetId: "N21"},
    {sourceId: "N1", linkName: "Relationship 21", targetId: "N22"},
    {sourceId: "N1", linkName: "Relationship 22", targetId: "N23"},
    {sourceId: "N1", linkName: "Relationship 23", targetId: "N24"},
    {sourceId: "N3", linkName: "Relationship 23", targetId: "N23"}
  ]

  snoop = "M674.814,70.332C624.992,36.642,520.879,46.84,520.879,46.84s-61.081,5.75-136.1,40.815c-75.023,35.058-124.191,124.231-124.191,124.231l-12.104,109.492l-5.565,1.646l-2.498,30.773l1.088,4.143l4.216-1.109l-0.643,44.039l29.783,23.967L239.127,538.85l49.943,21.709l-4.421,34.887l48.659,11.525l3.021,19.994l-4.688,21.756l24.624,32.365l25.765-2.902l-10.471,31.807l44.274,19.953l56.721-5.494l27.28-55.442c0,0,94.445-66.725,125.273-102.354l-13.564,107.241l36.525-13.141l54.543-224.364l8.186-3.902l17.001,46.925l24.632,177.19l31.836-22.217l-7.115-278.957l-43.812-193.763C733.338,161.665,724.633,104.023,674.814,70.332z"
    
  render = ->
    console.log 'render'
    svgCanvas = d3.select("#chart").append("svg")
      .attr("width", width)
      .attr("height", height)

    node_hash = []
    type_hash = []

    # Create a hash that allows access to each node by its id
    nodeSet.forEach (d, i) ->
      node_hash[d.id] = d
      type_hash[d.type] = d.type

    #Append the source object node and the target object node to each link
    linkSet.forEach (d, i) ->
      d.source = node_hash[d.sourceId]
      d.target = node_hash[d.targetId]
      if d.sourceId is focalNodeID
        d.direction = "OUT"
      else
        d.direction = "IN"

    tick = ->
      link
        .attr("x1", (d) -> d.source.x)
        .attr("y1", (d) -> d.source.y)
        .attr("x2", (d) -> d.target.x)
        .attr("y2", (d) -> d.target.y)
      console.log node, 'node'
      node.attr "transform", (d) -> "translate(" + d.x + "," + d.y + ")"

      linkText.attr("x", (d) ->
        if d.target.x > d.source.x
          d.source.x + (d.target.x - d.source.x) / 2
        else
          d.target.x + (d.source.x - d.target.x) / 2
      ).attr "y", (d) ->
        if d.target.y > d.source.y
          d.source.y + (d.target.y - d.source.y) / 2
        else
          d.target.y + (d.source.y - d.target.y) / 2

    nodeMouseover = ->
      d3.select(this).select("circle")
        .transition()
          .duration(250)
          .attr "r", (d, i) -> if d.id is focalNodeID then 65 else 15

      d3.select(this).select("text")
        .transition()
          .duration(250)
          .style("font", "bold 20px Arial")
          .attr "fill", "Blue"
    
    nodeMouseout = ->
      d3.select(this).select("circle")
        .transition()
          .duration(250)
          .attr "r", (d, i) -> if d.id is focalNodeID then centerNodeSize else nodeSize

      d3.select(this).select("text")
        .transition()
          .duration(250)
          .style("font", "normal 16px Arial")
          .attr "fill", "Blue"

    # Create a force layout and bind Nodes and Links
    force = d3.layout.force()
      .charge(-1000)
      .nodes(nodeSet)
      .links(linkSet)
      .size([width, height])
      .linkDistance((d) -> if (width < height) then width*1/3 else height*1/3 )
      .on("tick", tick)
      .start()

    # Draw lines for Links between Nodes
    link = svgCanvas.selectAll(".gLink")
      .data(force.links())
      .enter()
      .append("g").attr("class", "gLink")
      .append("line")
        .attr("class", "link")
        .style("stroke", "#ccc")
        .attr("x1", (d) -> d.source.x )
        .attr("y1", (d) -> d.source.y )
        .attr("x2", (d) -> d.target.x )
        .attr("y2", (d) -> d.target.y )

    # Create Nodes
    node = svgCanvas.selectAll(".node")
      .data(force.nodes())
      .enter().append("g")
      .attr("class", "node")
      .attr("id", (d) ->
        d.id )
      .on("mouseover", nodeMouseover)
      .on("mouseout", nodeMouseout)
      .call(force.drag)

    #Append circles to Nodes
    ###
    node.append("circle")
      .attr("x", (d) -> d.x)
      .attr("y", (d) -> d.y)
      .attr("r", (d) ->
        if d.id is focalNodeID
          centerNodeSize
        else
          nodeSize )
      .style("fill", "White")
      .style("stroke-width", 5)
      .style("stroke", (d, i) ->
        colorVal = colorScale(i)
        colorVal )
      .call force.drag
    ###
    node.append('path')
      .attr('d', snoop)
      .attr('transform', "scale(0.1)")
      .call(force.drag)

    # Append text to Nodes
    node.append("a")
      .attr("xlink:href", (d) -> d.hlink)
      .append("text").attr("x", (d) -> if d.id is focalNodeID then 0 else 20 )
      .attr("y", (d) -> if d.id is focalNodeID then 0 else -10 )
      .attr("text-anchor", (d) -> if d.id is focalNodeID then "middle" else "start" )
      .attr("font-family", "Arial, Helvetica, sans-serif")
      .style("font", "normal 16px Arial")
      .attr("fill", "Blue")
      .attr("dy", ".35em")
      .text (d) -> d.name
    
    # Append text to Link edges
    linkText = svgCanvas.selectAll(".gLink")
      .data(force.links()).append("text")
        .attr("font-family", "Arial, Helvetica, sans-serif")
        .attr("x", (d) -> if d.target.x > d.source.x then d.source.x + (d.target.x - d.source.x) / 2 else d.target.x + (d.source.x - d.target.x) / 2 )
        .attr("y", (d) -> if d.target.y > d.source.y then d.source.y + (d.target.y - d.source.y) / 2 else d.target.y + (d.source.y - d.target.y) / 2 )
        .attr("fill", "Maroon")
        .style("font", "normal 12px Arial")
        .attr("dy", ".35em")
        .text((d) -> null )

  $('#chart').ready render()
