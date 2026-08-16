.class public Lcom/ardor3d/input/PhysicalLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/input/InputState;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_INPUT_POLL_TIME:J

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final _controllerWrapper:Lcom/ardor3d/input/ControllerWrapper;

.field private _currentControllerState:Lcom/ardor3d/input/ControllerState;

.field private _currentKeyboardState:Lcom/ardor3d/input/KeyboardState;

.field private _currentMouseState:Lcom/ardor3d/input/MouseState;

.field private final _focusWrapper:Lcom/ardor3d/input/FocusWrapper;

.field private _inited:Z

.field private final _keyboardWrapper:Lcom/ardor3d/input/KeyboardWrapper;

.field private final _mouseWrapper:Lcom/ardor3d/input/MouseWrapper;

.field private final _stateQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/ardor3d/input/InputState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/ardor3d/input/PhysicalLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/input/PhysicalLayer;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/ardor3d/input/PhysicalLayer;->MAX_INPUT_POLL_TIME:J

    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/input/PhysicalLayer;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/input/KeyboardWrapper;Lcom/ardor3d/input/MouseWrapper;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ardor3d/input/logical/DummyControllerWrapper;->INSTANCE:Lcom/ardor3d/input/logical/DummyControllerWrapper;

    sget-object v1, Lcom/ardor3d/input/logical/DummyFocusWrapper;->INSTANCE:Lcom/ardor3d/input/logical/DummyFocusWrapper;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ardor3d/input/PhysicalLayer;-><init>(Lcom/ardor3d/input/KeyboardWrapper;Lcom/ardor3d/input/MouseWrapper;Lcom/ardor3d/input/ControllerWrapper;Lcom/ardor3d/input/FocusWrapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/input/KeyboardWrapper;Lcom/ardor3d/input/MouseWrapper;Lcom/ardor3d/input/ControllerWrapper;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/ardor3d/input/logical/DummyFocusWrapper;->INSTANCE:Lcom/ardor3d/input/logical/DummyFocusWrapper;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ardor3d/input/PhysicalLayer;-><init>(Lcom/ardor3d/input/KeyboardWrapper;Lcom/ardor3d/input/MouseWrapper;Lcom/ardor3d/input/ControllerWrapper;Lcom/ardor3d/input/FocusWrapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/input/KeyboardWrapper;Lcom/ardor3d/input/MouseWrapper;Lcom/ardor3d/input/ControllerWrapper;Lcom/ardor3d/input/FocusWrapper;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_inited:Z

    .line 6
    iput-object p1, p0, Lcom/ardor3d/input/PhysicalLayer;->_keyboardWrapper:Lcom/ardor3d/input/KeyboardWrapper;

    .line 7
    iput-object p2, p0, Lcom/ardor3d/input/PhysicalLayer;->_mouseWrapper:Lcom/ardor3d/input/MouseWrapper;

    .line 8
    iput-object p4, p0, Lcom/ardor3d/input/PhysicalLayer;->_focusWrapper:Lcom/ardor3d/input/FocusWrapper;

    .line 9
    iput-object p3, p0, Lcom/ardor3d/input/PhysicalLayer;->_controllerWrapper:Lcom/ardor3d/input/ControllerWrapper;

    .line 10
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/input/PhysicalLayer;->_stateQueue:Ljava/util/concurrent/BlockingQueue;

    .line 11
    sget-object p1, Lcom/ardor3d/input/KeyboardState;->NOTHING:Lcom/ardor3d/input/KeyboardState;

    iput-object p1, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentKeyboardState:Lcom/ardor3d/input/KeyboardState;

    .line 12
    sget-object p1, Lcom/ardor3d/input/MouseState;->NOTHING:Lcom/ardor3d/input/MouseState;

    iput-object p1, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentMouseState:Lcom/ardor3d/input/MouseState;

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/input/KeyboardWrapper;Lcom/ardor3d/input/MouseWrapper;Lcom/ardor3d/input/FocusWrapper;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/ardor3d/input/logical/DummyControllerWrapper;->INSTANCE:Lcom/ardor3d/input/logical/DummyControllerWrapper;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ardor3d/input/PhysicalLayer;-><init>(Lcom/ardor3d/input/KeyboardWrapper;Lcom/ardor3d/input/MouseWrapper;Lcom/ardor3d/input/ControllerWrapper;Lcom/ardor3d/input/FocusWrapper;)V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_inited:Z

    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_keyboardWrapper:Lcom/ardor3d/input/KeyboardWrapper;

    invoke-interface {v0}, Lcom/ardor3d/input/KeyboardWrapper;->init()V

    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_mouseWrapper:Lcom/ardor3d/input/MouseWrapper;

    invoke-interface {v0}, Lcom/ardor3d/input/MouseWrapper;->init()V

    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_focusWrapper:Lcom/ardor3d/input/FocusWrapper;

    invoke-interface {v0}, Lcom/ardor3d/input/FocusWrapper;->init()V

    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_controllerWrapper:Lcom/ardor3d/input/ControllerWrapper;

    invoke-interface {v0}, Lcom/ardor3d/input/ControllerWrapper;->init()V

    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_controllerWrapper:Lcom/ardor3d/input/ControllerWrapper;

    invoke-interface {v0}, Lcom/ardor3d/input/ControllerWrapper;->getBlankState()Lcom/ardor3d/input/ControllerState;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentControllerState:Lcom/ardor3d/input/ControllerState;

    return-void
.end method

.method private lostFocus()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_stateQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lcom/ardor3d/input/InputState;->LOST_FOCUS:Lcom/ardor3d/input/InputState;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ardor3d/input/KeyboardState;->NOTHING:Lcom/ardor3d/input/KeyboardState;

    iput-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentKeyboardState:Lcom/ardor3d/input/KeyboardState;

    sget-object v0, Lcom/ardor3d/input/MouseState;->NOTHING:Lcom/ardor3d/input/MouseState;

    iput-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentMouseState:Lcom/ardor3d/input/MouseState;

    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_controllerWrapper:Lcom/ardor3d/input/ControllerWrapper;

    invoke-interface {v0}, Lcom/ardor3d/input/ControllerWrapper;->getBlankState()Lcom/ardor3d/input/ControllerState;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentControllerState:Lcom/ardor3d/input/ControllerState;

    return-void
.end method

.method private readControllerState()V
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_controllerWrapper:Lcom/ardor3d/input/ControllerWrapper;

    invoke-interface {v0}, Lcom/ardor3d/input/ControllerWrapper;->getEvents()Lcom/google/common/collect/g2;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/ardor3d/input/ControllerState;

    invoke-direct {v1}, Lcom/ardor3d/input/ControllerState;-><init>()V

    iput-object v1, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentControllerState:Lcom/ardor3d/input/ControllerState;

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/input/ControllerEvent;

    iget-object v2, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentControllerState:Lcom/ardor3d/input/ControllerState;

    invoke-virtual {v2, v1}, Lcom/ardor3d/input/ControllerState;->addEvent(Lcom/ardor3d/input/ControllerEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readKeyboardState()V
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_keyboardWrapper:Lcom/ardor3d/input/KeyboardWrapper;

    invoke-interface {v0}, Lcom/ardor3d/input/KeyboardWrapper;->getEvents()Lcom/google/common/collect/g2;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/input/KeyEvent;

    iget-object v1, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentKeyboardState:Lcom/ardor3d/input/KeyboardState;

    invoke-virtual {v1}, Lcom/ardor3d/input/KeyboardState;->getKeysDown()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/ardor3d/input/Key;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentKeyboardState:Lcom/ardor3d/input/KeyboardState;

    invoke-virtual {v1}, Lcom/ardor3d/input/KeyboardState;->getKeysDown()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Lcom/ardor3d/input/KeyEvent;->getState()Lcom/ardor3d/input/KeyState;

    move-result-object v2

    sget-object v3, Lcom/ardor3d/input/KeyState;->DOWN:Lcom/ardor3d/input/KeyState;

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/ardor3d/input/KeyEvent;->getKey()Lcom/ardor3d/input/Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/ardor3d/input/KeyEvent;->getKey()Lcom/ardor3d/input/Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    :goto_1
    new-instance v2, Lcom/ardor3d/input/KeyboardState;

    invoke-direct {v2, v1, v0}, Lcom/ardor3d/input/KeyboardState;-><init>(Ljava/util/EnumSet;Lcom/ardor3d/input/KeyEvent;)V

    iput-object v2, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentKeyboardState:Lcom/ardor3d/input/KeyboardState;

    return-void
.end method

.method private readMouseState()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_mouseWrapper:Lcom/ardor3d/input/MouseWrapper;

    invoke-interface {v0}, Lcom/ardor3d/input/MouseWrapper;->getEvents()Lcom/google/common/collect/g2;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/input/MouseState;

    iput-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentMouseState:Lcom/ardor3d/input/MouseState;

    :cond_0
    return-void
.end method


# virtual methods
.method public drainAvailableStates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ardor3d/input/InputState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_stateQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/input/PhysicalLayer;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/ardor3d/input/PhysicalLayer;->_stateQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    return-object v0
.end method

.method public readState()V
    .locals 10

    iget-boolean v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_inited:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ardor3d/input/PhysicalLayer;->init()V

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentKeyboardState:Lcom/ardor3d/input/KeyboardState;

    iget-object v1, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentMouseState:Lcom/ardor3d/input/MouseState;

    invoke-virtual {v1}, Lcom/ardor3d/input/MouseState;->getDwheel()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentMouseState:Lcom/ardor3d/input/MouseState;

    invoke-virtual {v1}, Lcom/ardor3d/input/MouseState;->getDx()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentMouseState:Lcom/ardor3d/input/MouseState;

    invoke-virtual {v1}, Lcom/ardor3d/input/MouseState;->getDy()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/ardor3d/input/MouseState;

    iget-object v2, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentMouseState:Lcom/ardor3d/input/MouseState;

    invoke-virtual {v2}, Lcom/ardor3d/input/MouseState;->getX()I

    move-result v3

    iget-object v2, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentMouseState:Lcom/ardor3d/input/MouseState;

    invoke-virtual {v2}, Lcom/ardor3d/input/MouseState;->getY()I

    move-result v4

    iget-object v2, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentMouseState:Lcom/ardor3d/input/MouseState;

    invoke-virtual {v2}, Lcom/ardor3d/input/MouseState;->getButtonStates()Ljava/util/EnumMap;

    move-result-object v8

    iget-object v2, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentMouseState:Lcom/ardor3d/input/MouseState;

    invoke-virtual {v2}, Lcom/ardor3d/input/MouseState;->getClickCounts()Lcom/google/common/collect/V1;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ardor3d/input/MouseState;-><init>(IIIIILjava/util/EnumMap;Lcom/google/common/collect/V1;)V

    iput-object v1, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentMouseState:Lcom/ardor3d/input/MouseState;

    :goto_0
    iget-object v1, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentMouseState:Lcom/ardor3d/input/MouseState;

    iget-object v2, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentControllerState:Lcom/ardor3d/input/ControllerState;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sget-wide v5, Lcom/ardor3d/input/PhysicalLayer;->MAX_INPUT_POLL_TIME:J

    add-long/2addr v3, v5

    :cond_2
    invoke-direct {p0}, Lcom/ardor3d/input/PhysicalLayer;->readKeyboardState()V

    invoke-direct {p0}, Lcom/ardor3d/input/PhysicalLayer;->readMouseState()V

    invoke-direct {p0}, Lcom/ardor3d/input/PhysicalLayer;->readControllerState()V

    iget-object v5, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentKeyboardState:Lcom/ardor3d/input/KeyboardState;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentMouseState:Lcom/ardor3d/input/MouseState;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentControllerState:Lcom/ardor3d/input/ControllerState;

    invoke-virtual {v2, v0}, Lcom/ardor3d/input/ControllerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_stateQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/ardor3d/input/InputState;

    iget-object v2, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentKeyboardState:Lcom/ardor3d/input/KeyboardState;

    iget-object v5, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentMouseState:Lcom/ardor3d/input/MouseState;

    iget-object v6, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentControllerState:Lcom/ardor3d/input/ControllerState;

    invoke-direct {v1, v2, v5, v6}, Lcom/ardor3d/input/InputState;-><init>(Lcom/ardor3d/input/KeyboardState;Lcom/ardor3d/input/MouseState;Lcom/ardor3d/input/ControllerState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentKeyboardState:Lcom/ardor3d/input/KeyboardState;

    iget-object v1, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentMouseState:Lcom/ardor3d/input/MouseState;

    iget-object v2, p0, Lcom/ardor3d/input/PhysicalLayer;->_currentControllerState:Lcom/ardor3d/input/ControllerState;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_2

    sget-object v0, Lcom/ardor3d/input/PhysicalLayer;->logger:Ljava/util/logging/Logger;

    const-string v1, "Spent too long collecting input data, this is probably an input system bug"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/ardor3d/input/PhysicalLayer;->_focusWrapper:Lcom/ardor3d/input/FocusWrapper;

    invoke-interface {v0}, Lcom/ardor3d/input/FocusWrapper;->getAndClearFocusLost()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/ardor3d/input/PhysicalLayer;->lostFocus()V

    :cond_4
    return-void
.end method
