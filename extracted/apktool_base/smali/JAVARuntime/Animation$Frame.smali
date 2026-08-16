.class public final LJAVARuntime/Animation$Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Frame"
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .annotation runtime LH6/g;
    .end annotation
.end field

.field final synthetic this$0:LJAVARuntime/Animation;


# direct methods
.method public constructor <init>(LJAVARuntime/Animation;)V
    .locals 0
    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 3
    iput-object p1, p0, LJAVARuntime/Animation$Frame;->this$0:LJAVARuntime/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;-><init>()V

    iput-object p1, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Animation;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "frame"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "instance"
        }
    .end annotation

    .line 1
    iput-object p1, p0, LJAVARuntime/Animation$Frame;->this$0:LJAVARuntime/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    return-void
.end method


# virtual methods
.method public getColorValue()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->e()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->e()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->h()F

    move-result v0

    return v0
.end method

.method public getFrameTime()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current frame time."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tempo do frame atual."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v0

    return v0
.end method

.method public getImageValue()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->k()I

    move-result v0

    return v0
.end method

.method public getQuatValue()LJAVARuntime/Quaternion;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->l()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->l()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getVec2Value()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->n()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->n()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getVec3Value()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->o()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->o()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public setColorValue(LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->u(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public setFloatValue(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->w(F)V

    return-void
.end method

.method public setFrameTime(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the current frame time."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o tempo do frame atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "frameTime"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->x(I)V

    return-void
.end method

.method public setImageValue(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->y(Ljava/lang/String;)V

    return-void
.end method

.method public setIntValue(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->z(I)V

    return-void
.end method

.method public setQuatValue(LJAVARuntime/Quaternion;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->B(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void
.end method

.method public setVec2Value(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->D(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public setVec3Value(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method
