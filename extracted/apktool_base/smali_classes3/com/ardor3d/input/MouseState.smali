.class public Lcom/ardor3d/input/MouseState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CLICK_TIME_MS:J

.field public static final NOTHING:Lcom/ardor3d/input/MouseState;


# instance fields
.field private final _buttonStates:Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i1<",
            "Lcom/ardor3d/input/MouseButton;",
            "Lcom/ardor3d/input/ButtonState;",
            ">;"
        }
    .end annotation
.end field

.field private final _clickCounts:Lcom/google/common/collect/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/n1<",
            "Lcom/ardor3d/input/MouseButton;",
            ">;"
        }
    .end annotation
.end field

.field private final _dwheel:I

.field private final _dx:I

.field private final _dy:I

.field private final _x:I

.field private final _y:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Lcom/ardor3d/input/MouseState;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/ardor3d/input/MouseState;-><init>(IIIIILjava/util/EnumMap;Lcom/google/common/collect/V1;)V

    sput-object v8, Lcom/ardor3d/input/MouseState;->NOTHING:Lcom/ardor3d/input/MouseState;

    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/ardor3d/input/MouseState;->CLICK_TIME_MS:J

    return-void
.end method

.method public constructor <init>(IIIIILjava/util/EnumMap;Lcom/google/common/collect/V1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/input/MouseButton;",
            "Lcom/ardor3d/input/ButtonState;",
            ">;",
            "Lcom/google/common/collect/V1<",
            "Lcom/ardor3d/input/MouseButton;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ardor3d/input/MouseState;->_x:I

    iput p2, p0, Lcom/ardor3d/input/MouseState;->_y:I

    iput p3, p0, Lcom/ardor3d/input/MouseState;->_dx:I

    iput p4, p0, Lcom/ardor3d/input/MouseState;->_dy:I

    iput p5, p0, Lcom/ardor3d/input/MouseState;->_dwheel:I

    if-eqz p6, :cond_0

    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/google/common/collect/i1$b;->l(Ljava/util/Map;)Lcom/google/common/collect/i1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/i1$b;->a()Lcom/google/common/collect/i1;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/input/MouseState;->_buttonStates:Lcom/google/common/collect/i1;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/i1;->y()Lcom/google/common/collect/i1;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/input/MouseState;->_buttonStates:Lcom/google/common/collect/i1;

    :goto_0
    if-eqz p7, :cond_1

    invoke-static {}, Lcom/google/common/collect/n1;->k()Lcom/google/common/collect/n1$b;

    move-result-object p1

    invoke-virtual {p1, p7}, Lcom/google/common/collect/n1$b;->i(Ljava/lang/Iterable;)Lcom/google/common/collect/n1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/n1$b;->l()Lcom/google/common/collect/n1;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/input/MouseState;->_clickCounts:Lcom/google/common/collect/n1;

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/common/collect/n1;->x()Lcom/google/common/collect/n1;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/input/MouseState;->_clickCounts:Lcom/google/common/collect/n1;

    :goto_1
    return-void
.end method


# virtual methods
.method public getButtonState(Lcom/ardor3d/input/MouseButton;)Lcom/ardor3d/input/ButtonState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/MouseState;->_buttonStates:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/input/MouseState;->_buttonStates:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/input/ButtonState;

    return-object p1

    :cond_0
    sget-object p1, Lcom/ardor3d/input/ButtonState;->UP:Lcom/ardor3d/input/ButtonState;

    return-object p1
.end method

.method public getButtonStates()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/input/MouseButton;",
            "Lcom/ardor3d/input/ButtonState;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/ardor3d/input/MouseState;->getButtonStates(Ljava/util/EnumMap;)Ljava/util/EnumMap;

    move-result-object v0

    return-object v0
.end method

.method public getButtonStates(Ljava/util/EnumMap;)Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/input/MouseButton;",
            "Lcom/ardor3d/input/ButtonState;",
            ">;)",
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/input/MouseButton;",
            "Lcom/ardor3d/input/ButtonState;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    const-class p1, Lcom/ardor3d/input/MouseButton;

    invoke-static {p1}, Lcom/google/common/collect/Q1;->W(Ljava/lang/Class;)Ljava/util/EnumMap;

    move-result-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/util/EnumMap;->clear()V

    .line 4
    iget-object v0, p0, Lcom/ardor3d/input/MouseState;->_buttonStates:Lcom/google/common/collect/i1;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    return-object p1
.end method

.method public getButtonsClicked()Ljava/util/EnumSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/input/MouseButton;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/ardor3d/input/MouseButton;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/input/MouseButton;->values()[Lcom/ardor3d/input/MouseButton;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/ardor3d/input/MouseState;->getClickCount(Lcom/ardor3d/input/MouseButton;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getButtonsPressedSince(Lcom/ardor3d/input/MouseState;)Ljava/util/EnumSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/input/MouseState;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/input/MouseButton;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/ardor3d/input/MouseButton;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/input/MouseButton;->values()[Lcom/ardor3d/input/MouseButton;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/ardor3d/input/MouseState;->getButtonState(Lcom/ardor3d/input/MouseButton;)Lcom/ardor3d/input/ButtonState;

    move-result-object v5

    sget-object v6, Lcom/ardor3d/input/ButtonState;->DOWN:Lcom/ardor3d/input/ButtonState;

    if-ne v5, v6, :cond_0

    invoke-virtual {p1, v4}, Lcom/ardor3d/input/MouseState;->getButtonState(Lcom/ardor3d/input/MouseButton;)Lcom/ardor3d/input/ButtonState;

    move-result-object v5

    if-eq v5, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getButtonsReleasedSince(Lcom/ardor3d/input/MouseState;)Ljava/util/EnumSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/input/MouseState;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/input/MouseButton;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/ardor3d/input/MouseButton;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/input/MouseButton;->values()[Lcom/ardor3d/input/MouseButton;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Lcom/ardor3d/input/MouseState;->getButtonState(Lcom/ardor3d/input/MouseButton;)Lcom/ardor3d/input/ButtonState;

    move-result-object v5

    sget-object v6, Lcom/ardor3d/input/ButtonState;->DOWN:Lcom/ardor3d/input/ButtonState;

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, v4}, Lcom/ardor3d/input/MouseState;->getButtonState(Lcom/ardor3d/input/MouseButton;)Lcom/ardor3d/input/ButtonState;

    move-result-object v5

    if-eq v5, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getClickCount(Lcom/ardor3d/input/MouseButton;)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/MouseState;->_clickCounts:Lcom/google/common/collect/n1;

    invoke-interface {v0, p1}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getClickCounts()Lcom/google/common/collect/V1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1<",
            "Lcom/ardor3d/input/MouseButton;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ardor3d/input/MouseState;->_clickCounts:Lcom/google/common/collect/n1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcom/ardor3d/input/MouseButton;

    invoke-static {v0}, Lcom/google/common/collect/d0;->n(Ljava/lang/Class;)Lcom/google/common/collect/d0;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/input/MouseState;->_clickCounts:Lcom/google/common/collect/n1;

    invoke-static {v0}, Lcom/google/common/collect/d0;->o(Ljava/lang/Iterable;)Lcom/google/common/collect/d0;

    move-result-object v0

    return-object v0
.end method

.method public getClickCounts(Lcom/google/common/collect/d0;)Lcom/google/common/collect/V1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/d0<",
            "Lcom/ardor3d/input/MouseButton;",
            ">;)",
            "Lcom/google/common/collect/V1<",
            "Lcom/ardor3d/input/MouseButton;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ardor3d/input/MouseState;->_clickCounts:Lcom/google/common/collect/n1;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    const-class p1, Lcom/ardor3d/input/MouseButton;

    invoke-static {p1}, Lcom/google/common/collect/d0;->n(Ljava/lang/Class;)Lcom/google/common/collect/d0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ardor3d/input/MouseState;->_clickCounts:Lcom/google/common/collect/n1;

    invoke-static {p1}, Lcom/google/common/collect/d0;->o(Ljava/lang/Iterable;)Lcom/google/common/collect/d0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/d0;->clear()V

    .line 8
    iget-object v0, p0, Lcom/ardor3d/input/MouseState;->_clickCounts:Lcom/google/common/collect/n1;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/i;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public getDwheel()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/input/MouseState;->_dwheel:I

    return v0
.end method

.method public getDx()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/input/MouseState;->_dx:I

    return v0
.end method

.method public getDy()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/input/MouseState;->_dy:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/input/MouseState;->_x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/input/MouseState;->_y:I

    return v0
.end method

.method public hasButtonState(Lcom/ardor3d/input/ButtonState;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/input/MouseState;->_buttonStates:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasButtonState(Lcom/ardor3d/input/MouseButton;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ardor3d/input/MouseState;->_buttonStates:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MouseState{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ardor3d/input/MouseState;->_x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ardor3d/input/MouseState;->_y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ardor3d/input/MouseState;->_dx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ardor3d/input/MouseState;->_dy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dwheel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ardor3d/input/MouseState;->_dwheel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buttonStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/input/MouseState;->_buttonStates:Lcom/google/common/collect/i1;

    invoke-virtual {v1}, Lcom/google/common/collect/i1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clickCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/input/MouseState;->_clickCounts:Lcom/google/common/collect/n1;

    invoke-virtual {v1}, Lcom/google/common/collect/n1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
