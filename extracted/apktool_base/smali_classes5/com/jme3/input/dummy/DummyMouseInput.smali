.class public Lcom/jme3/input/dummy/DummyMouseInput;
.super Lcom/jme3/input/dummy/DummyInput;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/MouseInput;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/input/dummy/DummyInput;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCursorVisible(Z)V
    .locals 1

    iget-boolean p1, p0, Lcom/jme3/input/dummy/DummyInput;->inited:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Input not initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNativeCursor(Lcom/jme3/cursors/plugins/JmeCursor;)V
    .locals 0

    return-void
.end method
