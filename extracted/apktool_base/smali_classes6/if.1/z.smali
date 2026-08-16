.class public abstract Lif/z;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jme3/scene/control/AbstractControl;->setEnabled(Z)V

    return-void
.end method

.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 1

    const-string v0, "render manager"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string p1, "viewport"

    invoke-static {p2, p1}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-boolean p1, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "should be enabled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public controlUpdate(F)V
    .locals 1

    const-string v0, "interval"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    iget-boolean p1, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "should be enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    return v0
.end method
