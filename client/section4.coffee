Meteor.startup ->
  console.log 'hello'
  window.ross = {"name":"Rick Ross", "collaborators":[{"name":"Meek Mill", "count":"28"}, {"name":"Wale", "count":"25"}, {"name":"DJ Khaled", "count":"22"}, {"name":"Lil Wayne", "count":"14"}, {"name":"Stalley", "count":"13"}, {"name":"French Montana", "count":"13"}, {"name":"Drake", "count":"11"}, {"name":"Game", "count":"10"}, {"name":"Ace Hood", "count":"10"}, {"name":"Gunplay", "count":"9"}, {"name":"Birdman", "count":"8"}, {"name":"Jay-Z", "count":"7"}, {"name":"T-Pain", "count":"6"}, {"name":"Gucci Mane", "count":"6"}, {"name":"Rockie Fresh", "count":"5"}, {"name":"Ne-Yo", "count":"5"}, {"name":"Diddy", "count":"5"}, {"name":"Styles P", "count":"4"}, {"name":"T.I.", "count":"4"}, {"name":"Nas", "count":"4"}]}
  window.sdogg = {"name":"Snoop Dogg", "collaborators":[{"name":"Tha Dogg Pound", "count":"28"}, {"name":"Dr. Dre", "count":"27"}, {"name":"Nate Dogg", "count":"25"}, {"name":"Kurupt", "count":"17"}, {"name":"Daz Dillinger", "count":"15"}, {"name":"Warren G", "count":"11"}, {"name":"Kokane", "count":"9"}, {"name":"Master P", "count":"9"}, {"name":"C-Murder", "count":"9"}, {"name":"Soopafly", "count":"8"}, {"name":"Goldie Loc", "count":"8"}, {"name":"Game", "count":"8"}, {"name":"The Lady of Rage", "count":"8"}, {"name":"Charlie Wilson", "count":"7"}, {"name":"Tray Deee", "count":"7"}, {"name":"Silkk the Shocker", "count":"7"}, {"name":"Tha Eastsidaz", "count":"6"}, {"name":"Pharrell", "count":"6"}, {"name":"Bad Azz", "count":"6"}, {"name":"Wiz Khalifa", "count":"6"}]}
  window.wayne = {"name":"Lil Wayne", "collaborators":[{"name":"Birdman", "count":"56"}, {"name":"Drake", "count":"29"}, {"name":"Big Tymers", "count":"28"}, {"name":"Gudda Gudda", "count":"24"}, {"name":"Mack Maine", "count":"21"}, {"name":"Nicki Minaj", "count":"20"}, {"name":"B.G.", "count":"18"}, {"name":"Juvenile", "count":"17"}, {"name":"Tyga", "count":"15"}, {"name":"Rick Ross", "count":"14"}, {"name":"Mannie Fresh", "count":"12"}, {"name":"Game", "count":"12"}, {"name":"DJ Khaled", "count":"12"}, {"name":"Juelz Santana", "count":"11"}, {"name":"Jae Millz", "count":"11"}, {"name":"Curren$y", "count":"11"}, {"name":"Lloyd", "count":"9"}, {"name":"Chris Brown", "count":"9"}, {"name":"Busta Rhymes", "count":"9"}, {"name":"T-Pain", "count":"8"}]}
  window.jay = {"name":"Jay-Z", "collaborators":[{"name":"Memphis Bleek", "count":"31"}, {"name":"Kanye West", "count":"30"}, {"name":"R. Kelly", "count":"28"}, {"name":"Beanie Sigel", "count":"24"}, {"name":"Amil", "count":"9"}, {"name":"Sauce Money", "count":"8"}, {"name":"Rick Ross", "count":"7"}, {"name":"Linkin Park", "count":"7"}, {"name":"Freeway", "count":"7"}, {"name":"Pharrell", "count":"6"}, {"name":"Big L", "count":"6"}, {"name":"Beyonc_", "count":"6"}, {"name":"Foxy Brown", "count":"6"}, {"name":"Lil Kim", "count":"5"}, {"name":"Young Jeezy", "count":"5"}, {"name":"The Notorious B.I.G.", "count":"5"}, {"name":"Scarface", "count":"4"}, {"name":"Rihanna", "count":"4"}, {"name":"Missy Elliott", "count":"4"}, {"name":"Nas", "count":"4"}]}
  window.busta = {"name":"Busta Rhymes", "collaborators":[{"name":"Lil Wayne", "count":"9"}, {"name":"Papoose", "count":"8"}, {"name":"DMX", "count":"8"}, {"name":"Q-Tip", "count":"8"}, {"name":"Missy Elliott", "count":"8"}, {"name":"Diddy", "count":"8"}, {"name":"DJ Kay Slay", "count":"7"}, {"name":"Game", "count":"7"}, {"name":"Mary J. Blige", "count":"7"}, {"name":"Rah Digga", "count":"7"}, {"name":"Swizz Beatz", "count":"7"}, {"name":"Flipmode Squad", "count":"7"}, {"name":"Raekwon", "count":"6"}, {"name":"Spliff Star", "count":"6"}, {"name":"DJ Khaled", "count":"5"}, {"name":"Nas", "count":"5"}, {"name":"The Notorious B.I.G.", "count":"5"}, {"name":"Capone N Noreaga", "count":"4"}, {"name":"N.O.R.E.", "count":"4"}, {"name":"Ghostface Killah", "count":"4"}]}
  ###
  r = d3.select('#ross')
    .on 'mouseover', ->
      d3.select(@).selectAll('path').attr('fill', 'black')
      #Session.set 'data', 'ross'
    .on 'mouseout', ->
      d3.select(@).selectAll('path').attr('fill', '#657cdb')

  s = d3.select('#snoop')
    .on 'mouseover', ->
      d3.select(@).selectAll('path').attr('fill', 'black')
      #Session.set 'data', 'sdogg'
    .on 'mouseout', ->
      d3.select(@).selectAll('path').attr('fill', '#c7b299')

  w = d3.select('#wayne')
    .on 'mouseover', ->
      d3.select(@).selectAll('path').attr('fill', 'black')
      #Session.set 'data', 'wayne'
    .on 'mouseout', ->
      d3.select(@).selectAll('path').attr('fill', '#c1272d')

  j = d3.select('#jay')
    .on 'mouseover', ->
      d3.select(@).selectAll('path').attr('fill', 'black')
        .transition()
        .duration(400)
        .attr('transform', 'translate(-10,-10) scale(1.1)')
      #Session.set 'data', 'jay'
    .on 'mouseout', ->
      d3.select(@).selectAll('path').attr('fill', '#f7931e')
        .transition()
        .duration(400)
        .attr('transform', 'scale(1)')

  b = d3.select('#busta')
    .on 'mouseover', ->
      d3.select(@).selectAll('path').attr('fill', 'black')
        .transition()
        .duration(400)
        .attr('transform', 'translate(-10,-10) scale(1.1)')
      #Session.set 'data', 'busta'
    .on 'mouseout', ->
      d3.select(@).selectAll('path').attr('fill', '#22B573')
        .transition()
        .duration(400)
        .attr('transform', 'scale(1)')
  window.cream = [r,s,w,j,b]

  force = d3.layout.force()
    .nodes(cream)
    .links([])
    .size([30, 30])
    .start()
  ###
  d3.select('#heads').selectAll('g')
    .attr('opacity', 0.6)
    .on 'mouseover', ->
      Session.set 'cool', $(@).attr 'id'
      console.log $(@).attr 'id'
      d3.select(@).transition().duration(400).attr('opacity', 1)
      d3.select(@).selectAll('path')
        .transition()
        .duration(400)
        .attr('transform', 'translate(-10,-10) scale(1.1)')
      #Session.set 'data', 'dope'
    .on 'mouseout', ->
      d3.select(@).transition().duration(400).attr('opacity', 0.6)
      d3.select(@).selectAll('path')
        .transition()
        .duration(400)
        .attr('transform', 'scale(1)')
      #Session.set 'data', null
