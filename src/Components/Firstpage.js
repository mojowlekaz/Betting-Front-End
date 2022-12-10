import React from 'react'
import useWindowDimensions from './usewindow'
import {BsArrowRight } from 'react-icons/bs'

export default function Firstpage() {
  const { height, width } = useWindowDimensions();
  return (
    
    <div className='First-Container'>

      <h1 className='set'> Decentralised Prediction Markets on the blockchain 
      <p>Bet on your beliefs. Play and earn in crypto.</p>
      <p className='Sb'>Built On <o>ETHEREUM</o></p>
      <button style={{width: '300px'}} >Launch App <><BsArrowRight style={{width: '40px', fontSize: '20px'}}  /></></button>
      </h1> 
            <img   className="pic"src={require('/Users/macbook/bet/src/assets/hero_image.webp')} />  
    </div>
  )
}


