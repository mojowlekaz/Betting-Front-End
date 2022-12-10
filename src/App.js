import './App.css';
import Firstpage from './Components/Firstpage';
import Secondpage from './Components/Secondpage';
import Thirdpage from './Components/Thirdpage';
import Footer from './Components/Footer';
import  Launch from './Components/Launch';
import Navbar from "/Users/macbook/bet/src/Components/Navbar.js"
import {BrowserRouter as Router, Route, Routes} from 'react-router-dom';
import {Link } from "react-scroll";



function App() {
  return (
    <div className="Main-Container">

        <Navbar />
      
      <Firstpage />
      <Secondpage />
      <Thirdpage />
      <Footer />

    </div>
  );
}

export default App;
