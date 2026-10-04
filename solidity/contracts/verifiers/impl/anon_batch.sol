// SPDX-License-Identifier: GPL-3.0
/*
    Copyright 2021 0KIMS association.

    This file is generated with [snarkJS](https://github.com/iden3/snarkjs).

    snarkJS is a free software: you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    snarkJS is distributed in the hope that it will be useful, but WITHOUT
    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
    or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public
    License for more details.

    You should have received a copy of the GNU General Public License
    along with snarkJS. If not, see <https://www.gnu.org/licenses/>.
*/

pragma solidity >=0.7.0 <0.9.0;

contract Verifier_AnonBatch {
    // Scalar field size
    uint256 constant r    = 21888242871839275222246405745257275088548364400416034343698204186575808495617;
    // Base field size
    uint256 constant q   = 21888242871839275222246405745257275088696311157297823662689037894645226208583;

    // Verification Key data
    uint256 constant alphax  = 20491192805390485299153009773594534940189261866228447918068658471970481763042;
    uint256 constant alphay  = 9383485363053290200918347156157836566562967994039712273449902621266178545958;
    uint256 constant betax1  = 4252822878758300859123897981450591353533073413197771768651442665752259397132;
    uint256 constant betax2  = 6375614351688725206403948262868962793625744043794305715222011528459656738731;
    uint256 constant betay1  = 21847035105528745403288232691147584728191162732299865338377159692350059136679;
    uint256 constant betay2  = 10505242626370262277552901082094356697409835680220590971873171140371331206856;
    uint256 constant gammax1 = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
    uint256 constant gammax2 = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
    uint256 constant gammay1 = 4082367875863433681332203403145435568316851327593401208105741076214120093531;
    uint256 constant gammay2 = 8495653923123431417604973247489272438418190587263600148770280649306958101930;
    uint256 constant deltax1 = 15290243113717094010696443499956496811597938823256676400480551555050359410200;
    uint256 constant deltax2 = 7948686988127858703781793621579412430883611370963144040050828432829887570572;
    uint256 constant deltay1 = 3538849180598498119373163191578022339186998702295409330222379611993095388671;
    uint256 constant deltay2 = 8192132429359858219086879668964231908091880769662195350222672938217497763806;

    
    uint256 constant IC0x = 3289580265297093986329267540689566380882183957073457943328192285748507957180;
    uint256 constant IC0y = 15857383689835852813629339293135984473135196045942535414591731399041618353491;
    
    uint256 constant IC1x = 7231905814236635747131481681298149254159844721380194938037502480606940154048;
    uint256 constant IC1y = 6078900539668521465111518903107585624752731276016478526292973420820786831342;
    
    uint256 constant IC2x = 4285154630305388962997152469592760329715358888871719126061860571679819490369;
    uint256 constant IC2y = 6624920594452141051557764716317445524677911412906217044736674243070867309927;
    
    uint256 constant IC3x = 14384959662359423164136009058067591883238432745665239148637931161401697030568;
    uint256 constant IC3y = 702917398824039130851560065306001100941834240013860772450047097299318201740;
    
    uint256 constant IC4x = 2776498842291993317668015101565923635917513139963463271961071009674677814072;
    uint256 constant IC4y = 10259375556154281407345983920604443050943712304606535999885660319934647194463;
    
    uint256 constant IC5x = 3235845247012125554479902174041931612255895342943641843314019058983929229235;
    uint256 constant IC5y = 19880121957670238767717752879081327643540720907269058539334334069410156644554;
    
    uint256 constant IC6x = 12120195110747206993765452278773292733398513001700541097655034486210782820911;
    uint256 constant IC6y = 11297620910744693810900165070754887881464920779361053425330459312738144186746;
    
    uint256 constant IC7x = 19243127646332377691364920075332865382133922056190580831339410455193478324943;
    uint256 constant IC7y = 13618628361525103713591128129200140871360635169781929162943764200527400124067;
    
    uint256 constant IC8x = 19002808211277244784395943183877825107158230947622107663402026243348262132504;
    uint256 constant IC8y = 2579892701450718228049602984337231400027558472175678808928872606527689809857;
    
    uint256 constant IC9x = 19913343277173850297833881373618334718342100763077989521044063067395387721642;
    uint256 constant IC9y = 18227292541943766772890303283688577838326524632822649025508801737503293414298;
    
    uint256 constant IC10x = 1716106737742189904208475192127609352948006125274333028867121542466809355354;
    uint256 constant IC10y = 19004347246498658099755144905198713889661638711340532297542946926239190744581;
    
    uint256 constant IC11x = 19175452132656493615387695217021670144552990899688484034739745412569023917611;
    uint256 constant IC11y = 14975833822258377851245951458362261079569047566778738805404071974599096151443;
    
    uint256 constant IC12x = 6233707834611108649827103590128975037713958245218933540705228116004652446066;
    uint256 constant IC12y = 14618934858226665381993540585131585022874642636681411207279126713711217964123;
    
    uint256 constant IC13x = 350114245522332109106207841925538196365574427735431645987219412759439706382;
    uint256 constant IC13y = 733429083391041601974581391030190601307207295879054572163799423436626144582;
    
    uint256 constant IC14x = 11354334806802821135698206413012184910319342387421946165202517758590135406088;
    uint256 constant IC14y = 7205166534276428666402488556993074927850058611539953940607297209454868885240;
    
    uint256 constant IC15x = 9150973854005627586253466700869253565295025701737251775031557178150672291526;
    uint256 constant IC15y = 9278860912583801512906083348096081644087870852360527643393935071121687889710;
    
    uint256 constant IC16x = 16996756843109785275620769620901491206582358649341277328906056395820812198610;
    uint256 constant IC16y = 13925916450080813713590673168149696022008374006650415282765851204680445427930;
    
    uint256 constant IC17x = 18172995704745837721989662555688377536661432270292508489873178979875167969017;
    uint256 constant IC17y = 5850505229202181299056446720314030173943300332712890059255656582684464361016;
    
    uint256 constant IC18x = 7662367822083948512643826942821389075376233372745957640363318235203610986696;
    uint256 constant IC18y = 15764519967044636651634888196196665423558233894430079811274709331439482232766;
    
    uint256 constant IC19x = 10236950939201708033565176774315839835054267831219114550519786126253177936944;
    uint256 constant IC19y = 1712454041398414327267094109053375374661711400857253490889239245301750619712;
    
    uint256 constant IC20x = 2972983357954193792563016397931778447474367928990421088558753564473821211905;
    uint256 constant IC20y = 14300117923964359579481465865461188288733095735915688507291614335891742037172;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[20] calldata _pubSignals) public view returns (bool) {
        assembly {
            function checkField(v) {
                if iszero(lt(v, r)) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }
            
            // G1 function to multiply a G1 value(x,y) to value in an address
            function g1_mulAccC(pR, x, y, s) {
                let success
                let mIn := mload(0x40)
                mstore(mIn, x)
                mstore(add(mIn, 32), y)
                mstore(add(mIn, 64), s)

                success := staticcall(sub(gas(), 2000), 7, mIn, 96, mIn, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }

                mstore(add(mIn, 64), mload(pR))
                mstore(add(mIn, 96), mload(add(pR, 32)))

                success := staticcall(sub(gas(), 2000), 6, mIn, 128, pR, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }

            function checkPairing(pA, pB, pC, pubSignals, pMem) -> isOk {
                let _pPairing := add(pMem, pPairing)
                let _pVk := add(pMem, pVk)

                mstore(_pVk, IC0x)
                mstore(add(_pVk, 32), IC0y)

                // Compute the linear combination vk_x
                
                g1_mulAccC(_pVk, IC1x, IC1y, calldataload(add(pubSignals, 0)))
                
                g1_mulAccC(_pVk, IC2x, IC2y, calldataload(add(pubSignals, 32)))
                
                g1_mulAccC(_pVk, IC3x, IC3y, calldataload(add(pubSignals, 64)))
                
                g1_mulAccC(_pVk, IC4x, IC4y, calldataload(add(pubSignals, 96)))
                
                g1_mulAccC(_pVk, IC5x, IC5y, calldataload(add(pubSignals, 128)))
                
                g1_mulAccC(_pVk, IC6x, IC6y, calldataload(add(pubSignals, 160)))
                
                g1_mulAccC(_pVk, IC7x, IC7y, calldataload(add(pubSignals, 192)))
                
                g1_mulAccC(_pVk, IC8x, IC8y, calldataload(add(pubSignals, 224)))
                
                g1_mulAccC(_pVk, IC9x, IC9y, calldataload(add(pubSignals, 256)))
                
                g1_mulAccC(_pVk, IC10x, IC10y, calldataload(add(pubSignals, 288)))
                
                g1_mulAccC(_pVk, IC11x, IC11y, calldataload(add(pubSignals, 320)))
                
                g1_mulAccC(_pVk, IC12x, IC12y, calldataload(add(pubSignals, 352)))
                
                g1_mulAccC(_pVk, IC13x, IC13y, calldataload(add(pubSignals, 384)))
                
                g1_mulAccC(_pVk, IC14x, IC14y, calldataload(add(pubSignals, 416)))
                
                g1_mulAccC(_pVk, IC15x, IC15y, calldataload(add(pubSignals, 448)))
                
                g1_mulAccC(_pVk, IC16x, IC16y, calldataload(add(pubSignals, 480)))
                
                g1_mulAccC(_pVk, IC17x, IC17y, calldataload(add(pubSignals, 512)))
                
                g1_mulAccC(_pVk, IC18x, IC18y, calldataload(add(pubSignals, 544)))
                
                g1_mulAccC(_pVk, IC19x, IC19y, calldataload(add(pubSignals, 576)))
                
                g1_mulAccC(_pVk, IC20x, IC20y, calldataload(add(pubSignals, 608)))
                

                // -A
                mstore(_pPairing, calldataload(pA))
                mstore(add(_pPairing, 32), mod(sub(q, calldataload(add(pA, 32))), q))

                // B
                mstore(add(_pPairing, 64), calldataload(pB))
                mstore(add(_pPairing, 96), calldataload(add(pB, 32)))
                mstore(add(_pPairing, 128), calldataload(add(pB, 64)))
                mstore(add(_pPairing, 160), calldataload(add(pB, 96)))

                // alpha1
                mstore(add(_pPairing, 192), alphax)
                mstore(add(_pPairing, 224), alphay)

                // beta2
                mstore(add(_pPairing, 256), betax1)
                mstore(add(_pPairing, 288), betax2)
                mstore(add(_pPairing, 320), betay1)
                mstore(add(_pPairing, 352), betay2)

                // vk_x
                mstore(add(_pPairing, 384), mload(add(pMem, pVk)))
                mstore(add(_pPairing, 416), mload(add(pMem, add(pVk, 32))))


                // gamma2
                mstore(add(_pPairing, 448), gammax1)
                mstore(add(_pPairing, 480), gammax2)
                mstore(add(_pPairing, 512), gammay1)
                mstore(add(_pPairing, 544), gammay2)

                // C
                mstore(add(_pPairing, 576), calldataload(pC))
                mstore(add(_pPairing, 608), calldataload(add(pC, 32)))

                // delta2
                mstore(add(_pPairing, 640), deltax1)
                mstore(add(_pPairing, 672), deltax2)
                mstore(add(_pPairing, 704), deltay1)
                mstore(add(_pPairing, 736), deltay2)


                let success := staticcall(sub(gas(), 2000), 8, _pPairing, 768, _pPairing, 0x20)

                isOk := and(success, mload(_pPairing))
            }

            let pMem := mload(0x40)
            mstore(0x40, add(pMem, pLastMem))

            // Validate that all evaluations ∈ F
            
            checkField(calldataload(add(_pubSignals, 0)))
            
            checkField(calldataload(add(_pubSignals, 32)))
            
            checkField(calldataload(add(_pubSignals, 64)))
            
            checkField(calldataload(add(_pubSignals, 96)))
            
            checkField(calldataload(add(_pubSignals, 128)))
            
            checkField(calldataload(add(_pubSignals, 160)))
            
            checkField(calldataload(add(_pubSignals, 192)))
            
            checkField(calldataload(add(_pubSignals, 224)))
            
            checkField(calldataload(add(_pubSignals, 256)))
            
            checkField(calldataload(add(_pubSignals, 288)))
            
            checkField(calldataload(add(_pubSignals, 320)))
            
            checkField(calldataload(add(_pubSignals, 352)))
            
            checkField(calldataload(add(_pubSignals, 384)))
            
            checkField(calldataload(add(_pubSignals, 416)))
            
            checkField(calldataload(add(_pubSignals, 448)))
            
            checkField(calldataload(add(_pubSignals, 480)))
            
            checkField(calldataload(add(_pubSignals, 512)))
            
            checkField(calldataload(add(_pubSignals, 544)))
            
            checkField(calldataload(add(_pubSignals, 576)))
            
            checkField(calldataload(add(_pubSignals, 608)))
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }
