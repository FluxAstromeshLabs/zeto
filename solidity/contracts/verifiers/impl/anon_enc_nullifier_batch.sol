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

contract Verifier_AnonEncNullifierBatch {
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
    uint256 constant deltax1 = 10667823718548373443942937403959396123521945505911908601057702746827212929827;
    uint256 constant deltax2 = 6445971763762488696632659734115838753388231045456850407499536957812250541814;
    uint256 constant deltay1 = 1703042957194508677306588127644770712994448643940616957698091983751339436403;
    uint256 constant deltay2 = 13531182676169863772781802480518802042365619943214528535503489463896795407096;

    
    uint256 constant IC0x = 18898531088190332544495310602538744975528841226764042361624611292762423307832;
    uint256 constant IC0y = 11866404471602853714144156167291465367529201079912021663846774211604383471228;
    
    uint256 constant IC1x = 20962342059000373661266416573498894191356332762906910668478296759805765922756;
    uint256 constant IC1y = 5142440233321061478180371815334434790988997672857208407342512195446843850725;
    
    uint256 constant IC2x = 5719472187460813972662056729971637920134049844497526986168771710718376989044;
    uint256 constant IC2y = 7077521166096840856597735710790358515361343279716851574875947667860122903745;
    
    uint256 constant IC3x = 492440717006986873074526512460390694105641117749432095626833920111762038833;
    uint256 constant IC3y = 11298348765743564814625301011732571995786502560746161680107276271759986208228;
    
    uint256 constant IC4x = 11449008090472449057572425280289123474076755926174067177450566468842017450250;
    uint256 constant IC4y = 16147189876761584070707928769950308295884748590495782510271663752156410164401;
    
    uint256 constant IC5x = 16733242159720633377009008008616189493475431925790888495410922955060131991847;
    uint256 constant IC5y = 5736880580230614493895470057931881441899331867555071932787951422319621895916;
    
    uint256 constant IC6x = 3050163524036593878478807425586576308238081638200286209583362574604195177101;
    uint256 constant IC6y = 19608516757728514914720575782302588711828617136668481175127006822670552933222;
    
    uint256 constant IC7x = 17768898199944536945514669368093469303778707684514655151651779180880537213630;
    uint256 constant IC7y = 3419984232730706868898525446221354099690418921809782375815132108636016472710;
    
    uint256 constant IC8x = 18095966761583256040991153884265807040195086070456068623120805673541562026374;
    uint256 constant IC8y = 11174501904818606153384280903517873013751315163557026591726437352995432947005;
    
    uint256 constant IC9x = 5758091502911727825283888898172633753138561245686785310456926314408982607624;
    uint256 constant IC9y = 8377523163416155422019007242415392821724671060933154235376056593211604243066;
    
    uint256 constant IC10x = 14011004096801043742400740359493110657878460337847284742796186373735003941925;
    uint256 constant IC10y = 11368555696433440662231082556041522327112179604683583307264214117270431734459;
    
    uint256 constant IC11x = 16154238992698366548040796721169529285420235310729898154446891035819247882887;
    uint256 constant IC11y = 3805142833827404410236571835813014842928106936207885877832165555789528263055;
    
    uint256 constant IC12x = 19769761463174558723608490176010761589563977002843051632312471196252645329704;
    uint256 constant IC12y = 21085217221010030032702305910445260799135851633586699578540247851607564251176;
    
    uint256 constant IC13x = 16822966979380224442557292912276340084158080299898224690953015135693543900967;
    uint256 constant IC13y = 325099101223131764525582157984767292730819104212398599031767744680384018562;
    
    uint256 constant IC14x = 5064648909342425372376272961450947752850507186029218828125854712396932140337;
    uint256 constant IC14y = 21783413738823038858490157543359936596160545975000232156833992119900074943280;
    
    uint256 constant IC15x = 2061322118815622756885761118012463212407337712517628890968394042618543942329;
    uint256 constant IC15y = 18723769024826414927066431237287241826311014314605953370426986504211310919039;
    
    uint256 constant IC16x = 20362016365943719522571692267695269743139596387218772502445841823146259473259;
    uint256 constant IC16y = 5907040664253750421048118346629129636828347417997486471798425453462706467744;
    
    uint256 constant IC17x = 10592575854561403157025158897570980345961904147890069843795397822560981110971;
    uint256 constant IC17y = 8636725710463377561937109935869839047255307512416925689853754357471134465741;
    
    uint256 constant IC18x = 12023572707425187748902053505020699141343577406888440687545948954393715824858;
    uint256 constant IC18y = 10680282790725920942925701884047852103669747037261884911280208725386762920401;
    
    uint256 constant IC19x = 15539710526459890246631818253814371183774948597256358980521772406127485253143;
    uint256 constant IC19y = 17345296745959238130795220566987183143332706898002560559954568607640013685455;
    
    uint256 constant IC20x = 4294279971241705162846677932699023674124844880696997239930477450573526076583;
    uint256 constant IC20y = 10680327922691597298319526264934149938215815380183055326288755179757765946837;
    
    uint256 constant IC21x = 5344134062562639160038871421843268318364904211326133695458751875217575756942;
    uint256 constant IC21y = 19239694695906243113046814721199096506573684174198817662718589758222829199101;
    
    uint256 constant IC22x = 19530202001034416405570419188645414482094242682984680603736099841630019702935;
    uint256 constant IC22y = 10144285592078678618440488758768966225601195412542840336750669512257866181542;
    
    uint256 constant IC23x = 4757135353236945156456111851065397289024660522351601955585320892449790005115;
    uint256 constant IC23y = 14617407579892459648375169632179537706214579786616378244118635607644460445790;
    
    uint256 constant IC24x = 16401048384397844542718931870929959858191247641771462582948060767253706579718;
    uint256 constant IC24y = 8278320063069422843438021756797258318951783673392290556395267951669499701050;
    
    uint256 constant IC25x = 4496275413239134060098351953952614543684128888077958663388375631123719619780;
    uint256 constant IC25y = 14067282682148313966562337106420096515806474708657830861753288478662372666459;
    
    uint256 constant IC26x = 17006008394821463172464659105639278641007062940693158383007268554264645433555;
    uint256 constant IC26y = 9076043681165424278724264180815206149186865575471493589697441382184357831595;
    
    uint256 constant IC27x = 3589691952467689941560437572716747488226094199253783592761676744578545849095;
    uint256 constant IC27y = 16127873467551348308876132643165418888950389715573150515231620809443130498091;
    
    uint256 constant IC28x = 11608791982352453364424812099943001471123289408749176442200913478240144838954;
    uint256 constant IC28y = 6743169260659351850137967201854649087166981469095001658078213155307414128249;
    
    uint256 constant IC29x = 6837160769376436356758032775860068412512771767110387612019011063287490034558;
    uint256 constant IC29y = 21713870735659770205223562302991717749870885263603652405127850423712081839873;
    
    uint256 constant IC30x = 2731586035722659300529731221013548175609006554057255349470151925819222254266;
    uint256 constant IC30y = 15324697431811530103825268897105009710552477480685335911445422371060854872561;
    
    uint256 constant IC31x = 13865649096103005732722117123490290661602272585726922609161629579577379266034;
    uint256 constant IC31y = 5813062562147167811493473309279777216479543868490521015358921894761887553744;
    
    uint256 constant IC32x = 11743241987674857575366803662295509374298072697108426769599057515378162073601;
    uint256 constant IC32y = 20066021687596579519947166816164407742370814064150557963152603850175896969514;
    
    uint256 constant IC33x = 16577324113236944754714308556696304978088688287959567203986536902761261233679;
    uint256 constant IC33y = 3946394459393028446718106032536331891024914379760828340408539721969919103081;
    
    uint256 constant IC34x = 20306577036738275367421290712056013324517921272743909527645535754424299424991;
    uint256 constant IC34y = 5489605164313424572242943113301122089764195705976801110638568862463751394669;
    
    uint256 constant IC35x = 5919580218666715111734882977241596220152411921729263897577245935005119813945;
    uint256 constant IC35y = 6417459294896611513964370621612699080352462731501280729991834888949836805817;
    
    uint256 constant IC36x = 7320858586134441583472215195193464791928413402416172653507894004081456059724;
    uint256 constant IC36y = 21658120874976320328764525329393858332147246006053036665095452098165797470862;
    
    uint256 constant IC37x = 5173271413947784953445395689195556022244109475369474029231895993056247426359;
    uint256 constant IC37y = 558175076951431789010527052742391036138736027468772784206911199637371983428;
    
    uint256 constant IC38x = 20469957605984336605377512778012620637170340593239158976447774873021503085901;
    uint256 constant IC38y = 8032672920542604099779210814680297787972775354802666315668353124186888108233;
    
    uint256 constant IC39x = 20982509332100045737770905543908068815225690770442884886353338226665789323026;
    uint256 constant IC39y = 14736945322694468134541157015551972994212615311569540520372025952864593199716;
    
    uint256 constant IC40x = 20615756786907071540856473297913835179109469597166280809627288976164006457808;
    uint256 constant IC40y = 1405354270503525947583287310076379834092994482445726878226985101393645676213;
    
    uint256 constant IC41x = 20393446245243836106194733024499224725048354491667915679847704353409214154955;
    uint256 constant IC41y = 20921388585760187766843850770117683255514236422943310585600359881440938723023;
    
    uint256 constant IC42x = 3116633789836646175463651493860766150229464670491576298836164992507866896650;
    uint256 constant IC42y = 3094225799764965807879931117582554150393877147538706951686998761977848913972;
    
    uint256 constant IC43x = 4242993373207624942402723842033716668467992300182881368996533962611057430540;
    uint256 constant IC43y = 13510859216197794727028180998773111996295069807764315526909362693726569828604;
    
    uint256 constant IC44x = 11627733188762652860349225074336885366719126261548079255897232281222069844534;
    uint256 constant IC44y = 9732871697853069877922098149001136534086200230905886591139003998723812873883;
    
    uint256 constant IC45x = 9016086192353545304082767634010735247038417854981909442075476276588119388702;
    uint256 constant IC45y = 14139312006217619631956533641924986335056096042966090550756370540800878106883;
    
    uint256 constant IC46x = 12678777906032632684643017103434253514054023255085704715153915334955259522673;
    uint256 constant IC46y = 21183338668554877681577368712626040207198624574945804859733647062795109878295;
    
    uint256 constant IC47x = 5375242112121107172813298621999610833227617467736405590451533965016409905530;
    uint256 constant IC47y = 3597975773791758499946265180929434335938228301336434079607629755089583813437;
    
    uint256 constant IC48x = 1950307246008058168935721854030580962369419757505370832037160769498525933704;
    uint256 constant IC48y = 15393364275228614028606423645380527656727052701944371657161759975572410479383;
    
    uint256 constant IC49x = 6978253293930075470228814801934153723608723135283777633240963543653968447322;
    uint256 constant IC49y = 11365800344777005097643940543827771871921002462757988258060085351552653056019;
    
    uint256 constant IC50x = 11209856129416646381195685263278385442563669095509278695575688389467968530252;
    uint256 constant IC50y = 17205572116508280613403315583125073489921490751561798325759097108283514674573;
    
    uint256 constant IC51x = 4469351832955676796317199677584996413284467344668904096130862811285117247611;
    uint256 constant IC51y = 18672300805181168434500692638027144649075468491060195458460876145588821606893;
    
    uint256 constant IC52x = 13506894193485614432191893910195190891012922581048360592534229027579616224035;
    uint256 constant IC52y = 20704222737742559238897333452786312265068636074207957007004232590451852502978;
    
    uint256 constant IC53x = 13386576345455683527905093928644533437644287230790864600660605347516449893789;
    uint256 constant IC53y = 1521929586244562532545553195712078116108095956397216839182030360478595537315;
    
    uint256 constant IC54x = 4482382950080507545695191417964251051459036180812239205404953597651336426399;
    uint256 constant IC54y = 5204391057936412137702165731645592273420626867511775644049220324753051424246;
    
    uint256 constant IC55x = 11236797986901085097561331320711896034939399341339924749485618701832655229984;
    uint256 constant IC55y = 1172920617642083629969216796160694728522729433919593508785856465855794827607;
    
    uint256 constant IC56x = 8534376539466424839962336815384235928343168478044964767206450094706624222057;
    uint256 constant IC56y = 13206407286079193752413599882622905882556971878729271001883565752264305272001;
    
    uint256 constant IC57x = 20307104398675267650702597828414497071526983956961074672020115538582382019404;
    uint256 constant IC57y = 7683097627934875238695405536324123622164883575529036209249228375971104436451;
    
    uint256 constant IC58x = 3896257718074672186203587976409706971069477635281078030308402338729128052523;
    uint256 constant IC58y = 4537394935661540673280748391298732995710711095780954007290329682862751335352;
    
    uint256 constant IC59x = 6186205925699641043952986652852504054987869825535070673879796224399210936085;
    uint256 constant IC59y = 8145912053978593836626290738597364278562317433839925182340540584402436898963;
    
    uint256 constant IC60x = 170777944003767128951615443704345206150292234109764871793525974656987950316;
    uint256 constant IC60y = 18031729916537048122690872341500992874642280452298554305557919037482091674025;
    
    uint256 constant IC61x = 21656568589034003388531421762911065188939625280414418524937724106330287586919;
    uint256 constant IC61y = 4648057091018196855429161649446596034509678660017497253254691580390229455616;
    
    uint256 constant IC62x = 15484417248321630948812115716928940325464843993161576140038863201762858232623;
    uint256 constant IC62y = 21748241134093226269172634452580993218406726881524247159723004064113355772364;
    
    uint256 constant IC63x = 1387026701286787483350389567564221450089933273642454197084485775490304563323;
    uint256 constant IC63y = 13907438205469075629015928169810172891814023797938339992020714136545997001161;
    
    uint256 constant IC64x = 379848260726284644851812388745034690617020391321440979043321219626029484985;
    uint256 constant IC64y = 553511135538595582439038534698437689126774984017817589890968279132653138348;
    
    uint256 constant IC65x = 4381956108552339567003442381756645234590059284148938156164093589593739658899;
    uint256 constant IC65y = 19407638549625020612052872164266668078193528888300621672050069082254598503224;
    
    uint256 constant IC66x = 1919444151178495141069033921461473872987395427511734390735559197478696306580;
    uint256 constant IC66y = 13580764993550155596683627229744546969191177101374597661288589134842324780202;
    
    uint256 constant IC67x = 17915385394517240589859255894039871351233381297646885697708391530402086670835;
    uint256 constant IC67y = 7699596529451460251001795020975714317588773071395771071243124488722146383843;
    
    uint256 constant IC68x = 3474559942036474904469370339954459495393928658296926499821858178411033493821;
    uint256 constant IC68y = 11951628040192704169149722297261322937388036721984966938458612958419332902998;
    
    uint256 constant IC69x = 1109079323464159073312147800508964399226802788135300440150793285972577579762;
    uint256 constant IC69y = 14595990813907621941342613786047069842203758414198002769782342446123409213991;
    
    uint256 constant IC70x = 810223020287559574404723457851500416321280168419724112403354116316185121061;
    uint256 constant IC70y = 4729504593888122189378209477970340120542484476968889908582694162738590252331;
    
    uint256 constant IC71x = 406729841625442347287398511251260205065016008543243476715427854016043727926;
    uint256 constant IC71y = 6589108623879164729735439869156332802821737672068091697268693584389921119614;
    
    uint256 constant IC72x = 14834125768086073235043419636221250431558027934375301729088905892934505673448;
    uint256 constant IC72y = 15619264618852236513503545090062794842100532878283987396366024564766688608895;
    
    uint256 constant IC73x = 15836827481046575879555094412207209351951159010509209436594636479817126835693;
    uint256 constant IC73y = 14475347805732562558345441173644760379361058526870394240222454521786011017923;
    
    uint256 constant IC74x = 9464586606561123477288804974538831394437841602118668512135439473047569831851;
    uint256 constant IC74y = 14076637858642195248781275336171225396143819450896287456506511282105273378889;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[74] calldata _pubSignals) public view returns (bool) {
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
                
                g1_mulAccC(_pVk, IC33x, IC33y, calldataload(add(pubSignals, 1024)))
                
                g1_mulAccC(_pVk, IC34x, IC34y, calldataload(add(pubSignals, 1056)))
                
                g1_mulAccC(_pVk, IC35x, IC35y, calldataload(add(pubSignals, 1088)))
                
                g1_mulAccC(_pVk, IC36x, IC36y, calldataload(add(pubSignals, 1120)))
                
                g1_mulAccC(_pVk, IC37x, IC37y, calldataload(add(pubSignals, 1152)))
                
                g1_mulAccC(_pVk, IC38x, IC38y, calldataload(add(pubSignals, 1184)))
                
                g1_mulAccC(_pVk, IC39x, IC39y, calldataload(add(pubSignals, 1216)))
                
                g1_mulAccC(_pVk, IC40x, IC40y, calldataload(add(pubSignals, 1248)))
                
                g1_mulAccC(_pVk, IC41x, IC41y, calldataload(add(pubSignals, 1280)))
                
                g1_mulAccC(_pVk, IC42x, IC42y, calldataload(add(pubSignals, 1312)))
                
                g1_mulAccC(_pVk, IC43x, IC43y, calldataload(add(pubSignals, 1344)))
                
                g1_mulAccC(_pVk, IC44x, IC44y, calldataload(add(pubSignals, 1376)))
                
                g1_mulAccC(_pVk, IC45x, IC45y, calldataload(add(pubSignals, 1408)))
                
                g1_mulAccC(_pVk, IC46x, IC46y, calldataload(add(pubSignals, 1440)))
                
                g1_mulAccC(_pVk, IC47x, IC47y, calldataload(add(pubSignals, 1472)))
                
                g1_mulAccC(_pVk, IC48x, IC48y, calldataload(add(pubSignals, 1504)))
                
                g1_mulAccC(_pVk, IC49x, IC49y, calldataload(add(pubSignals, 1536)))
                
                g1_mulAccC(_pVk, IC50x, IC50y, calldataload(add(pubSignals, 1568)))
                
                g1_mulAccC(_pVk, IC51x, IC51y, calldataload(add(pubSignals, 1600)))
                
                g1_mulAccC(_pVk, IC52x, IC52y, calldataload(add(pubSignals, 1632)))
                
                g1_mulAccC(_pVk, IC53x, IC53y, calldataload(add(pubSignals, 1664)))
                
                g1_mulAccC(_pVk, IC54x, IC54y, calldataload(add(pubSignals, 1696)))
                
                g1_mulAccC(_pVk, IC55x, IC55y, calldataload(add(pubSignals, 1728)))
                
                g1_mulAccC(_pVk, IC56x, IC56y, calldataload(add(pubSignals, 1760)))
                
                g1_mulAccC(_pVk, IC57x, IC57y, calldataload(add(pubSignals, 1792)))
                
                g1_mulAccC(_pVk, IC58x, IC58y, calldataload(add(pubSignals, 1824)))
                
                g1_mulAccC(_pVk, IC59x, IC59y, calldataload(add(pubSignals, 1856)))
                
                g1_mulAccC(_pVk, IC60x, IC60y, calldataload(add(pubSignals, 1888)))
                
                g1_mulAccC(_pVk, IC61x, IC61y, calldataload(add(pubSignals, 1920)))
                
                g1_mulAccC(_pVk, IC62x, IC62y, calldataload(add(pubSignals, 1952)))
                
                g1_mulAccC(_pVk, IC63x, IC63y, calldataload(add(pubSignals, 1984)))
                
                g1_mulAccC(_pVk, IC64x, IC64y, calldataload(add(pubSignals, 2016)))
                
                g1_mulAccC(_pVk, IC65x, IC65y, calldataload(add(pubSignals, 2048)))
                
                g1_mulAccC(_pVk, IC66x, IC66y, calldataload(add(pubSignals, 2080)))
                
                g1_mulAccC(_pVk, IC67x, IC67y, calldataload(add(pubSignals, 2112)))
                
                g1_mulAccC(_pVk, IC68x, IC68y, calldataload(add(pubSignals, 2144)))
                
                g1_mulAccC(_pVk, IC69x, IC69y, calldataload(add(pubSignals, 2176)))
                
                g1_mulAccC(_pVk, IC70x, IC70y, calldataload(add(pubSignals, 2208)))
                
                g1_mulAccC(_pVk, IC71x, IC71y, calldataload(add(pubSignals, 2240)))
                
                g1_mulAccC(_pVk, IC72x, IC72y, calldataload(add(pubSignals, 2272)))
                
                g1_mulAccC(_pVk, IC73x, IC73y, calldataload(add(pubSignals, 2304)))
                
                g1_mulAccC(_pVk, IC74x, IC74y, calldataload(add(pubSignals, 2336)))
                

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
            
            checkField(calldataload(add(_pubSignals, 1024)))
            
            checkField(calldataload(add(_pubSignals, 1056)))
            
            checkField(calldataload(add(_pubSignals, 1088)))
            
            checkField(calldataload(add(_pubSignals, 1120)))
            
            checkField(calldataload(add(_pubSignals, 1152)))
            
            checkField(calldataload(add(_pubSignals, 1184)))
            
            checkField(calldataload(add(_pubSignals, 1216)))
            
            checkField(calldataload(add(_pubSignals, 1248)))
            
            checkField(calldataload(add(_pubSignals, 1280)))
            
            checkField(calldataload(add(_pubSignals, 1312)))
            
            checkField(calldataload(add(_pubSignals, 1344)))
            
            checkField(calldataload(add(_pubSignals, 1376)))
            
            checkField(calldataload(add(_pubSignals, 1408)))
            
            checkField(calldataload(add(_pubSignals, 1440)))
            
            checkField(calldataload(add(_pubSignals, 1472)))
            
            checkField(calldataload(add(_pubSignals, 1504)))
            
            checkField(calldataload(add(_pubSignals, 1536)))
            
            checkField(calldataload(add(_pubSignals, 1568)))
            
            checkField(calldataload(add(_pubSignals, 1600)))
            
            checkField(calldataload(add(_pubSignals, 1632)))
            
            checkField(calldataload(add(_pubSignals, 1664)))
            
            checkField(calldataload(add(_pubSignals, 1696)))
            
            checkField(calldataload(add(_pubSignals, 1728)))
            
            checkField(calldataload(add(_pubSignals, 1760)))
            
            checkField(calldataload(add(_pubSignals, 1792)))
            
            checkField(calldataload(add(_pubSignals, 1824)))
            
            checkField(calldataload(add(_pubSignals, 1856)))
            
            checkField(calldataload(add(_pubSignals, 1888)))
            
            checkField(calldataload(add(_pubSignals, 1920)))
            
            checkField(calldataload(add(_pubSignals, 1952)))
            
            checkField(calldataload(add(_pubSignals, 1984)))
            
            checkField(calldataload(add(_pubSignals, 2016)))
            
            checkField(calldataload(add(_pubSignals, 2048)))
            
            checkField(calldataload(add(_pubSignals, 2080)))
            
            checkField(calldataload(add(_pubSignals, 2112)))
            
            checkField(calldataload(add(_pubSignals, 2144)))
            
            checkField(calldataload(add(_pubSignals, 2176)))
            
            checkField(calldataload(add(_pubSignals, 2208)))
            
            checkField(calldataload(add(_pubSignals, 2240)))
            
            checkField(calldataload(add(_pubSignals, 2272)))
            
            checkField(calldataload(add(_pubSignals, 2304)))
            
            checkField(calldataload(add(_pubSignals, 2336)))
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }
