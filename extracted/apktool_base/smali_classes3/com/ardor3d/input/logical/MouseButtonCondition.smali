.class public final Lcom/ardor3d/input/logical/MouseButtonCondition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/I;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/I<",
        "Lcom/ardor3d/input/logical/TwoInputStates;",
        ">;"
    }
.end annotation


# instance fields
.field private final _states:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/input/MouseButton;",
            "Lcom/ardor3d/input/ButtonState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ardor3d/input/ButtonState;Lcom/ardor3d/input/ButtonState;Lcom/ardor3d/input/ButtonState;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-class v0, Lcom/ardor3d/input/MouseButton;

    invoke-static {v0}, Lcom/google/common/collect/Q1;->W(Ljava/lang/Class;)Ljava/util/EnumMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/input/logical/MouseButtonCondition;->_states:Ljava/util/EnumMap;

    .line 6
    sget-object v1, Lcom/ardor3d/input/ButtonState;->UNDEFINED:Lcom/ardor3d/input/ButtonState;

    if-eq p1, v1, :cond_0

    .line 7
    sget-object v2, Lcom/ardor3d/input/MouseButton;->LEFT:Lcom/ardor3d/input/MouseButton;

    invoke-virtual {v0, v2, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eq p1, v1, :cond_1

    .line 8
    sget-object v2, Lcom/ardor3d/input/MouseButton;->RIGHT:Lcom/ardor3d/input/MouseButton;

    invoke-virtual {v0, v2, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eq p1, v1, :cond_2

    .line 9
    sget-object p1, Lcom/ardor3d/input/MouseButton;->MIDDLE:Lcom/ardor3d/input/MouseButton;

    invoke-virtual {v0, p1, p3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/EnumMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/input/MouseButton;",
            "Lcom/ardor3d/input/ButtonState;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/ardor3d/input/MouseButton;

    invoke-static {v0}, Lcom/google/common/collect/Q1;->W(Ljava/lang/Class;)Ljava/util/EnumMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/input/logical/MouseButtonCondition;->_states:Ljava/util/EnumMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/ardor3d/input/logical/TwoInputStates;)Z
    .locals 5

    .line 2
    invoke-virtual {p1}, Lcom/ardor3d/input/logical/TwoInputStates;->getCurrent()Lcom/ardor3d/input/InputState;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/ardor3d/input/logical/MouseButtonCondition;->_states:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/input/MouseButton;

    .line 4
    iget-object v3, p0, Lcom/ardor3d/input/logical/MouseButtonCondition;->_states:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/input/ButtonState;

    .line 5
    sget-object v4, Lcom/ardor3d/input/ButtonState;->UNDEFINED:Lcom/ardor3d/input/ButtonState;

    if-eq v3, v4, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/ardor3d/input/InputState;->getMouseState()Lcom/ardor3d/input/MouseState;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ardor3d/input/MouseState;->getButtonState(Lcom/ardor3d/input/MouseButton;)Lcom/ardor3d/input/ButtonState;

    move-result-object v2

    if-eq v2, v3, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/input/logical/TwoInputStates;

    invoke-virtual {p0, p1}, Lcom/ardor3d/input/logical/MouseButtonCondition;->apply(Lcom/ardor3d/input/logical/TwoInputStates;)Z

    move-result p1

    return p1
.end method
