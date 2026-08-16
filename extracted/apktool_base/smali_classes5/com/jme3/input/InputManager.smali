.class public Lcom/jme3/input/InputManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/RawInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/input/InputManager$Mapping;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final axisValues:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final bindings:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap<",
            "Ljava/util/ArrayList<",
            "Lcom/jme3/input/InputManager$Mapping;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cursorPos:Lcom/jme3/math/Vector2f;

.field private eventsPermitted:Z

.field private frameDelta:J

.field private frameTPF:F

.field private globalAxisDeadZone:F

.field private final inputQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/input/event/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final joystick:Lcom/jme3/input/JoyInput;

.field private final joystickConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/input/JoystickConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private joysticks:[Lcom/jme3/input/Joystick;

.field private final keys:Lcom/jme3/input/KeyInput;

.field private lastLastUpdateTime:J

.field private lastUpdateTime:J

.field private final mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/input/InputManager$Mapping;",
            ">;"
        }
    .end annotation
.end field

.field private final mouse:Lcom/jme3/input/MouseInput;

.field private mouseVisible:Z

.field private final pressedButtons:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final rawListeners:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/input/RawInputListener;",
            ">;"
        }
    .end annotation
.end field

.field private safeMode:Z

.field private final touch:Lcom/jme3/input/TouchInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/input/InputManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/input/InputManager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/input/MouseInput;Lcom/jme3/input/KeyInput;Lcom/jme3/input/JoyInput;Lcom/jme3/input/TouchInput;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jme3/input/InputManager;->lastLastUpdateTime:J

    iput-wide v0, p0, Lcom/jme3/input/InputManager;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/jme3/input/InputManager;->frameDelta:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jme3/input/InputManager;->mouseVisible:Z

    iput-boolean v0, p0, Lcom/jme3/input/InputManager;->safeMode:Z

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/jme3/input/InputManager;->globalAxisDeadZone:F

    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager;->cursorPos:Lcom/jme3/math/Vector2f;

    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager;->mappings:Ljava/util/HashMap;

    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager;->pressedButtons:Lcom/jme3/util/IntMap;

    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/input/RawInputListener;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/input/InputManager;->rawListeners:Lcom/jme3/util/SafeArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager;->joystickConnectionListeners:Ljava/util/List;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iput-object p2, p0, Lcom/jme3/input/InputManager;->keys:Lcom/jme3/input/KeyInput;

    iput-object p1, p0, Lcom/jme3/input/InputManager;->mouse:Lcom/jme3/input/MouseInput;

    iput-object p3, p0, Lcom/jme3/input/InputManager;->joystick:Lcom/jme3/input/JoyInput;

    iput-object p4, p0, Lcom/jme3/input/InputManager;->touch:Lcom/jme3/input/TouchInput;

    invoke-interface {p2, p0}, Lcom/jme3/input/Input;->setInputListener(Lcom/jme3/input/RawInputListener;)V

    invoke-interface {p1, p0}, Lcom/jme3/input/Input;->setInputListener(Lcom/jme3/input/RawInputListener;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, p0}, Lcom/jme3/input/Input;->setInputListener(Lcom/jme3/input/RawInputListener;)V

    invoke-interface {p3, p0}, Lcom/jme3/input/JoyInput;->loadJoysticks(Lcom/jme3/input/InputManager;)[Lcom/jme3/input/Joystick;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/input/InputManager;->joysticks:[Lcom/jme3/input/Joystick;

    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4, p0}, Lcom/jme3/input/Input;->setInputListener(Lcom/jme3/input/RawInputListener;)V

    :cond_1
    invoke-interface {p2}, Lcom/jme3/input/Input;->getInputTimeNanos()J

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mouse or keyboard cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private computeAnalogValue(J)F
    .locals 6

    iget-boolean v0, p0, Lcom/jme3/input/InputManager;->safeMode:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/jme3/input/InputManager;->frameDelta:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-float p1, p1

    long-to-float p2, v2

    div-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p1, p2, v1}, Lcom/jme3/math/FastMath;->clamp(FFF)F

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private invokeActions(IZ)V
    .locals 7

    iget-object v0, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/input/InputManager$Mapping;

    invoke-static {v1}, Lcom/jme3/input/InputManager$Mapping;->access$000(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/input/controls/InputListener;

    instance-of v5, v4, Lcom/jme3/input/controls/ActionListener;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/jme3/input/controls/ActionListener;

    invoke-static {v1}, Lcom/jme3/input/InputManager$Mapping;->access$100(Lcom/jme3/input/InputManager$Mapping;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    invoke-interface {v4, v5, p2, v6}, Lcom/jme3/input/controls/ActionListener;->onAction(Ljava/lang/String;ZF)V

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private invokeAnalogs(IFZ)V
    .locals 6

    iget-object v0, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    iget p3, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    mul-float/2addr p2, p3

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_4

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/input/InputManager$Mapping;

    invoke-static {v0}, Lcom/jme3/input/InputManager$Mapping;->access$000(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/input/controls/InputListener;

    instance-of v4, v3, Lcom/jme3/input/controls/AnalogListener;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/jme3/input/controls/AnalogListener;

    invoke-static {v0}, Lcom/jme3/input/InputManager$Mapping;->access$100(Lcom/jme3/input/InputManager$Mapping;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    invoke-interface {v3, v4, p2, v5}, Lcom/jme3/input/controls/AnalogListener;->onAnalog(Ljava/lang/String;FF)V

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private invokeAnalogsAndActions(IFFZ)V
    .locals 8

    cmpg-float p3, p2, p3

    const/4 v0, 0x1

    if-gez p3, :cond_0

    xor-int/lit8 p3, p4, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/input/InputManager;->invokeAnalogs(IFZ)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {p3, p1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v1, p1}, Lcom/jme3/util/IntMap;->containsKey(I)Z

    move-result p1

    if-eqz p4, :cond_2

    iget p4, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    mul-float/2addr p2, p4

    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v0

    :goto_0
    if-ltz p4, :cond_6

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/input/InputManager$Mapping;

    invoke-static {v1}, Lcom/jme3/input/InputManager$Mapping;->access$000(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_1
    if-ltz v3, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/input/controls/InputListener;

    instance-of v5, v4, Lcom/jme3/input/controls/ActionListener;

    if-eqz v5, :cond_3

    if-nez p1, :cond_3

    move-object v5, v4

    check-cast v5, Lcom/jme3/input/controls/ActionListener;

    invoke-static {v1}, Lcom/jme3/input/InputManager$Mapping;->access$100(Lcom/jme3/input/InputManager$Mapping;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    invoke-interface {v5, v6, v0, v7}, Lcom/jme3/input/controls/ActionListener;->onAction(Ljava/lang/String;ZF)V

    :cond_3
    instance-of v5, v4, Lcom/jme3/input/controls/AnalogListener;

    if-eqz v5, :cond_4

    check-cast v4, Lcom/jme3/input/controls/AnalogListener;

    invoke-static {v1}, Lcom/jme3/input/InputManager$Mapping;->access$100(Lcom/jme3/input/InputManager$Mapping;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    invoke-interface {v4, v5, p2, v6}, Lcom/jme3/input/controls/AnalogListener;->onAnalog(Ljava/lang/String;FF)V

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private invokeTimedActions(IJZ)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/jme3/util/IntMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/jme3/input/InputManager;->pressedButtons:Lcom/jme3/util/IntMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/jme3/input/InputManager;->pressedButtons:Lcom/jme3/util/IntMap;

    invoke-virtual {p4, p1}, Lcom/jme3/util/IntMap;->remove(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    if-nez p4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jme3/input/InputManager;->lastLastUpdateTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-lez p4, :cond_3

    invoke-direct {p0, p2, p3}, Lcom/jme3/input/InputManager;->computeAnalogValue(J)F

    move-result p2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/input/InputManager;->invokeAnalogs(IFZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private invokeUpdateActions()V
    .locals 9

    iget-object v0, p0, Lcom/jme3/input/InputManager;->pressedButtons:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/IntMap$Entry;

    invoke-virtual {v1}, Lcom/jme3/util/IntMap$Entry;->getKey()I

    move-result v2

    invoke-virtual {v1}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/jme3/input/InputManager;->lastUpdateTime:J

    iget-wide v7, p0, Lcom/jme3/input/InputManager;->lastLastUpdateTime:J

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    invoke-direct {p0, v5, v6}, Lcom/jme3/input/InputManager;->computeAnalogValue(J)F

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/jme3/input/InputManager;->invokeAnalogs(IFZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/IntMap$Entry;

    invoke-virtual {v1}, Lcom/jme3/util/IntMap$Entry;->getKey()I

    move-result v2

    invoke-virtual {v1}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v3, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    mul-float/2addr v1, v3

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/jme3/input/InputManager;->invokeAnalogs(IFZ)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private onJoyAxisEventQueued(Lcom/jme3/input/event/JoyAxisEvent;)V
    .locals 6

    invoke-virtual {p1}, Lcom/jme3/input/event/JoyAxisEvent;->getJoyIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/input/event/JoyAxisEvent;->getAxisIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/input/event/JoyAxisEvent;->getValue()F

    move-result v2

    iget v3, p0, Lcom/jme3/input/InputManager;->globalAxisDeadZone:F

    invoke-virtual {p1}, Lcom/jme3/input/event/JoyAxisEvent;->getAxis()Lcom/jme3/input/JoystickAxis;

    move-result-object p1

    invoke-interface {p1}, Lcom/jme3/input/JoystickAxis;->getDeadZone()F

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    cmpg-float v3, v2, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v3, :cond_2

    neg-float v3, p1

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    invoke-static {v0, v1, v4}, Lcom/jme3/input/controls/JoyAxisTrigger;->joyAxisHash(IIZ)I

    move-result v2

    invoke-static {v0, v1, v5}, Lcom/jme3/input/controls/JoyAxisTrigger;->joyAxisHash(IIZ)I

    move-result v0

    iget-object v1, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v1, v2}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iget-object v3, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v3, v0}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_0

    invoke-direct {p0, v2, v5}, Lcom/jme3/input/InputManager;->invokeActions(IZ)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_1

    invoke-direct {p0, v0, v5}, Lcom/jme3/input/InputManager;->invokeActions(IZ)V

    :cond_1
    iget-object p1, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {p1, v2}, Lcom/jme3/util/IntMap;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {p1, v0}, Lcom/jme3/util/IntMap;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_4

    invoke-static {v0, v1, v4}, Lcom/jme3/input/controls/JoyAxisTrigger;->joyAxisHash(IIZ)I

    move-result v3

    invoke-static {v0, v1, v5}, Lcom/jme3/input/controls/JoyAxisTrigger;->joyAxisHash(IIZ)I

    move-result v0

    iget-object v1, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v1, v0}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_3

    invoke-direct {p0, v0, v5}, Lcom/jme3/input/InputManager;->invokeActions(IZ)V

    :cond_3
    neg-float v1, v2

    invoke-direct {p0, v3, v1, p1, v4}, Lcom/jme3/input/InputManager;->invokeAnalogsAndActions(IFFZ)V

    iget-object p1, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {p1, v0}, Lcom/jme3/util/IntMap;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-static {v0, v1, v5}, Lcom/jme3/input/controls/JoyAxisTrigger;->joyAxisHash(IIZ)I

    move-result v3

    invoke-static {v0, v1, v4}, Lcom/jme3/input/controls/JoyAxisTrigger;->joyAxisHash(IIZ)I

    move-result v0

    iget-object v1, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v1, v0}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_5

    invoke-direct {p0, v0, v5}, Lcom/jme3/input/InputManager;->invokeActions(IZ)V

    :cond_5
    invoke-direct {p0, v3, v2, p1, v4}, Lcom/jme3/input/InputManager;->invokeAnalogsAndActions(IFFZ)V

    iget-object p1, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {p1, v0}, Lcom/jme3/util/IntMap;->remove(I)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private onJoyButtonEventQueued(Lcom/jme3/input/event/JoyButtonEvent;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/input/event/JoyButtonEvent;->getJoyIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/input/event/JoyButtonEvent;->getButtonIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jme3/input/controls/JoyButtonTrigger;->joyButtonHash(II)I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/input/event/JoyButtonEvent;->isPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jme3/input/InputManager;->invokeActions(IZ)V

    invoke-virtual {p1}, Lcom/jme3/input/event/InputEvent;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jme3/input/event/JoyButtonEvent;->isPressed()Z

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/jme3/input/InputManager;->invokeTimedActions(IJZ)V

    return-void
.end method

.method private onKeyEventQueued(Lcom/jme3/input/event/KeyInputEvent;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/input/event/KeyInputEvent;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/input/event/KeyInputEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/jme3/input/controls/KeyTrigger;->keyHash(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/input/event/KeyInputEvent;->isPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jme3/input/InputManager;->invokeActions(IZ)V

    invoke-virtual {p1}, Lcom/jme3/input/event/InputEvent;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jme3/input/event/KeyInputEvent;->isPressed()Z

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/jme3/input/InputManager;->invokeTimedActions(IJZ)V

    return-void
.end method

.method private onMouseButtonEventQueued(Lcom/jme3/input/event/MouseButtonEvent;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseButtonEvent;->getButtonIndex()I

    move-result v0

    invoke-static {v0}, Lcom/jme3/input/controls/MouseButtonTrigger;->mouseButtonHash(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseButtonEvent;->isPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jme3/input/InputManager;->invokeActions(IZ)V

    invoke-virtual {p1}, Lcom/jme3/input/event/InputEvent;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseButtonEvent;->isPressed()Z

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/jme3/input/InputManager;->invokeTimedActions(IJZ)V

    return-void
.end method

.method private onMouseMotionEventQueued(Lcom/jme3/input/event/MouseMotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDX()I

    move-result v0

    const/high16 v1, 0x44800000    # 1024.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDX()I

    move-result v4

    if-gez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {v3, v4}, Lcom/jme3/input/controls/MouseAxisTrigger;->mouseAxisHash(IZ)I

    move-result v4

    iget v5, p0, Lcom/jme3/input/InputManager;->globalAxisDeadZone:F

    invoke-direct {p0, v4, v0, v5, v3}, Lcom/jme3/input/InputManager;->invokeAnalogsAndActions(IFFZ)V

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDY()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDY()I

    move-result v1

    if-gez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-static {v2, v1}, Lcom/jme3/input/controls/MouseAxisTrigger;->mouseAxisHash(IZ)I

    move-result v1

    iget v4, p0, Lcom/jme3/input/InputManager;->globalAxisDeadZone:F

    invoke-direct {p0, v1, v0, v4, v3}, Lcom/jme3/input/InputManager;->invokeAnalogsAndActions(IFFZ)V

    :cond_3
    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDeltaWheel()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDeltaWheel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDeltaWheel()I

    move-result p1

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    const/4 p1, 0x2

    invoke-static {p1, v2}, Lcom/jme3/input/controls/MouseAxisTrigger;->mouseAxisHash(IZ)I

    move-result p1

    iget v1, p0, Lcom/jme3/input/InputManager;->globalAxisDeadZone:F

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/jme3/input/InputManager;->invokeAnalogsAndActions(IFFZ)V

    :cond_5
    return-void
.end method

.method private processQueue()V
    .locals 9

    iget-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/input/InputManager;->rawListeners:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jme3/input/RawInputListener;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_8

    aget-object v5, v1, v4

    invoke-interface {v5}, Lcom/jme3/input/RawInputListener;->beginInput()V

    move v6, v3

    :goto_1
    if-ge v6, v0, :cond_7

    iget-object v7, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/input/event/InputEvent;

    invoke-virtual {v7}, Lcom/jme3/input/event/InputEvent;->isConsumed()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    instance-of v8, v7, Lcom/jme3/input/event/MouseMotionEvent;

    if-eqz v8, :cond_1

    check-cast v7, Lcom/jme3/input/event/MouseMotionEvent;

    invoke-interface {v5, v7}, Lcom/jme3/input/RawInputListener;->onMouseMotionEvent(Lcom/jme3/input/event/MouseMotionEvent;)V

    goto :goto_2

    :cond_1
    instance-of v8, v7, Lcom/jme3/input/event/KeyInputEvent;

    if-eqz v8, :cond_2

    check-cast v7, Lcom/jme3/input/event/KeyInputEvent;

    invoke-interface {v5, v7}, Lcom/jme3/input/RawInputListener;->onKeyEvent(Lcom/jme3/input/event/KeyInputEvent;)V

    goto :goto_2

    :cond_2
    instance-of v8, v7, Lcom/jme3/input/event/MouseButtonEvent;

    if-eqz v8, :cond_3

    check-cast v7, Lcom/jme3/input/event/MouseButtonEvent;

    invoke-interface {v5, v7}, Lcom/jme3/input/RawInputListener;->onMouseButtonEvent(Lcom/jme3/input/event/MouseButtonEvent;)V

    goto :goto_2

    :cond_3
    instance-of v8, v7, Lcom/jme3/input/event/JoyAxisEvent;

    if-eqz v8, :cond_4

    check-cast v7, Lcom/jme3/input/event/JoyAxisEvent;

    invoke-interface {v5, v7}, Lcom/jme3/input/RawInputListener;->onJoyAxisEvent(Lcom/jme3/input/event/JoyAxisEvent;)V

    goto :goto_2

    :cond_4
    instance-of v8, v7, Lcom/jme3/input/event/JoyButtonEvent;

    if-eqz v8, :cond_5

    check-cast v7, Lcom/jme3/input/event/JoyButtonEvent;

    invoke-interface {v5, v7}, Lcom/jme3/input/RawInputListener;->onJoyButtonEvent(Lcom/jme3/input/event/JoyButtonEvent;)V

    goto :goto_2

    :cond_5
    instance-of v8, v7, Lcom/jme3/input/event/TouchEvent;

    if-eqz v8, :cond_6

    check-cast v7, Lcom/jme3/input/event/TouchEvent;

    invoke-interface {v5, v7}, Lcom/jme3/input/RawInputListener;->onTouchEvent(Lcom/jme3/input/event/TouchEvent;)V

    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v5}, Lcom/jme3/input/RawInputListener;->endInput()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    if-ge v3, v0, :cond_10

    iget-object v1, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/input/event/InputEvent;

    invoke-virtual {v1}, Lcom/jme3/input/event/InputEvent;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    instance-of v2, v1, Lcom/jme3/input/event/MouseMotionEvent;

    if-eqz v2, :cond_a

    move-object v2, v1

    check-cast v2, Lcom/jme3/input/event/MouseMotionEvent;

    invoke-direct {p0, v2}, Lcom/jme3/input/InputManager;->onMouseMotionEventQueued(Lcom/jme3/input/event/MouseMotionEvent;)V

    goto :goto_4

    :cond_a
    instance-of v2, v1, Lcom/jme3/input/event/KeyInputEvent;

    if-eqz v2, :cond_b

    move-object v2, v1

    check-cast v2, Lcom/jme3/input/event/KeyInputEvent;

    invoke-direct {p0, v2}, Lcom/jme3/input/InputManager;->onKeyEventQueued(Lcom/jme3/input/event/KeyInputEvent;)V

    goto :goto_4

    :cond_b
    instance-of v2, v1, Lcom/jme3/input/event/MouseButtonEvent;

    if-eqz v2, :cond_c

    move-object v2, v1

    check-cast v2, Lcom/jme3/input/event/MouseButtonEvent;

    invoke-direct {p0, v2}, Lcom/jme3/input/InputManager;->onMouseButtonEventQueued(Lcom/jme3/input/event/MouseButtonEvent;)V

    goto :goto_4

    :cond_c
    instance-of v2, v1, Lcom/jme3/input/event/JoyAxisEvent;

    if-eqz v2, :cond_d

    move-object v2, v1

    check-cast v2, Lcom/jme3/input/event/JoyAxisEvent;

    invoke-direct {p0, v2}, Lcom/jme3/input/InputManager;->onJoyAxisEventQueued(Lcom/jme3/input/event/JoyAxisEvent;)V

    goto :goto_4

    :cond_d
    instance-of v2, v1, Lcom/jme3/input/event/JoyButtonEvent;

    if-eqz v2, :cond_e

    move-object v2, v1

    check-cast v2, Lcom/jme3/input/event/JoyButtonEvent;

    invoke-direct {p0, v2}, Lcom/jme3/input/InputManager;->onJoyButtonEventQueued(Lcom/jme3/input/event/JoyButtonEvent;)V

    goto :goto_4

    :cond_e
    instance-of v2, v1, Lcom/jme3/input/event/TouchEvent;

    if-eqz v2, :cond_f

    move-object v2, v1

    check-cast v2, Lcom/jme3/input/event/TouchEvent;

    invoke-virtual {p0, v2}, Lcom/jme3/input/InputManager;->onTouchEventQueued(Lcom/jme3/input/event/TouchEvent;)V

    :cond_f
    :goto_4
    invoke-virtual {v1}, Lcom/jme3/input/event/InputEvent;->setConsumed()V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_10
    iget-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public addJoystickConnectionListener(Lcom/jme3/input/JoystickConnectionListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->joystickConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V
    .locals 5

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    iget-object v3, p0, Lcom/jme3/input/InputManager;->mappings:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/input/InputManager$Mapping;

    if-nez v3, :cond_0

    new-instance v3, Lcom/jme3/input/InputManager$Mapping;

    invoke-direct {v3, v2}, Lcom/jme3/input/InputManager$Mapping;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jme3/input/InputManager;->mappings:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v3}, Lcom/jme3/input/InputManager$Mapping;->access$000(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v3}, Lcom/jme3/input/InputManager$Mapping;->access$000(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V
    .locals 6

    iget-object v0, p0, Lcom/jme3/input/InputManager;->mappings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/input/InputManager$Mapping;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/input/InputManager$Mapping;

    invoke-direct {v0, p1}, Lcom/jme3/input/InputManager$Mapping;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jme3/input/InputManager;->mappings:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    invoke-interface {v3}, Lcom/jme3/input/controls/Trigger;->triggerHashCode()I

    move-result v3

    iget-object v4, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {v4, v3}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {v5, v3, v4}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/jme3/input/InputManager$Mapping;->access$200(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/jme3/input/InputManager;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Attempted to add mapping \"{0}\" twice to trigger."

    invoke-virtual {v3, v4, v5, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public addRawInputListener(Lcom/jme3/input/RawInputListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->rawListeners:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginInput()V
    .locals 0

    return-void
.end method

.method public clearJoystickConnectionListeners()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->joystickConnectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearMappings()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->mappings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->clear()V

    invoke-virtual {p0}, Lcom/jme3/input/InputManager;->reset()V

    return-void
.end method

.method public clearRawInputListeners()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->rawListeners:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->clear()V

    return-void
.end method

.method public deleteMapping(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/input/InputManager;->mappings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/input/InputManager$Mapping;

    if-nez v0, :cond_0

    sget-object v0, Lcom/jme3/input/InputManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Cannot find mapping to be removed, skipping: {0}"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/jme3/input/InputManager$Mapping;->access$200(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {v3, v2}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deleteTrigger(Ljava/lang/String;Lcom/jme3/input/controls/Trigger;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/input/InputManager;->mappings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/input/InputManager$Mapping;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-interface {p2}, Lcom/jme3/input/controls/Trigger;->triggerHashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find mapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public endInput()V
    .locals 0

    return-void
.end method

.method public fireJoystickConnectedEvent(Lcom/jme3/input/Joystick;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/input/InputManager;->joystickConnectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/input/JoystickConnectionListener;

    invoke-interface {v1, p1}, Lcom/jme3/input/JoystickConnectionListener;->onConnected(Lcom/jme3/input/Joystick;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireJoystickDisconnectedEvent(Lcom/jme3/input/Joystick;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/input/InputManager;->joystickConnectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/input/JoystickConnectionListener;

    invoke-interface {v1, p1}, Lcom/jme3/input/JoystickConnectionListener;->onDisconnected(Lcom/jme3/input/Joystick;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAxisDeadZone()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/InputManager;->globalAxisDeadZone:F

    return v0
.end method

.method public getCursorPosition()Lcom/jme3/math/Vector2f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->cursorPos:Lcom/jme3/math/Vector2f;

    return-object v0
.end method

.method public getJoysticks()[Lcom/jme3/input/Joystick;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->joysticks:[Lcom/jme3/input/Joystick;

    return-object v0
.end method

.method public getKeyName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->keys:Lcom/jme3/input/KeyInput;

    invoke-interface {v0, p1}, Lcom/jme3/input/KeyInput;->getKeyName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSimulateMouse()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/input/InputManager;->touch:Lcom/jme3/input/TouchInput;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jme3/input/TouchInput;->isSimulateMouse()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMapping(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->mappings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isCursorVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/InputManager;->mouseVisible:Z

    return v0
.end method

.method public isSimulateKeyboard()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->touch:Lcom/jme3/input/TouchInput;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jme3/input/TouchInput;->isSimulateKeyboard()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSimulateMouse()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->touch:Lcom/jme3/input/TouchInput;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jme3/input/TouchInput;->isSimulateMouse()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onJoyAxisEvent(Lcom/jme3/input/event/JoyAxisEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "JoyInput has raised an event at an illegal time."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onJoyButtonEvent(Lcom/jme3/input/event/JoyButtonEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "JoyInput has raised an event at an illegal time."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onKeyEvent(Lcom/jme3/input/event/KeyInputEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "KeyInput has raised an event at an illegal time."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onMouseButtonEvent(Lcom/jme3/input/event/MouseButtonEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/input/InputManager;->cursorPos:Lcom/jme3/math/Vector2f;

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseButtonEvent;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseButtonEvent;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    iget-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MouseInput has raised an event at an illegal time."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onMouseMotionEvent(Lcom/jme3/input/event/MouseMotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/input/InputManager;->cursorPos:Lcom/jme3/math/Vector2f;

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    iget-boolean v0, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Lcom/jme3/input/event/TouchEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/input/InputManager;->cursorPos:Lcom/jme3/math/Vector2f;

    invoke-virtual {p1}, Lcom/jme3/input/event/TouchEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/input/event/TouchEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    iget-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "TouchInput has raised an event at an illegal time."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onTouchEventQueued(Lcom/jme3/input/event/TouchEvent;)V
    .locals 8

    iget-object v0, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Lcom/jme3/input/event/TouchEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Lcom/jme3/input/controls/TouchTrigger;->touchHash(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/input/InputManager$Mapping;

    invoke-static {v2}, Lcom/jme3/input/InputManager$Mapping;->access$000(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/input/controls/InputListener;

    instance-of v6, v5, Lcom/jme3/input/controls/TouchListener;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/jme3/input/controls/TouchListener;

    invoke-static {v2}, Lcom/jme3/input/InputManager$Mapping;->access$100(Lcom/jme3/input/InputManager$Mapping;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    invoke-interface {v5, v6, p1, v7}, Lcom/jme3/input/controls/TouchListener;->onTouch(Ljava/lang/String;Lcom/jme3/input/event/TouchEvent;F)V

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeJoystickConnectionListener(Lcom/jme3/input/JoystickConnectionListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->joystickConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeListener(Lcom/jme3/input/controls/InputListener;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/input/InputManager;->mappings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/input/InputManager$Mapping;

    invoke-static {v1}, Lcom/jme3/input/InputManager$Mapping;->access$000(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeRawInputListener(Lcom/jme3/input/RawInputListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->rawListeners:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->pressedButtons:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->clear()V

    iget-object v0, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->clear()V

    return-void
.end method

.method public setAxisDeadZone(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/InputManager;->globalAxisDeadZone:F

    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/InputManager;->mouseVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/jme3/input/InputManager;->mouseVisible:Z

    iget-object v0, p0, Lcom/jme3/input/InputManager;->mouse:Lcom/jme3/input/MouseInput;

    invoke-interface {v0, p1}, Lcom/jme3/input/MouseInput;->setCursorVisible(Z)V

    :cond_0
    return-void
.end method

.method public setJoysticks([Lcom/jme3/input/Joystick;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/input/InputManager;->joysticks:[Lcom/jme3/input/Joystick;

    return-void
.end method

.method public setMouseCursor(Lcom/jme3/cursors/plugins/JmeCursor;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->mouse:Lcom/jme3/input/MouseInput;

    invoke-interface {v0, p1}, Lcom/jme3/input/MouseInput;->setNativeCursor(Lcom/jme3/cursors/plugins/JmeCursor;)V

    return-void
.end method

.method public setSimulateKeyboard(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->touch:Lcom/jme3/input/TouchInput;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/jme3/input/TouchInput;->setSimulateKeyboard(Z)V

    :cond_0
    return-void
.end method

.method public setSimulateMouse(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/InputManager;->touch:Lcom/jme3/input/TouchInput;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/jme3/input/TouchInput;->setSimulateMouse(Z)V

    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 6

    iput p1, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    const v0, 0x3c75c28f    # 0.015f

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/jme3/input/InputManager;->safeMode:Z

    iget-object p1, p0, Lcom/jme3/input/InputManager;->keys:Lcom/jme3/input/KeyInput;

    invoke-interface {p1}, Lcom/jme3/input/Input;->getInputTimeNanos()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jme3/input/InputManager;->lastUpdateTime:J

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/jme3/input/InputManager;->frameDelta:J

    iput-boolean v1, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    iget-object p1, p0, Lcom/jme3/input/InputManager;->keys:Lcom/jme3/input/KeyInput;

    invoke-interface {p1}, Lcom/jme3/input/Input;->update()V

    iget-object p1, p0, Lcom/jme3/input/InputManager;->mouse:Lcom/jme3/input/MouseInput;

    invoke-interface {p1}, Lcom/jme3/input/Input;->update()V

    iget-object p1, p0, Lcom/jme3/input/InputManager;->joystick:Lcom/jme3/input/JoyInput;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/jme3/input/Input;->update()V

    :cond_1
    iget-object p1, p0, Lcom/jme3/input/InputManager;->touch:Lcom/jme3/input/TouchInput;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/jme3/input/Input;->update()V

    :cond_2
    iput-boolean v0, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    invoke-direct {p0}, Lcom/jme3/input/InputManager;->processQueue()V

    invoke-direct {p0}, Lcom/jme3/input/InputManager;->invokeUpdateActions()V

    iget-wide v0, p0, Lcom/jme3/input/InputManager;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/jme3/input/InputManager;->lastLastUpdateTime:J

    iput-wide v2, p0, Lcom/jme3/input/InputManager;->lastUpdateTime:J

    return-void
.end method
