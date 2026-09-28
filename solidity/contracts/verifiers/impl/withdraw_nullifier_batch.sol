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
    uint256 constant deltax1 = 4317665285643420844225354065250323396955074533647039888151153404149128638301;
    uint256 constant deltax2 = 3833429223702064625673671089435526718172944825950187667376181688927868093084;
    uint256 constant deltay1 = 7581341573211166901555005325429336932822068091436070294288647856163446922376;
    uint256 constant deltay2 = 3624479902546567607547255122347324883777758465959826407890204372495835631666;

    
    uint256 constant IC0x = 17916732964034243456279190277561615700405064120486974043532840507239748224986;
    uint256 constant IC0y = 6520961972529085990475694813425953833056365746832837548358597670633424152578;
    
    uint256 constant IC1x = 20382363255859991352089741046220502713475131369743702398348926266559059185568;
    uint256 constant IC1y = 20379719470674451914379634681554307149832469033900160028344957466782895696179;
    
    uint256 constant IC2x = 15008294157115828467564914262532954132581889041079473372996279549741030252857;
    uint256 constant IC2y = 14834229170463506777590556371862907164236660021617027669371975909217499835287;
    
    uint256 constant IC3x = 9679098607031246770864880304676513304354430141780912659845905704296345449621;
    uint256 constant IC3y = 5326986613040995417832365355285960601343234317087705331068809019761619309257;
    
    uint256 constant IC4x = 5808889038721367555319157095384669285967650931235030451078553178518370661887;
    uint256 constant IC4y = 16660961494871228578976677193297603515552406734128325564732133991102668871934;
    
    uint256 constant IC5x = 9556176326219182713672940508880754345723637706380747246468280777638891317614;
    uint256 constant IC5y = 12096088405078397574274913498211678783370488713071310260095359876737256089563;
    
    uint256 constant IC6x = 13850050035028147689997765125087303528499169636350248730772930631354798115077;
    uint256 constant IC6y = 5936496056874146505006967486812222864731270068787704063024018338427588009802;
    
    uint256 constant IC7x = 19794669631097493268499400878149853581298297766781554847569090977421737094907;
    uint256 constant IC7y = 13492904259374720101093011858366965854662608206989280961126473853103239572857;
    
    uint256 constant IC8x = 17185752940055287890817195047088270360704251359888888613198585589233462687885;
    uint256 constant IC8y = 2526303139556573837280079316643426473919040817696545061216157198829914761971;
    
    uint256 constant IC9x = 19904016647708905101844602639895106004670167671274815999722273917020675773542;
    uint256 constant IC9y = 7366559257704401445433667940877640908911995628505364109759854694999414653540;
    
    uint256 constant IC10x = 7305771026785601251087527541223221069932763867868540137251682272089322437608;
    uint256 constant IC10y = 9881901018266679172267812867090347329810200507482573907053447382882577153227;
    
    uint256 constant IC11x = 9530285498418974845879989231841088918208565037253336242802024089151942019942;
    uint256 constant IC11y = 3633435215720756343303182921345041343903521647007957705781508878281183119571;
    
    uint256 constant IC12x = 2876139061251393640619459225484354074603377011826929694333309682458327516656;
    uint256 constant IC12y = 8704015276197636239035158258831327928514986473188480418117128589061092697557;
    
    uint256 constant IC13x = 261879061929438104571885466824170078293005948857569259378374414740666686984;
    uint256 constant IC13y = 20639646100655476247740799948439488565839206282648233214769277825122242879878;
    
    uint256 constant IC14x = 7122020552804467737320706951279995086348888293956247970541712679470967441598;
    uint256 constant IC14y = 13646611283930772779346138612697764589883887862115316487992125426822467836995;
    
    uint256 constant IC15x = 751071079744552042205889200966851146352724631294373031536708746358918091453;
    uint256 constant IC15y = 6920300707179763633938356135556192188441050521060879537635318740502092432144;
    
    uint256 constant IC16x = 3832010530121895151499643953374981908140870419865885368328980787875853546170;
    uint256 constant IC16y = 2909656960459598320578757073229018799177812356423886346093913729430199155862;
    
    uint256 constant IC17x = 3316919719961233382154205226849517260715067943627800106322403981284919363744;
    uint256 constant IC17y = 302819115783738367775387507598471540612714736335397522893399969475319336355;
    
    uint256 constant IC18x = 226967027549886703695009106584609607568152140758247633943873993999298732633;
    uint256 constant IC18y = 7469837748551450334485330168680464626205074307278584496004231708008874914703;
    
    uint256 constant IC19x = 11903983499686134299768660710179685473466864139197222857916332617273564865566;
    uint256 constant IC19y = 17769963484287571817955184392668454845202405720189336997076975733635338746551;
    
    uint256 constant IC20x = 19595305021797083329369528312160597771155169934148394760413980341697634741278;
    uint256 constant IC20y = 19244019054790308446348763864536390458788438549318614851084503122092183531492;
    
    uint256 constant IC21x = 17142286953979615907449627225870058856787298621343706897880741518261704447993;
    uint256 constant IC21y = 2420732527130459686759482165555365594369136766470131857964435573322418824275;
    
    uint256 constant IC22x = 17696398956904663060616201408064961604856222607612179479257547622448809532530;
    uint256 constant IC22y = 9559223668636334032529057686182269417236031144111467574957914303893106749903;
    
    uint256 constant IC23x = 655679844102795807522930358464703358440010232658328451450461827415908158975;
    uint256 constant IC23y = 17518345074073730351218014574347640473120304491519917960035915608586916737158;
    
    uint256 constant IC24x = 20178712192549461867444013586710370437312794227430083679619662904576897122997;
    uint256 constant IC24y = 14982701759807434303679331293736212647251176588255275288520285343672325259611;
    
 
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
