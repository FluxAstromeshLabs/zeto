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

contract Verifier_AnonNullifierKycTransferBatch {
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
    uint256 constant deltax1 = 7093457321006449160111787293252775813153793327965994021933223139095429607462;
    uint256 constant deltax2 = 3169293948767369936445618366230166141199908177985825704479368428346084324452;
    uint256 constant deltay1 = 18269330576945579748254453852537534843808629036684872048763861368751343958516;
    uint256 constant deltay2 = 4800243555709704573242746455742702633470654996235956580312403314147519983342;

    
    uint256 constant IC0x = 15311425537555726955995226625351704689652822070056969406090985641450419575516;
    uint256 constant IC0y = 16985918246980227465855796241124551384051408353122012940492047647756978891228;
    
    uint256 constant IC1x = 8751987291369638664473255313863752790709123969456699567822818389796154312173;
    uint256 constant IC1y = 6655378336996522232677321458732148764696650638480393808971601706170864664640;
    
    uint256 constant IC2x = 9948366098563825282166703893322721768495996647149755765106760012338547013400;
    uint256 constant IC2y = 3873180068847026225549753275144046316868381272225654702558447173877586416726;
    
    uint256 constant IC3x = 15043588484143729087744170234845635189356134946397697525157604103652986819777;
    uint256 constant IC3y = 15912816290730584238162534359675913551481021103158082758901526531959928292942;
    
    uint256 constant IC4x = 16042974943619375689127527428843449774884593438497446426955917925345968029524;
    uint256 constant IC4y = 4732427190277698604139726208425874990503688821776816398168800449412661224095;
    
    uint256 constant IC5x = 4272507671643092206036598524113902368584530593626982363267710160731444428586;
    uint256 constant IC5y = 8408453320586680705745232834805355292922129188913124165489773461749784338068;
    
    uint256 constant IC6x = 8152017744578292547967046977032592071115346363329815145467099827734758320895;
    uint256 constant IC6y = 2273898312260431848787355120724606555634276603317775597361939706488945499412;
    
    uint256 constant IC7x = 16315086242424226000330205260173826066522894910109188998598116590775038233432;
    uint256 constant IC7y = 13083405992467061644263459514515553856158925741106120304541592822704883815248;
    
    uint256 constant IC8x = 7505527591440970845008604766743516578255291847561126231202822021239546256809;
    uint256 constant IC8y = 15633239375566549571588591648010157859277366560564262388928499827118761899528;
    
    uint256 constant IC9x = 10358543353231200025638201543746540213258896861520059034664984464067743307633;
    uint256 constant IC9y = 5934710114629594536354301857565342170025900493386456570592827067145201375313;
    
    uint256 constant IC10x = 8012260295534614098928521708240838026812882074530616923177054955941665317337;
    uint256 constant IC10y = 10553120231381667281692962645579679284462151014666786090789670089290248825653;
    
    uint256 constant IC11x = 11179532833738899503154463680147075367815374658585867479031901020220894227858;
    uint256 constant IC11y = 17764559128339615018655440918759765413549374238421957253786907550311451633069;
    
    uint256 constant IC12x = 7188879072374244315052882843516494220472717835472279414848714469519355122069;
    uint256 constant IC12y = 5184728546180003895974847616834173804567637929641192039642777034351898571565;
    
    uint256 constant IC13x = 8755137104207882862809279285846510915236719545336089554151394690991046166386;
    uint256 constant IC13y = 4444998076912802897942195401891571088067599589026554357198781097801669447659;
    
    uint256 constant IC14x = 14610793117322522097806701145200102482415399388764349544298167541000210589638;
    uint256 constant IC14y = 998524337225167789955594203181406993794933344518005676642237486147348402148;
    
    uint256 constant IC15x = 10937992782853973913893766021083950311659274766114031372115361147072962976701;
    uint256 constant IC15y = 12246977245455094174998830948541561926594597661192742476030310416495763561686;
    
    uint256 constant IC16x = 18063355594041236272794776767882999739994271239226953248069509060403135786993;
    uint256 constant IC16y = 10239322734617945829807484837370399234546202012120544458109441114246595082223;
    
    uint256 constant IC17x = 3795215175273323897026394924980228495891229866808333722235263473165391765430;
    uint256 constant IC17y = 14865415565320821118356153075342769998050132501501053982990083969061507315144;
    
    uint256 constant IC18x = 14982894159536327781210490319435528027243762818606739645338979735518534246883;
    uint256 constant IC18y = 17968069241948355937474767495669799042628683694594994110909186060304855165440;
    
    uint256 constant IC19x = 3991880256057210604349277795951888679067350306968892173241429909896407642448;
    uint256 constant IC19y = 15776686220845226971034494910331320836129006078033696313265916172922645678619;
    
    uint256 constant IC20x = 13835392308431854023593172677968499450859539004502248632847212392144749035507;
    uint256 constant IC20y = 3964888260823377540407843350159836378144291725868758353871848586129542156013;
    
    uint256 constant IC21x = 10404091130898005858241395662943768218508516623492370241404087548159612348642;
    uint256 constant IC21y = 6618113477297734939389711754431657115349618281097811438665030836025316466832;
    
    uint256 constant IC22x = 5469386711540139537696270745504502606170200997356610428027050031396425766115;
    uint256 constant IC22y = 11951863173072092071082746739116944582340848251884038202787523728768138395749;
    
    uint256 constant IC23x = 2627836845787498125461322396366083350504859299329507631599776996556819419973;
    uint256 constant IC23y = 1047077793536938676133188804989483469431268569984009001055776045481382167731;
    
    uint256 constant IC24x = 20713997974674502752434302717955325212482758467152490405699537064148239304889;
    uint256 constant IC24y = 20936354986210690955680608965326557143491758447237587020786288993748430702395;
    
    uint256 constant IC25x = 14438672242633835119715794989506821451404679313426231541259945559687039561830;
    uint256 constant IC25y = 6603443614870040872322393816976961082539804874592576450476385512059065852142;
    
    uint256 constant IC26x = 20806214024832883053371376733635643105941805601163434936239912495030706654421;
    uint256 constant IC26y = 5039745840538116349596551466602876557754824224230996298888277832730136010005;
    
    uint256 constant IC27x = 12693698013416547524887398651554269597050011725620156896366718839463579812739;
    uint256 constant IC27y = 3702544332897113843886330811243348400249597850942797530167730308339581227604;
    
    uint256 constant IC28x = 7298321705909519641825458582659715188636414277409393363617544418252710077077;
    uint256 constant IC28y = 1373464011092645399815405171505251976689162386707569297743159076576043936715;
    
    uint256 constant IC29x = 20694586512810585154317227041236911167949130387119225364092885669823846064663;
    uint256 constant IC29y = 7029828399441493615285495024268894942813956833401365549891405882163973772644;
    
    uint256 constant IC30x = 8287641662478048214129049471565715460178688013988496735729312904683639631560;
    uint256 constant IC30y = 5115333148684836350485243765979173011372826252518941985123286870773028339823;
    
    uint256 constant IC31x = 9326132386119125674263357410843844282373665322775892457529154727195039186883;
    uint256 constant IC31y = 20950031487807021627545286088245310975411558614191746191020906318105961373115;
    
    uint256 constant IC32x = 4838341032033987731387858289108685090654756409023705948920175942945892550576;
    uint256 constant IC32y = 14414783008974412978543211839959383023047139587971977850298607828406648329622;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[32] calldata _pubSignals) public view returns (bool) {
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
                
                g1_mulAccC(_pVk, IC25x, IC25y, calldataload(add(pubSignals, 768)))
                
                g1_mulAccC(_pVk, IC26x, IC26y, calldataload(add(pubSignals, 800)))
                
                g1_mulAccC(_pVk, IC27x, IC27y, calldataload(add(pubSignals, 832)))
                
                g1_mulAccC(_pVk, IC28x, IC28y, calldataload(add(pubSignals, 864)))
                
                g1_mulAccC(_pVk, IC29x, IC29y, calldataload(add(pubSignals, 896)))
                
                g1_mulAccC(_pVk, IC30x, IC30y, calldataload(add(pubSignals, 928)))
                
                g1_mulAccC(_pVk, IC31x, IC31y, calldataload(add(pubSignals, 960)))
                
                g1_mulAccC(_pVk, IC32x, IC32y, calldataload(add(pubSignals, 992)))
                

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
            
            checkField(calldataload(add(_pubSignals, 768)))
            
            checkField(calldataload(add(_pubSignals, 800)))
            
            checkField(calldataload(add(_pubSignals, 832)))
            
            checkField(calldataload(add(_pubSignals, 864)))
            
            checkField(calldataload(add(_pubSignals, 896)))
            
            checkField(calldataload(add(_pubSignals, 928)))
            
            checkField(calldataload(add(_pubSignals, 960)))
            
            checkField(calldataload(add(_pubSignals, 992)))
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }
