import React, { useState } from 'react'
import {BsArrowRight} from 'react-icons/bs'
import Thirdpage from '/Users/macbook/bet/src/Components/Thirdpage.js';
import {Link } from "react-scroll";
import {BrowserRouter as Router, Route, Routes, useNavigate} from 'react-router-dom';
import Launch from '/Users/macbook/bet/src/Components/Launch.js'

 
export default function () {

const [click, setClick] = useState(false)
const handleClick = () => setClick(!click)
const closeMenu = () => setClick(false)
 const fire = 'http://localhost:3001/'

  return (
    <div className='Navbar'>
            <div className='Navbar-Title'>
                <h1>Bet2Earn</h1>
                <Link to="thirdpage" spy={true} smooth={true} offset={50} duration={500} onClick={closeMenu}>RoadMap</Link>
                <a  style={{textDecoration: 'none'}} href='http://localhost:3001/'>
                <button  style={{height: '70%', width: '200px', justifyContent: 'center', alignItems: 'center', marginTop: '1%'}}>Launch App <BsArrowRight /></button>
                  </a>

            </div>
    </div>
  )
}

