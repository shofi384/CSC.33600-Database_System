import React, { Component } from 'react';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App"> 
      	<div class="topics-header">List of Topics</div>
      	<div class="row topicsRow">
      		<button class="col-md-3 topics" onclick="showDecks()">Mathmatics</button>
      		<button class="col-md-3 topics" onclick="showDecks()">Science</button>
      		<button class="col-md-3 topics" onclick="showDecks()">Computer Science</button>
      	</div>
      	<div class="row topicsRow">
      		<button class="col-md-3 topics" onclick="showDecks()">English</button>
      		<button class="col-md-3 topics" onclick="showDecks()">Music</button>
      		<button class="col-md-3 topics" onclick="showDecks()">History</button>
      	</div>
      	<div class="row topicsRow">
      		<button class="col-md-3 topics" onclick="showDecks()">Art</button>
      		<button class="col-md-3 topics" onclick="showDecks()">Physics</button>
      		<button class="col-md-3 topics" onclick="showDecks()">Chemistry</button>
      	</div>
      </div>
    );
  }
}

export default App;
