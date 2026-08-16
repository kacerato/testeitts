.class public Lcom/jme3/input/dummy/DummyKeyInput;
.super Lcom/jme3/input/dummy/DummyInput;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/KeyInput;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/input/dummy/DummyInput;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyCount()I
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/input/dummy/DummyInput;->inited:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Input not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyName(I)Ljava/lang/String;
    .locals 0

    const-string p1, "Unknown"

    return-object p1
.end method
