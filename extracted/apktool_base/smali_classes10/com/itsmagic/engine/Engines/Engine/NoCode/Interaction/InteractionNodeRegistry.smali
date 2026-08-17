.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionNodeRegistry;
.super Ljava/lang/Object;
.source "InteractionNodeRegistry.java"


# static fields
.field public static final INTERACTION_NODE_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionNodeRegistry;->initialized:Z

    .line 43
    const/16 v1, 0x57

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/GetInteractionTargetNode;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/GetInteractionDistanceNode;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractorNode;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetHitPositionNode;

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetHitNormalNode;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractionPointNode;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetPriorityNode;

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetStateNode;

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetHeldObjectNode;

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetAnalogValueNode;

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetOpenAmountNode;

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/InteractionHistoryNodes$GetInteractionCountNode;

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/InteractionDetectionQueryNodes$ResolveTargetNode;

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/InteractionDetectionQueryNodes$IsTargetInViewNode;

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/InteractionDetectionQueryNodes$HasLineOfSightNode;

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/InteractionDetectionQueryNodes$IsRegisteredInteractableNode;

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/InteractionSearchQueryNodes$FindInRayNode;

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/InteractionSearchQueryNodes$FindInSphereNode;

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/InteractionSearchQueryNodes$FindNearestNode;

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnFocusEnterNode;

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnFocusExitNode;

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractHeldNode;

    aput-object v2, v1, v0

    const/16 v0, 0x17

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;

    aput-object v2, v1, v0

    const/16 v0, 0x18

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnFocusStayNode;

    aput-object v2, v1, v0

    const/16 v0, 0x19

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractionActionNode;

    aput-object v2, v1, v0

    const/16 v0, 0x1b

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/CanInteractNode;

    aput-object v2, v1, v0

    const/16 v0, 0x1c

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/TargetHasCapabilityNode;

    aput-object v2, v1, v0

    const/16 v0, 0x1d

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/IsLockedNode;

    aput-object v2, v1, v0

    const/16 v0, 0x1e

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsEnabledNode;

    aput-object v2, v1, v0

    const/16 v0, 0x1f

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$HasTagNode;

    aput-object v2, v1, v0

    const/16 v0, 0x20

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsBusyNode;

    aput-object v2, v1, v0

    const/16 v0, 0x21

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsHeldNode;

    aput-object v2, v1, v0

    const/16 v0, 0x22

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsPoweredNode;

    aput-object v2, v1, v0

    const/16 v0, 0x23

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$CompareStateNode;

    aput-object v2, v1, v0

    const/16 v0, 0x24

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$CooldownReadyNode;

    aput-object v2, v1, v0

    const/16 v0, 0x25

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode;

    aput-object v2, v1, v0

    const/16 v0, 0x26

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$HasRequiredItemNode;

    aput-object v2, v1, v0

    const/16 v0, 0x27

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/InteractionHistoryNodes$InteractionUsedBeforeNode;

    aput-object v2, v1, v0

    const/16 v0, 0x28

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/SetInteractableNode;

    aput-object v2, v1, v0

    const/16 v0, 0x29

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/SendInteractionEventNode;

    aput-object v2, v1, v0

    const/16 v0, 0x2a

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;

    aput-object v2, v1, v0

    const/16 v0, 0x2b

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/HideInteractionPromptNode;

    aput-object v2, v1, v0

    const/16 v0, 0x2c

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/HighlightObjectNode;

    aput-object v2, v1, v0

    const/16 v0, 0x2d

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$SetPriorityNode;

    aput-object v2, v1, v0

    const/16 v0, 0x2e

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$SetStateNode;

    aput-object v2, v1, v0

    const/16 v0, 0x2f

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$SetTagNode;

    aput-object v2, v1, v0

    const/16 v0, 0x30

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$SetCapabilityNode;

    aput-object v2, v1, v0

    const/16 v0, 0x31

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$SetBusyNode;

    aput-object v2, v1, v0

    const/16 v0, 0x32

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$SetPoweredNode;

    aput-object v2, v1, v0

    const/16 v0, 0x33

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$SetLockedNode;

    aput-object v2, v1, v0

    const/16 v0, 0x34

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$SetCooldownNode;

    aput-object v2, v1, v0

    const/16 v0, 0x35

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$SetAnalogValueNode;

    aput-object v2, v1, v0

    const/16 v0, 0x36

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$ConfigurePromptNode;

    aput-object v2, v1, v0

    const/16 v0, 0x37

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$SetInteractionLimitsNode;

    aput-object v2, v1, v0

    const/16 v0, 0x38

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$SendInputActionNode;

    aput-object v2, v1, v0

    const/16 v0, 0x39

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$ReadableNode;

    aput-object v2, v1, v0

    const/16 v0, 0x3a

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$DialogueNode;

    aput-object v2, v1, v0

    const/16 v0, 0x3b

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$MoveInteractorToSocketNode;

    aput-object v2, v1, v0

    const/16 v0, 0x3c

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;

    aput-object v2, v1, v0

    const/16 v0, 0x3d

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/DropObjectNode;

    aput-object v2, v1, v0

    const/16 v0, 0x3e

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/ThrowObjectNode;

    aput-object v2, v1, v0

    const/16 v0, 0x3f

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/ReturnObjectToOriginNode;

    aput-object v2, v1, v0

    const/16 v0, 0x40

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$PushPullObjectNode;

    aput-object v2, v1, v0

    const/16 v0, 0x41

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;

    aput-object v2, v1, v0

    const/16 v0, 0x42

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/InspectInteractionNodes$InspectObjectNode;

    aput-object v2, v1, v0

    const/16 v0, 0x43

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/InspectInteractionNodes$RotateInspectedObjectNode;

    aput-object v2, v1, v0

    const/16 v0, 0x44

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/InspectInteractionNodes$ZoomInspectObjectNode;

    aput-object v2, v1, v0

    const/16 v0, 0x45

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/InspectInteractionNodes$BounceObjectNode;

    aput-object v2, v1, v0

    const/16 v0, 0x46

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;

    aput-object v2, v1, v0

    const/16 v0, 0x47

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/ValveNode;

    aput-object v2, v1, v0

    const/16 v0, 0x48

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/ButtonNode;

    aput-object v2, v1, v0

    const/16 v0, 0x49

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/ElevatorNode;

    aput-object v2, v1, v0

    const/16 v0, 0x4a

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$PressurePlateNode;

    aput-object v2, v1, v0

    const/16 v0, 0x4b

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$PowerLinkNode;

    aput-object v2, v1, v0

    const/16 v0, 0x4c

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Inventory/UseItemOnTargetNode;

    aput-object v2, v1, v0

    const/16 v0, 0x4d

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Inventory/SnapToSocketNode;

    aput-object v2, v1, v0

    const/16 v0, 0x4e

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$InventoryItemNode;

    aput-object v2, v1, v0

    const/16 v0, 0x4f

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedInteractionActionNodes$UnsnapSocketNode;

    aput-object v2, v1, v0

    const/16 v0, 0x50

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$CombineItemsNode;

    aput-object v2, v1, v0

    const/16 v0, 0x51

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$EquipItemNode;

    aput-object v2, v1, v0

    const/16 v0, 0x52

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$ApplyProfileNode;

    aput-object v2, v1, v0

    const/16 v0, 0x53

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$SequenceNode;

    aput-object v2, v1, v0

    const/16 v0, 0x54

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$InteractionGateNode;

    aput-object v2, v1, v0

    const/16 v0, 0x55

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$ReversibleInteractionNode;

    aput-object v2, v1, v0

    const/16 v0, 0x56

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$FeedbackNode;

    aput-object v2, v1, v0

    sput-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionNodeRegistry;->INTERACTION_NODE_CLASSES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegisteredInteractionNodeCount()I
    .locals 1

    .line 161
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionNodeRegistry;->INTERACTION_NODE_CLASSES:[Ljava/lang/Class;

    array-length v0, v0

    return v0
.end method

.method public static declared-synchronized init()V
    .locals 5

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionNodeRegistry;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-boolean v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionNodeRegistry;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 150
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionNodeRegistry;->initialized:Z

    .line 151
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionNodeRegistry;->INTERACTION_NODE_CLASSES:[Ljava/lang/Class;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    goto :goto_1

    .line 154
    :catchall_0
    move-exception v4

    .line 155
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    :cond_1
    monitor-exit v0

    return-void

    .line 148
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
