.class public final Lcom/ardor3d/input/logical/TwoInputStates;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _current:Lcom/ardor3d/input/InputState;

.field private final _previous:Lcom/ardor3d/input/InputState;


# direct methods
.method public constructor <init>(Lcom/ardor3d/input/InputState;Lcom/ardor3d/input/InputState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "previous"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/input/InputState;

    iput-object p1, p0, Lcom/ardor3d/input/logical/TwoInputStates;->_previous:Lcom/ardor3d/input/InputState;

    const-string p1, "current"

    invoke-static {p2, p1}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/input/InputState;

    iput-object p1, p0, Lcom/ardor3d/input/logical/TwoInputStates;->_current:Lcom/ardor3d/input/InputState;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/input/logical/TwoInputStates;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/input/logical/TwoInputStates;

    iget-object v1, p0, Lcom/ardor3d/input/logical/TwoInputStates;->_previous:Lcom/ardor3d/input/InputState;

    iget-object v3, p1, Lcom/ardor3d/input/logical/TwoInputStates;->_previous:Lcom/ardor3d/input/InputState;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/ardor3d/input/logical/TwoInputStates;->_current:Lcom/ardor3d/input/InputState;

    iget-object p1, p1, Lcom/ardor3d/input/logical/TwoInputStates;->_current:Lcom/ardor3d/input/InputState;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCurrent()Lcom/ardor3d/input/InputState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/logical/TwoInputStates;->_current:Lcom/ardor3d/input/InputState;

    return-object v0
.end method

.method public getPrevious()Lcom/ardor3d/input/InputState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/logical/TwoInputStates;->_previous:Lcom/ardor3d/input/InputState;

    return-object v0
.end method
