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

contract Verifier_WithdrawNullifierBatch {
    // Scalar field size
    uint256 constant r    = 21888242871839275222246405745257275088548364400416034343698204186575808495617;
    // Base field size
    uint256 constant q   = 21888242871839275222246405745257275088696311157297823662689037894645226208583;

    // Verification Key data
    uint256 constant alphax  = 16428432848801857252194528405604668803277877773566238944394625302971855135431;
    uint256 constant alphay  = 16846502678714586896801519656441059708016666274385668027902869494772365009666;
    uint256 constant betax1  = 3182164110458002340215786955198810119980427837186618912744689678939861918171;
    uint256 constant betax2  = 16348171800823588416173124589066524623406261996681292662100840445103873053252;
    uint256 constant betay1  = 4920802715848186258981584729175884379674325733638798907835771393452862684714;
    uint256 constant betay2  = 19687132236965066906216944365591810874384658708175106803089633851114028275753;
    uint256 constant gammax1 = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
    uint256 constant gammax2 = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
    uint256 constant gammay1 = 4082367875863433681332203403145435568316851327593401208105741076214120093531;
    uint256 constant gammay2 = 8495653923123431417604973247489272438418190587263600148770280649306958101930;
    uint256 constant deltax1 = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
    uint256 constant deltax2 = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
    uint256 constant deltay1 = 4082367875863433681332203403145435568316851327593401208105741076214120093531;
    uint256 constant deltay2 = 8495653923123431417604973247489272438418190587263600148770280649306958101930;

    
    uint256 constant IC0x = 6769729438909636584439860142677441669700075291501365180825448822734294080675;
    uint256 constant IC0y = 2791957403063647707451691457668004585625071403307846475704853967932429040408;
    
    uint256 constant IC1x = 11903638034015524130211522549184585505906280529607722796513419114131066246743;
    uint256 constant IC1y = 11323965181048440150652914521039999481947902212348063700598555539681771002153;
    
    uint256 constant IC2x = 1946567543459122259747800602266884545779766244007618511073433956737446272159;
    uint256 constant IC2y = 15920968870590370259293117609172394796964855188286534814308926007065403556174;
    
    uint256 constant IC3x = 17035266057095882729003102792904217223448482521434223445274758566013521844048;
    uint256 constant IC3y = 5910783214262747356245909913150935339660046632961486072500069855084455620246;
    
    uint256 constant IC4x = 13454995690428943897570243108269036179315825887921636732012966082588157326308;
    uint256 constant IC4y = 18254200839371833507053120036721488223469560339086265360770643577502809325206;
    
    uint256 constant IC5x = 10564502855045364164999208470017581734708765304913168662888696482375694364523;
    uint256 constant IC5y = 10987584530704079266121141878216767249678778684672771027038480594404521902287;
    
    uint256 constant IC6x = 18801696883808823128640648067271874479906838274846573449362634638918337344354;
    uint256 constant IC6y = 11628602296601670270839861581420378826364257635822164337822777609202482361853;
    
    uint256 constant IC7x = 11704669611061549180493163998648999312024481963159281255248038606900456062686;
    uint256 constant IC7y = 18114470039580695036454596520633694085756031661620456483236104841025189610041;
    
    uint256 constant IC8x = 17384662951022412803800145529535708486146637690437766195404182966564581168981;
    uint256 constant IC8y = 12000911370269418538666490320450261258319202119977546545704265712936761023507;
    
    uint256 constant IC9x = 8189999398908060219449915484444356849103795618746590402520109802587211771504;
    uint256 constant IC9y = 13675768097867502882125766066561163289109900120290126203718876822518352094221;
    
    uint256 constant IC10x = 17825326435469990941254841577151339230825813377772126844879266688129753872828;
    uint256 constant IC10y = 8420631283549344342124914622270597731646955643361068112904556102926458704634;
    
    uint256 constant IC11x = 21670749923914958934013670439676943261960439339096170538077373699033712861348;
    uint256 constant IC11y = 18266016555284359658562732024225027729234213713741014685897206391796412926175;
    
    uint256 constant IC12x = 17301054538021270999937343807230884155908913459636299183129838967227274073011;
    uint256 constant IC12y = 16923147289633032292334858013151625855401022840620700357969780715584397152619;
    
    uint256 constant IC13x = 14373492630657197302168323049725214801285953936319109479588696184612453910460;
    uint256 constant IC13y = 9036634887411176784420169529481068653729780551647198047144167400943532396150;
    
    uint256 constant IC14x = 11542655366890891864414252182556502338747443749694083770580970502888343940120;
    uint256 constant IC14y = 8529123522815088274979849870093095630473380622156105665404439029274435471185;
    
    uint256 constant IC15x = 5669688371342886828101153555883010382344899579843496467397863867591386007088;
    uint256 constant IC15y = 19540839559790934918437155781325534761478003729894558868276920287035165631595;
    
    uint256 constant IC16x = 16051695781595263106764911739352231945441651542447430230520620495565294154367;
    uint256 constant IC16y = 16803007783143257403529843782617300065226613987090607436928821837440040142792;
    
    uint256 constant IC17x = 14841391378395777046744139200455339237542074480003707657674395062013344278652;
    uint256 constant IC17y = 21382413753186487983346752015912644905607820116119135327389941789694073409097;
    
    uint256 constant IC18x = 18211300004781892829147484018901270957350344712072714924959022586457500602472;
    uint256 constant IC18y = 21853389692960347677138025326865344365625128407214069161646551461394366134916;
    
    uint256 constant IC19x = 6297967787205230136608633592353891686675170038537524292003340853278023788680;
    uint256 constant IC19y = 17871898676286747366652186829889774763045935832436039863817713741505524993545;
    
    uint256 constant IC20x = 1087318978083935440119041619611882607746887316372947843745354460318120448511;
    uint256 constant IC20y = 9109468115448614750672420026211374503303989009098556597430701428514919946500;
    
    uint256 constant IC21x = 468234029738591490060066354057868081007115026102759801734743972541122101530;
    uint256 constant IC21y = 21678753865159618197069882895425585352952280384983254652088544516514939068858;
    
    uint256 constant IC22x = 16807154410311437549958347809812652273612502663137381647589842201033705329619;
    uint256 constant IC22y = 12083252179454783045688840111293219580910209011285886713396453041403886659108;
    
    uint256 constant IC23x = 18575327753475394169580846355897328223514684468883458587584918509638614278129;
    uint256 constant IC23y = 839083207800718352049123019344290961688614188904161396151046484153928643225;
    
    uint256 constant IC24x = 16763034589282150250306577066393989489577636494834599972510373026320737901215;
    uint256 constant IC24y = 11450282404092105140544576510848133709427424097737523615780636216188305523893;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[24] calldata _pubSignals) public view returns (bool) {
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
                
                g1_mulAccC(_pVk, IC21x, IC21y, calldataload(add(pubSignals, 640)))
                
                g1_mulAccC(_pVk, IC22x, IC22y, calldataload(add(pubSignals, 672)))
                
                g1_mulAccC(_pVk, IC23x, IC23y, calldataload(add(pubSignals, 704)))
                
                g1_mulAccC(_pVk, IC24x, IC24y, calldataload(add(pubSignals, 736)))
                

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
            
            checkField(calldataload(add(_pubSignals, 640)))
            
            checkField(calldataload(add(_pubSignals, 672)))
            
            checkField(calldataload(add(_pubSignals, 704)))
            
            checkField(calldataload(add(_pubSignals, 736)))
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }
