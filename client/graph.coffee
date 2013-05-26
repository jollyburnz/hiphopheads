Meteor.startup ->
  width = 960
  height = 700

  barWidth = 600
  barHeight = 200
  barPadding = 1

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

  jay111 = 'M524.842,268.326c-3.065,5.717-16.699,10.218-16.281,18.219
      c0.155,2.964,2.491,5.206,6.203,5.426c-1.572,5.849-9.763,13.535-3.102,19.382c-2.545,1.133-2.988,6.494-1.551,9.303
      c0.334,2.25,4.149,1.02,5.039,2.714c-0.22,9.553,6.555,19.1,13.566,20.544c3.456,0.712,7.412-0.205,10.854-0.775
      c3.134-0.521,6.536-2.118,9.69-1.55c5.9,1.061,5.919,8.104,8.141,12.791c1.873,3.952,5.529,5.135,6.589,8.915
      c20.397-9.838,41.479-18.99,60.471-30.234c-1.77-7.736-5.199-12.405-2.327-20.156c3.02-8.146,9.341-15.144,12.405-24.033
      c2.845-8.252,4.797-20.314,2.325-32.173c-5.361-25.723-23.136-38.394-49.229-40.313c-24.85-1.828-46.353,4.174-54.268,21.32
      c-1.178,2.55-1.216,5.738-2.714,8.915c-2.014,4.268-6.978,6.051-7.753,12.017C522.405,262.46,523.281,265.746,524.842,268.326z'

  window.ross = {"name":"Rick Ross", "collaborators":[{"name":"Meek Mill", "count":"28"}, {"name":"Wale", "count":"25"}, {"name":"DJ Khaled", "count":"22"}, {"name":"Lil Wayne", "count":"14"}, {"name":"Stalley", "count":"13"}, {"name":"French Montana", "count":"13"}, {"name":"Drake", "count":"11"}, {"name":"Game", "count":"10"}, {"name":"Ace Hood", "count":"10"}, {"name":"Gunplay", "count":"9"}, {"name":"Birdman", "count":"8"}, {"name":"Jay-Z", "count":"7"}, {"name":"T-Pain", "count":"6"}, {"name":"Gucci Mane", "count":"6"}, {"name":"Rockie Fresh", "count":"5"}, {"name":"Ne-Yo", "count":"5"}, {"name":"Diddy", "count":"5"}, {"name":"Styles P", "count":"4"}, {"name":"T.I.", "count":"4"}, {"name":"Nas", "count":"4"}]}
  window.sdogg = {"name":"Snoop Dogg", "collaborators":[{"name":"Tha Dogg Pound", "count":"28"}, {"name":"Dr. Dre", "count":"27"}, {"name":"Nate Dogg", "count":"25"}, {"name":"Kurupt", "count":"17"}, {"name":"Daz Dillinger", "count":"15"}, {"name":"Warren G", "count":"11"}, {"name":"Kokane", "count":"9"}, {"name":"Master P", "count":"9"}, {"name":"C-Murder", "count":"9"}, {"name":"Soopafly", "count":"8"}, {"name":"Goldie Loc", "count":"8"}, {"name":"Game", "count":"8"}, {"name":"The Lady of Rage", "count":"8"}, {"name":"Charlie Wilson", "count":"7"}, {"name":"Tray Deee", "count":"7"}, {"name":"Silkk the Shocker", "count":"7"}, {"name":"Tha Eastsidaz", "count":"6"}, {"name":"Pharrell", "count":"6"}, {"name":"Bad Azz", "count":"6"}, {"name":"Wiz Khalifa", "count":"6"}]}
  window.wayne = {"name":"Lil Wayne", "collaborators":[{"name":"Birdman", "count":"56"}, {"name":"Drake", "count":"29"}, {"name":"Big Tymers", "count":"28"}, {"name":"Gudda Gudda", "count":"24"}, {"name":"Mack Maine", "count":"21"}, {"name":"Nicki Minaj", "count":"20"}, {"name":"B.G.", "count":"18"}, {"name":"Juvenile", "count":"17"}, {"name":"Tyga", "count":"15"}, {"name":"Rick Ross", "count":"14"}, {"name":"Mannie Fresh", "count":"12"}, {"name":"Game", "count":"12"}, {"name":"DJ Khaled", "count":"12"}, {"name":"Juelz Santana", "count":"11"}, {"name":"Jae Millz", "count":"11"}, {"name":"Curren$y", "count":"11"}, {"name":"Lloyd", "count":"9"}, {"name":"Chris Brown", "count":"9"}, {"name":"Busta Rhymes", "count":"9"}, {"name":"T-Pain", "count":"8"}]}
  window.jayz = {"name":"Jay-Z", "collaborators":[{"name":"Memphis Bleek", "count":"31"}, {"name":"Kanye West", "count":"30"}, {"name":"R. Kelly", "count":"28"}, {"name":"Beanie Sigel", "count":"24"}, {"name":"Amil", "count":"9"}, {"name":"Sauce Money", "count":"8"}, {"name":"Rick Ross", "count":"7"}, {"name":"Linkin Park", "count":"7"}, {"name":"Freeway", "count":"7"}, {"name":"Pharrell", "count":"6"}, {"name":"Big L", "count":"6"}, {"name":"Beyonc_", "count":"6"}, {"name":"Foxy Brown", "count":"6"}, {"name":"Lil Kim", "count":"5"}, {"name":"Young Jeezy", "count":"5"}, {"name":"The Notorious B.I.G.", "count":"5"}, {"name":"Scarface", "count":"4"}, {"name":"Rihanna", "count":"4"}, {"name":"Missy Elliott", "count":"4"}, {"name":"Nas", "count":"4"}]}
  window.busta = {"name":"Busta Rhymes", "collaborators":[{"name":"Lil Wayne", "count":"9"}, {"name":"Papoose", "count":"8"}, {"name":"DMX", "count":"8"}, {"name":"Q-Tip", "count":"8"}, {"name":"Missy Elliott", "count":"8"}, {"name":"Diddy", "count":"8"}, {"name":"DJ Kay Slay", "count":"7"}, {"name":"Game", "count":"7"}, {"name":"Mary J. Blige", "count":"7"}, {"name":"Rah Digga", "count":"7"}, {"name":"Swizz Beatz", "count":"7"}, {"name":"Flipmode Squad", "count":"7"}, {"name":"Raekwon", "count":"6"}, {"name":"Spliff Star", "count":"6"}, {"name":"DJ Khaled", "count":"5"}, {"name":"Nas", "count":"5"}, {"name":"The Notorious B.I.G.", "count":"5"}, {"name":"Capone N Noreaga", "count":"4"}, {"name":"N.O.R.E.", "count":"4"}, {"name":"Ghostface Killah", "count":"4"}]}
  
  #window.dataset = window.ross.collaborators

  window.render4 = ->
    console.log 'render'

    barCanvas = d3.select("#chart2").append("svg")
      .attr("width", barWidth)
      .attr("height", barHeight)

    rect = barCanvas.selectAll("rect").data(window.dataset.collaborators)

    rect.enter().append("rect")
        .attr("x", (d,i) -> return i * (barWidth / window.dataset.collaborators.length))
        .attr("y", (d) -> return barHeight)
        .attr("width", barWidth / window.dataset.collaborators.length - barPadding)
        .attr("height", (d) -> return d.count * 4)
        .attr("fill", window.color)
      .transition(1500)
        .attr("y", (d) -> return barHeight - (d.count * 4))

    rect.exit().remove()

    labels = barCanvas.selectAll("text").data(window.dataset.collaborators)

    labels.enter().append("text")
      .attr("y", (d, i) -> return -i * (barWidth / window.dataset.collaborators.length) - barPadding)
      .attr("x", (d, i) -> return -i * (barHeight / window.dataset.collaborators.length))
      .attr("transform","rotate(90)")
      .text((d) -> return d.name)
 
  Template.graph.head = ->
  	Session.get 'hoverhead'

  Template.graph.data = ->
    #console.log Session.get 'cool'
    if Session.equals 'hoverhead', 'ross'
      window.dataset = ross
      window.color = "#4F64A8"
      render4()
      #console.log _.values ross
    else if Session.equals 'hoverhead', 'snoop'
      window.dataset = sdogg
      window.color = "#C7B299"
      render4()
      #_.values sdogg
    else if Session.equals 'hoverhead', 'wayne'
      window.dataset = wayne
      window.color = "#C1272D"
      render4()
      #_.values wayne
    else if Session.equals 'hoverhead', 'jay'
      window.dataset = jayz
      window.color = "#F7931E"
      render4()
      #_.values jayz
    else if Session.equals 'hoverhead', 'busta'
      window.dataset = busta
      window.color = "#22b573"
      render4()
      #_.values busta
    else
      window.dataset = null

  Template.graph.collaborators = ->
    if window.dataset
      for i in window.dataset.collaborators
        i
