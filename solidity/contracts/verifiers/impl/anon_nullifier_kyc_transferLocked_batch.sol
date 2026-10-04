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

contract Verifier_AnonNullifierKycTransferLockedBatch {
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
    uint256 constant deltax1 = 17089902074667905633014175877097804690026536971003226202475573309236742846188;
    uint256 constant deltax2 = 852147528999364357473375634622409939877634096264490331672690191365910679673;
    uint256 constant deltay1 = 1429958355453401322858554612254153855544205917582422894734739711632539979718;
    uint256 constant deltay2 = 17293252485604247156496080084967636097947285892151810843953778844188806216571;

    
    uint256 constant IC0x = 9711703387685846221650116925594957802071186300711084102312480723415361252321;
    uint256 constant IC0y = 19075774656582403947578838675928661414343571140407113899740672183619917660475;
    
    uint256 constant IC1x = 17163097856576390996092631315660152955634017294502942792482141582171843536478;
    uint256 constant IC1y = 8781072112025017999406069047937980994248650640889337400153208420082218720089;
    
    uint256 constant IC2x = 19889311378720182780047838103021718366302511228643389114457091940691379998631;
    uint256 constant IC2y = 1252251227515854687793318492546360745960017004381491539520856447586375900348;
    
    uint256 constant IC3x = 7296553872790635893092135738189968502634651009315564639670342019670229435306;
    uint256 constant IC3y = 17026336958127701715316015481330676285221186494786270540201252744223175076986;
    
    uint256 constant IC4x = 14081845142151833404182101509073603095781440445750131457293216334195591338965;
    uint256 constant IC4y = 10097393043407985406858098993065158747426030926089306841963439859877223439069;
    
    uint256 constant IC5x = 10588593535902563768764883773116582864102948247261674538843520362861182847048;
    uint256 constant IC5y = 12559760957202081125016525247983926139267390256976999406167813506494294689032;
    
    uint256 constant IC6x = 8843672436445191541752159412482723965741833331793520878085289033078684333434;
    uint256 constant IC6y = 18609572409049704750438295889657281860304965597619063972314855977125194884717;
    
    uint256 constant IC7x = 21657667385674641987063816610959335390497115823312227101859963753402629018487;
    uint256 constant IC7y = 18697691054253629488160628852135728011535496590578614010780017859292313839880;
    
    uint256 constant IC8x = 439057165676364983614524253448673972592601904559754489394205119582366955000;
    uint256 constant IC8y = 10117593725154818561916725173053384827482939749206215895034469065203707033470;
    
    uint256 constant IC9x = 5682877027471903711142988157550110330907295903768601097451237062692678606128;
    uint256 constant IC9y = 19424187543391574183025313050432916991743640617275774616894552646245121908138;
    
    uint256 constant IC10x = 11044266845732555634978688757997591500035690585790426882647082199279381501392;
    uint256 constant IC10y = 11434247512888059811248331765799093246398402750433041698637192428932929450838;
    
    uint256 constant IC11x = 13999029899066068688004741381097397534209993083302164019826002696273406390928;
    uint256 constant IC11y = 3126791181707334839470623286909017352129324841908333981494841508812920400340;
    
    uint256 constant IC12x = 5834643819944689992614773482342551671142153656056519185385167126094318158722;
    uint256 constant IC12y = 5154150070896237809653247102554863510942641624646304529483907137321615999933;
    
    uint256 constant IC13x = 9956227019213089512332728190099713861536980977329530274765955577285300090572;
    uint256 constant IC13y = 18806921640239723190198650152771876140334672264704928608370985244590664313547;
    
    uint256 constant IC14x = 4850713881223363330176512876747405449700350739362984283875465630993570283584;
    uint256 constant IC14y = 778769864712388958525348063857787044187640747337097985747738436463775023985;
    
    uint256 constant IC15x = 9362381376440371283555817190918483831776804847328008343002900753375816182084;
    uint256 constant IC15y = 13044062801111105900576714916090509904524397251799560759679529210695168068104;
    
    uint256 constant IC16x = 9042276564922045733553320396228296812241411578377616317893147168250674473628;
    uint256 constant IC16y = 4250001888323416066665572387854791456107218553783287598404784381630925458065;
    
    uint256 constant IC17x = 436497468990195784022366917651058487229099303515828540965857222999737909435;
    uint256 constant IC17y = 10026322119917710338171188681748708928111003726844545977647393702042129046477;
    
    uint256 constant IC18x = 2007936244979970591974531154646701473635585312302753870046454541182203116880;
    uint256 constant IC18y = 18156001753221147976560152852411443446164976563836470585780902382328493207713;
    
    uint256 constant IC19x = 8444669644430710081480899155512677366941400548154827849207393268071593804148;
    uint256 constant IC19y = 632896168175871432348945166364284707842500542326462432376300385041699931955;
    
    uint256 constant IC20x = 4053819329070707991853047939143981802405363356179142812214414457733613855875;
    uint256 constant IC20y = 761224704946377496530416381782151935061712490650109326127003744384591245357;
    
    uint256 constant IC21x = 17524557346028114076130331545950046123892091641644953093645749676805684563517;
    uint256 constant IC21y = 5697562743150048718881398149055191206652846010776668768506467794516460055910;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[21] calldata _pubSignals) public view returns (bool) {
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
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }
