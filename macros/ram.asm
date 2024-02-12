; Used in wram.asm

MACRO flag_array
	ds ((\1) + 7) / 8
ENDM

DEF BOX_STRUCT_LENGTH EQU 25 + NUM_MOVES * 2

MACRO box_struct
\1Species::    db
\1HP::         dw
\1BoxLevel::   db
\1Status::     db
\1Type::
\1Type1::      db
\1Type2::      db
\1CatchRate::  db
\1Moves::      ds NUM_MOVES
\1OTID::       dw
\1Exp::        ds 3
\1HPExp::      dw
\1AttackExp::  dw
\1DefenseExp:: dw
\1SpeedExp::   dw
\1SpecialExp:: dw
\1DVs::        dw
\1PP::         ds NUM_MOVES
ENDM

MACRO party_struct
	box_struct \1
\1Level::      db
\1Stats::
\1MaxHP::      dw
\1Attack::     dw
\1Defense::    dw
\1Speed::      dw
\1Special::    dw
ENDM

MACRO battle_struct
\1Species::    db
\1HP::         dw
\1PartyPos::
\1BoxLevel::   db
\1Status::     db
\1Type::
\1Type1::      db
\1Type2::      db
\1CatchRate::  db
\1Moves::      ds NUM_MOVES
\1DVs::        dw
\1Level::      db
\1Stats::
\1MaxHP::      dw
\1Attack::     dw
\1Defense::    dw
\1Speed::      dw
\1Special::    dw
\1PP::         ds NUM_MOVES
ENDM

MACRO spritestatedata1
\1PictureID::             db
\1MovementStatus::        db
\1ImageIndex::            db
\1YStepVector::           db
\1YPixels::               db
\1XStepVector::           db
\1XPixels::               db
\1IntraAnimFrameCounter:: db
\1AnimFrameCounter::      db
\1FacingDirection::       db
\1YAdjusted::             db
\1XAdjusted::             db
\1CollisionData::         db
	ds 3
\1End::
ENDM

MACRO spritestatedata2
\1WalkAnimationCounter:: db
	ds 1
\1YDisplacement::        db
\1XDisplacement::        db
\1MapY::                 db
\1MapX::                 db
\1MovementByte1::        db
\1GrassPriority::        db
\1MovementDelay::        db
\1OrigFacingDirection::  db
	ds 3
\1PictureID::            db
\1ImageBaseOffset::      db
	ds 1
\1End::
ENDM

MACRO sprite_oam_struct
\1YCoord::     db
\1XCoord::     db
\1TileID::     db
\1Attributes:: db
ENDM

MACRO map_connection_struct
\1ConnectedMap::            db
\1ConnectionStripSrc::      dw
\1ConnectionStripDest::     dw
\1ConnectionStripLength::   db
\1ConnectedMapWidth::       db
\1ConnectedMapYAlignment::  db
\1ConnectedMapXAlignment::  db
\1ConnectedMapViewPointer:: dw
ENDM

MACRO game_stats_struct
\1FrameCount::                 ds 4 ; x
\1OWFrameCount::               ds 4 ; x
\1BattleFrameCount::           ds 4 ; x
\1MenuFrameCount::             ds 4 ; x
\1IntrosFrameCount::           ds 4 ; x

\1StepCount::                  ds 4 ; x
\1StepCountWalk::              ds 4 ; x
\1StepCountBike::              ds 4 ; x
\1StepCountSurf::              ds 4 ; x
\1Bonks::                      ds 2 ; x

\1SaveCount::                  ds 2 ; x
\1ContinueCount::              ds 2 ; x

\1MoneyMade::                  ds 4 ; 
\1MoneySpent::                 ds 4 ; 
\1MoneyLost::                  ds 4 ; 

\1ItemsPickedUp::              ds 2 ; 
\1ItemsBought::                ds 2 ; 
\1ItemsSold::                  ds 2 ; 

\1MovesLearnt::                ds 2 ; 

; battle stats
\1TrainerBattles::             ds 2 ; 
\1WildBattles::                ds 2 ; 

\1BattleTurns::                ds 2 ; 
\1PlayerTurns::                ds 2 ; 
\1EnemyTurns::                 ds 2 ; 

\1BallsThrown::                ds 2 ; 
\1BallsCaught::                ds 2 ; 
\1Switchout::                  ds 2 ; 
\1BattlesFled::                ds 2 ; 
\1FailedRuns::                 ds 2 ; 
\1ExpGained::                  ds 4 ; 

\1PlayerTotalDamage::          ds 4 ; 
\1EnemyTotalDamage::           ds 4 ; 
\1PlayerActualDamage::         ds 4 ; 
\1EnemyActualDamage::          ds 4 ; 

\1MovesHit:: 
\1PlayerMovesHit::             ds 2 ; 
\1EnemyMovesHit::              ds 2 ; 

\1MovesMissed:: 
\1PlayerMovesMissed::          ds 2 ; 
\1EnemyMovesMissed::           ds 2 ; 

\1MovesStatus:: 
\1PlayerMovesStatus::           ds 2 ; 
\1EnemyMovesStatus::            ds 2 ; 

\1MovesSpecial:: 
\1PlayerMovesSpecial::          ds 2 ; 
\1EnemyMovesSpecial::           ds 2 ; 

\1PlayerMoves0xE::              ds 2 ; 
\1PlayerMoves4xR::              ds 2 ; 
\1PlayerMoves2xR::              ds 2 ; 
\1PlayerMoves1xE::              ds 2 ; 
\1PlayerMoves2xE::              ds 2 ; 
\1PlayerMoves4xE::              ds 2 ; 

\1EnemyMoves0xE::               ds 2 ; 
\1EnemyMoves4xR::               ds 2 ; 
\1EnemyMoves2xR::               ds 2 ; 
\1EnemyMoves1xE::               ds 2 ; 
\1EnemyMoves2xE::               ds 2 ; 
\1EnemyMoves4xE::               ds 2 ; 

\1Criticals:: 
\1PlayerCriticals::            ds 2 ; 
\1EnemyCriticals::             ds 2 ; 

\1OHKOs::
\1PlayerOHKOs::                ds 2 ; 
\1EnemyOHKOs::                 ds 2 ; 

\1BecameConfused::
\1PlayerBecameConfused::       ds 2 ; 
\1EnemyBecameConfused::        ds 2 ; 

\1WasParalyzed::
\1PlayerWasParalyzed::         ds 2 ; 
\1EnemyWasParalyzed::          ds 2 ; 

\1WasBurned::
\1PlayerWasBurned::            ds 2 ; 
\1EnemyWasBurned::             ds 2 ; 

\1WasFrozen::
\1PlayerWasFrozen::            ds 2 ; 
\1EnemyWasFrozen::             ds 2 ; 

\1WasPoisoned::
\1PlayerWasPoisoned::          ds 2 ; 
\1EnemyWasPoisoned::           ds 2 ; 

\1WasPoisonedBadly::
\1PlayerWasPoisonedBadly::     ds 2 ; 
\1EnemyWasPoisonedBadly::      ds 2 ; 

\1FellAsleep::
\1PlayerFellAsleep::           ds 2 ; 
\1EnemyFellAsleep::            ds 2 ; 

\1TurnsConfused:: 
\1PlayerTurnsConfused::        ds 2 ; 
\1EnemyTurnsConfused::         ds 2 ; 

\1TurnsConfusedHitSelf:: 
\1PlayerTurnsConfusedHitSelf:: ds 2 ; 
\1EnemyTurnsConfusedHitSelf::  ds 2 ; 

\1TurnsParalyzed:: 
\1PlayerTurnsParalyzed::       ds 2 ; 
\1EnemyTurnsParalyzed::        ds 2 ; 

\1TurnsParalyzedFully:: 
\1PlayerTurnsParalyzedFully::  ds 2 ; 
\1EnemyTurnsParalyzedFully::   ds 2 ; 

\1TurnsAsleep::
\1PlayerTurnsAsleep::          ds 2 ; 
\1EnemyTurnsAsleep::           ds 2 ; 

\1PokemonFainted:: 
\1PlayerPokemonFainted::       ds 2 ; 
\1EnemyPokemonFainted::        ds 2 ; 

ENDM

