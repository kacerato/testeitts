.class public final Lcom/ardor3d/input/logical/TriggerConditions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALWAYS_FALSE:Lw2/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/I<",
            "Lcom/ardor3d/input/logical/TwoInputStates;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALWAYS_TRUE:Lw2/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/I<",
            "Lcom/ardor3d/input/logical/TwoInputStates;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEFT_DOWN_CONDITION:Lcom/ardor3d/input/logical/MouseButtonCondition;

.field private static final MIDDLE_DOWN_CONDITION:Lcom/ardor3d/input/logical/MouseButtonCondition;

.field private static final MOUSE_MOVED_CONDITION:Lcom/ardor3d/input/logical/MouseMovedCondition;

.field private static final RIGHT_DOWN_CONDITION:Lcom/ardor3d/input/logical/MouseButtonCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ardor3d/input/logical/MouseMovedCondition;

    invoke-direct {v0}, Lcom/ardor3d/input/logical/MouseMovedCondition;-><init>()V

    sput-object v0, Lcom/ardor3d/input/logical/TriggerConditions;->MOUSE_MOVED_CONDITION:Lcom/ardor3d/input/logical/MouseMovedCondition;

    sget-object v0, Lcom/ardor3d/input/MouseButton;->LEFT:Lcom/ardor3d/input/MouseButton;

    sget-object v1, Lcom/ardor3d/input/ButtonState;->DOWN:Lcom/ardor3d/input/ButtonState;

    invoke-static {v0, v1}, Lcom/ardor3d/input/logical/TriggerConditions;->makeCondition(Lcom/ardor3d/input/MouseButton;Lcom/ardor3d/input/ButtonState;)Lcom/ardor3d/input/logical/MouseButtonCondition;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/input/logical/TriggerConditions;->LEFT_DOWN_CONDITION:Lcom/ardor3d/input/logical/MouseButtonCondition;

    sget-object v0, Lcom/ardor3d/input/MouseButton;->RIGHT:Lcom/ardor3d/input/MouseButton;

    invoke-static {v0, v1}, Lcom/ardor3d/input/logical/TriggerConditions;->makeCondition(Lcom/ardor3d/input/MouseButton;Lcom/ardor3d/input/ButtonState;)Lcom/ardor3d/input/logical/MouseButtonCondition;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/input/logical/TriggerConditions;->RIGHT_DOWN_CONDITION:Lcom/ardor3d/input/logical/MouseButtonCondition;

    sget-object v0, Lcom/ardor3d/input/MouseButton;->MIDDLE:Lcom/ardor3d/input/MouseButton;

    invoke-static {v0, v1}, Lcom/ardor3d/input/logical/TriggerConditions;->makeCondition(Lcom/ardor3d/input/MouseButton;Lcom/ardor3d/input/ButtonState;)Lcom/ardor3d/input/logical/MouseButtonCondition;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/input/logical/TriggerConditions;->MIDDLE_DOWN_CONDITION:Lcom/ardor3d/input/logical/MouseButtonCondition;

    new-instance v0, Lcom/ardor3d/input/logical/TriggerConditions$1;

    invoke-direct {v0}, Lcom/ardor3d/input/logical/TriggerConditions$1;-><init>()V

    sput-object v0, Lcom/ardor3d/input/logical/TriggerConditions;->ALWAYS_TRUE:Lw2/I;

    new-instance v0, Lcom/ardor3d/input/logical/TriggerConditions$2;

    invoke-direct {v0}, Lcom/ardor3d/input/logical/TriggerConditions$2;-><init>()V

    sput-object v0, Lcom/ardor3d/input/logical/TriggerConditions;->ALWAYS_FALSE:Lw2/I;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alwaysFalse()Lw2/I;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/I<",
            "Lcom/ardor3d/input/logical/TwoInputStates;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ardor3d/input/logical/TriggerConditions;->ALWAYS_FALSE:Lw2/I;

    return-object v0
.end method

.method public static alwaysTrue()Lw2/I;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/I<",
            "Lcom/ardor3d/input/logical/TwoInputStates;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ardor3d/input/logical/TriggerConditions;->ALWAYS_TRUE:Lw2/I;

    return-object v0
.end method

.method public static leftButtonDown()Lcom/ardor3d/input/logical/MouseButtonCondition;
    .locals 1

    sget-object v0, Lcom/ardor3d/input/logical/TriggerConditions;->LEFT_DOWN_CONDITION:Lcom/ardor3d/input/logical/MouseButtonCondition;

    return-object v0
.end method

.method private static makeCondition(Lcom/ardor3d/input/MouseButton;Lcom/ardor3d/input/ButtonState;)Lcom/ardor3d/input/logical/MouseButtonCondition;
    .locals 6

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ardor3d/input/MouseButton;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {}, Lcom/ardor3d/input/MouseButton;->values()[Lcom/ardor3d/input/MouseButton;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eq p0, v4, :cond_0

    sget-object v5, Lcom/ardor3d/input/ButtonState;->UNDEFINED:Lcom/ardor3d/input/ButtonState;

    goto :goto_1

    :cond_0
    move-object v5, p1

    :goto_1
    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/ardor3d/input/logical/MouseButtonCondition;

    invoke-direct {p0, v0}, Lcom/ardor3d/input/logical/MouseButtonCondition;-><init>(Ljava/util/EnumMap;)V

    return-object p0
.end method

.method public static middleButtonDown()Lcom/ardor3d/input/logical/MouseButtonCondition;
    .locals 1

    sget-object v0, Lcom/ardor3d/input/logical/TriggerConditions;->MIDDLE_DOWN_CONDITION:Lcom/ardor3d/input/logical/MouseButtonCondition;

    return-object v0
.end method

.method public static mouseMoved()Lcom/ardor3d/input/logical/MouseMovedCondition;
    .locals 1

    sget-object v0, Lcom/ardor3d/input/logical/TriggerConditions;->MOUSE_MOVED_CONDITION:Lcom/ardor3d/input/logical/MouseMovedCondition;

    return-object v0
.end method

.method public static passedThrottle(DLcom/ardor3d/util/Timer;)Lw2/I;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/ardor3d/util/Timer;",
            ")",
            "Lw2/I<",
            "Lcom/ardor3d/input/logical/TwoInputStates;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ardor3d/input/logical/TriggerConditions$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/ardor3d/input/logical/TriggerConditions$3;-><init>(Lcom/ardor3d/util/Timer;D)V

    return-object v0
.end method

.method public static rightButtonDown()Lcom/ardor3d/input/logical/MouseButtonCondition;
    .locals 1

    sget-object v0, Lcom/ardor3d/input/logical/TriggerConditions;->RIGHT_DOWN_CONDITION:Lcom/ardor3d/input/logical/MouseButtonCondition;

    return-object v0
.end method
