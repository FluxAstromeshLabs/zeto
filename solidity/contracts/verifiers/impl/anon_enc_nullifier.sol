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

contract Verifier_AnonEncNullifier {
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
    uint256 constant deltax1 = 4596066353432174858104412976222056990238751988295550938131499906244546481686;
    uint256 constant deltax2 = 7819745041927080813391387547812274082610814635987960366538145279527188949209;
    uint256 constant deltay1 = 7988268086743339953065062954765588407556896392759397939710209847585221921376;
    uint256 constant deltay2 = 21402483185964886566802759549008819463306638780794674957691367816035213215961;

    
    uint256 constant IC0x = 18981528310453246815222231990055244221859143298272444766421930997317172614273;
    uint256 constant IC0y = 2631168366309801260143571445066766398964174658376066748479097430978517814841;
    
    uint256 constant IC1x = 9376962316445291378372176694851488514798965469849020492247373706394722181773;
    uint256 constant IC1y = 15355360168021578927839064537562593471512139682716861450425141578851043283345;
    
    uint256 constant IC2x = 11820599676194268516609368746438991858242321486611216683884511179030245498618;
    uint256 constant IC2y = 11312899798472812014443142215704386957778780571360716883236143641264004043757;
    
    uint256 constant IC3x = 3133758013282112811833343352665453838532591423495796414183586086932607667244;
    uint256 constant IC3y = 10264348609865077858715755950574242122320600133266654024324422844506176969008;
    
    uint256 constant IC4x = 13517088297160230132900940572467569238217287090352671251187664178278223114023;
    uint256 constant IC4y = 10645280414667202360772847551576351707744554722770815823601869015994466108740;
    
    uint256 constant IC5x = 15236788676762446624076956767993890479909337508631401344913528203597916638611;
    uint256 constant IC5y = 21880477897756814714941866726960777720038114941579686874816749484722936606986;
    
    uint256 constant IC6x = 14158153933451783827600603075949377705838084360018100434216361721363983859881;
    uint256 constant IC6y = 6709778475392825494434053182960515519696426577008944521807202566759575418504;
    
    uint256 constant IC7x = 7890004636287353988994027390848807708208825066019876294401731954355681027692;
    uint256 constant IC7y = 20971798222848083012248892594526869766716214162946556931360791418996626211051;
    
    uint256 constant IC8x = 4787806029734031092839169977439671430551145169336339139417159287484150314457;
    uint256 constant IC8y = 10408657644952780209772305167435021185954582026419832647736964392273845280253;
    
    uint256 constant IC9x = 11146231220398449266644678857764630526977552637127556530114792599394349894849;
    uint256 constant IC9y = 6026771658164231121205678760444596020321417458213499946238972315542787260105;
    
    uint256 constant IC10x = 18727413128714727862712300077314110043361583963635824060820738953562587364854;
    uint256 constant IC10y = 16422365844040839657147591401950925004405459192041461897348583523805069417179;
    
    uint256 constant IC11x = 20741510221550794324892146988633600320834515454583019348629735198360589038886;
    uint256 constant IC11y = 6151278213008288994455875361187077059104811279705484515495302911117555311428;
    
    uint256 constant IC12x = 12625712944810167454719107618808674244644764527920796556510584978938128700943;
    uint256 constant IC12y = 13672434283576358902825639010841368840134738341046809289944663355959997783134;
    
    uint256 constant IC13x = 2663749176793298297318520447429377442943258509701310976054107909104902360603;
    uint256 constant IC13y = 4574257513480696100072559542093254110015717232827308186753009781645727846390;
    
    uint256 constant IC14x = 3714825511415826724850961257409817027620630364520727247161747937074507846802;
    uint256 constant IC14y = 13034974270703255106027452987619487592770944020555871295985223693134254426307;
    
    uint256 constant IC15x = 3451761191203286500451357902398186579172329588091147574557660906966159288273;
    uint256 constant IC15y = 9566595229870169089700657776269198958481847556579928307229092628397403766503;
    
    uint256 constant IC16x = 17649519283142652645031402895896468079597211664155512916541016566316706825870;
    uint256 constant IC16y = 14348763493338710862900945255265217325367004234290534630622073017079554144456;
    
    uint256 constant IC17x = 6747751364662621643597921230138115048739200154994383183245814896822540466995;
    uint256 constant IC17y = 20766015276290387183436784913327977079501914196294597160530732875359409639038;
    
    uint256 constant IC18x = 18971214828587783140006034376799210569960744025140782203580012169470582720322;
    uint256 constant IC18y = 17525667864700463516482144307731734743303014750359931156055771657230766815971;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[18] calldata _pubSignals) public view returns (bool) {
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
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }
