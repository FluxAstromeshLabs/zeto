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
    uint256 constant deltax1 = 18144071703032900787045803596024379239169621929526926839148242802871282639652;
    uint256 constant deltax2 = 2470493790644729881950665075831041927900057126492240934076145431182065612863;
    uint256 constant deltay1 = 6882125620077526677606454070367055345380399307455129305164414706863065743186;
    uint256 constant deltay2 = 1207136875308955329995484356059272749119523882884501272208271611437354767620;

    
    uint256 constant IC0x = 14993188796197330819338273610774785587635424652956898073222996612267985392676;
    uint256 constant IC0y = 9688964580055242268128684943081493877812369101087422673950342528835525429606;
    
    uint256 constant IC1x = 1132442762923191943555745924882659254619411020762334080626890038946924251401;
    uint256 constant IC1y = 19464712091109314259296510572325632510400317280601557298748018050312609066829;
    
    uint256 constant IC2x = 2242519142224946307490486217234652846598504131895577501858670190521843002700;
    uint256 constant IC2y = 366584088657449774054409929255281521761340376668265621439411607007413859246;
    
    uint256 constant IC3x = 15554319799579700723799949872415137572128394234896907794890296080880192205533;
    uint256 constant IC3y = 9602766821428114204328782890474910634878644789693351297495967916913204063446;
    
    uint256 constant IC4x = 12437145731903478076520148101418209025907676731233859121810485880830963780418;
    uint256 constant IC4y = 10179200836227513661859548768717979319384178826771121030353582445826017534783;
    
    uint256 constant IC5x = 6740265811726272393389807062462829033481739767215713970715136859036108363221;
    uint256 constant IC5y = 16033706209298082336218156911145639706507492636580180813498650817821700072555;
    
    uint256 constant IC6x = 21631013925518651000737582443693716347215004126490182380901125538544640900503;
    uint256 constant IC6y = 18776361424473650351447155986334147040475089264624447296099665375611408400673;
    
    uint256 constant IC7x = 14713624024514608179601821789479814201811498428629256796197053154888443546378;
    uint256 constant IC7y = 3871062280697852353538504160737236076980062577519605333140469709728965336866;
    
    uint256 constant IC8x = 6086535300860947570371215609961237362382972356368756361883365122797124762710;
    uint256 constant IC8y = 14499094962157328825593504941365935718742954769633616816530787793517786814913;
    
    uint256 constant IC9x = 18221814930547740887677625840525394538032578964188316341832026267819871638753;
    uint256 constant IC9y = 705280387715540866244401730843425013934483659304132223653878987581992373292;
    
    uint256 constant IC10x = 8096982959965243285578103213367485454741535993442871579532066649897808556088;
    uint256 constant IC10y = 3894309127972500329977111648333185124544566547830084547486067105584034514524;
    
    uint256 constant IC11x = 15662698211265122090548322560435960778104616407124245704708601207354197679926;
    uint256 constant IC11y = 20687662283851726680121923995499598471856374697257087325069755287066786870948;
    
    uint256 constant IC12x = 15547440945380103708984292041525007626181267903217307311692370953146245198920;
    uint256 constant IC12y = 11069775103763674382468199259828354263909784737033365995311297062626045144648;
    
    uint256 constant IC13x = 10423344593752467009535664783142296512931354616674001868954116213991317640860;
    uint256 constant IC13y = 6159252826040388781974973807825059484598667386853586286023440603609219375963;
    
    uint256 constant IC14x = 16016567417962513254897457395303184646344421188365285596253743323994381601772;
    uint256 constant IC14y = 15449933168852712733258205783418264836311515640574017633349251314585810771298;
    
    uint256 constant IC15x = 7364270978023983339725543311138123664109849985364591515128833395628034543362;
    uint256 constant IC15y = 2537689282663605495056987596965332311112497582500395312614634219985501275892;
    
    uint256 constant IC16x = 13183821751008056184663225855823612363179165041238156412778135298672291226409;
    uint256 constant IC16y = 9103951296115813269301443926586816230016536703244854769134237591972280215569;
    
    uint256 constant IC17x = 12874487969078057556710491850005696992706754528708206238134035491607415458107;
    uint256 constant IC17y = 17571050004372574512854307229909312549182548883344899817964492310250734920009;
    
    uint256 constant IC18x = 1562128818407211262561439450382026807541658501150398253426410799368062973690;
    uint256 constant IC18y = 2541251841197137614822408421184088607843079631703417404111524333965737708083;
    
    uint256 constant IC19x = 12126453234205986678522117706693345001531962256837082679082429132365152423909;
    uint256 constant IC19y = 6401029573982141290542519669805203485247307497486405175345928947999960424502;
    
 
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
