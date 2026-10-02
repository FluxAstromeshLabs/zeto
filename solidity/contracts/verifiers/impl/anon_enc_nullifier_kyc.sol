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

contract Verifier_AnonEncNullifierKyc {
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
    uint256 constant deltax1 = 15634485454944268044762001367236166717762160886771259692125127069628906619821;
    uint256 constant deltax2 = 4699919316125060392072876782308695324603261600254651909754278812884745033332;
    uint256 constant deltay1 = 2232365788967648685579743071963466730096694731221508905198653527490573164709;
    uint256 constant deltay2 = 14557339125855138273448964986695632358583603142736986221643227033326792264050;

    
    uint256 constant IC0x = 14357069753087450594795441194588919140632509564986676260021801203511096257256;
    uint256 constant IC0y = 17496121415151976234933656313076590736485650003737277708948184852703501875910;
    
    uint256 constant IC1x = 14314409661252983191518047819108561935932050091616550564801407944427395401953;
    uint256 constant IC1y = 4232140867978677780190827305183961892753145708561358605392337187694147239039;
    
    uint256 constant IC2x = 21448467665990222073823795309857302577505598972331291493815468603504077721350;
    uint256 constant IC2y = 12724245848702032284833897928679910449535885550419283114655045276154557939602;
    
    uint256 constant IC3x = 6047268686854672987258369394865405169358679224220521845509176381198642891155;
    uint256 constant IC3y = 11072562735986648660159427797689258528916097119488330381940362363931550706164;
    
    uint256 constant IC4x = 11064960424450381148036208346463877511309493695838771060303164226141665263972;
    uint256 constant IC4y = 5730962170053166704074339142238625131093566421487100597302169564894010365091;
    
    uint256 constant IC5x = 6952685799929293679967690168676649016689908516837364551639619017418780934231;
    uint256 constant IC5y = 20332706467457018939160944867278055394323381798560746774787915516310620166302;
    
    uint256 constant IC6x = 19281191723391597082552231826673097888031020933616615906901708337703066415599;
    uint256 constant IC6y = 344507459946963078818804751592602253530050978089703565699369240872412297354;
    
    uint256 constant IC7x = 19970321196830618490820876764943894117874588026304255189265446201497177919862;
    uint256 constant IC7y = 1813001710370766465578936527939780488017575258113541638884237387478572864893;
    
    uint256 constant IC8x = 4758492469199577994198795855313784092513198653283072756522232825440489362363;
    uint256 constant IC8y = 4274251002979815072128012462722143161344997836890321100331915218511864781547;
    
    uint256 constant IC9x = 18886094206239790862096425209441130426353919496033257527478354735780957383233;
    uint256 constant IC9y = 19861087181858712924580435169516856299348487550144817123923189145093063968393;
    
    uint256 constant IC10x = 8438142704211751080782871289638351736597232539012383170412192703594805748571;
    uint256 constant IC10y = 10147886424698850785868172635460694700363095857013836301912805511723278878040;
    
    uint256 constant IC11x = 14866695963787968503398098382976366666985378541517870879541347972676321732368;
    uint256 constant IC11y = 16054936797979849666106288217386814092104649131096732200364789726745002874049;
    
    uint256 constant IC12x = 494067551302209142340448449516147518573365026167480954302460055487875565348;
    uint256 constant IC12y = 13510391576547496322562287993377926113766640399972596558410586944383199723010;
    
    uint256 constant IC13x = 19948759884557859975670808372215884489264742641089310968234417077079394132875;
    uint256 constant IC13y = 18961106703452558615178643679516044346811948952570186133608979945147623265424;
    
    uint256 constant IC14x = 21819425271688006129579319028192675835384994596985969165840845276838379666652;
    uint256 constant IC14y = 19667458874840452398287369230955817901505776849307925787174308019255225577466;
    
    uint256 constant IC15x = 20628428755158565162353860382739567916207144420785411741651286364206523579311;
    uint256 constant IC15y = 1559834462607516866670573032440405718318100642303241791973070339401349267149;
    
    uint256 constant IC16x = 16844058572131437126091578596119200544315674260175421597719465558295018448270;
    uint256 constant IC16y = 19244132639508614999152339681532508466705628500078762175044899378311312458411;
    
    uint256 constant IC17x = 9668407701251331219631654962363896603152316816032479724329612738634801134748;
    uint256 constant IC17y = 4444822229108329777418599287303128587812717583082370198587673880055938040213;
    
    uint256 constant IC18x = 9756467095431364436920179343905957484764795029488026162882576104909757428233;
    uint256 constant IC18y = 18677852386120223548336897256339462536319514769807936821321324935571758129286;
    
    uint256 constant IC19x = 20085481059896984038938084742540112665720278096537905370685080694711183817240;
    uint256 constant IC19y = 2039925927553697813960008107051236104223398796101460769114254940944715923751;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[19] calldata _pubSignals) public view returns (bool) {
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
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }
