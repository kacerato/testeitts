.class public LJAVARuntime/Camera$InternalFiltering;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalFiltering"
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Camera;


# direct methods
.method public constructor <init>(LJAVARuntime/Camera;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Camera$InternalFiltering;->this$0:LJAVARuntime/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public overrideAmbientLight()LJAVARuntime/Color;
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera$InternalFiltering;->this$0:LJAVARuntime/Camera;

    iget-object v0, v0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->overrideAmbientLight()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public renderFog()Z
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera$InternalFiltering;->this$0:LJAVARuntime/Camera;

    iget-object v0, v0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderFog()Z

    move-result v0

    return v0
.end method

.method public renderGizmos()Z
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera$InternalFiltering;->this$0:LJAVARuntime/Camera;

    iget-object v0, v0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderGizmos()Z

    move-result v0

    return v0
.end method

.method public renderPostProcessing()Z
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera$InternalFiltering;->this$0:LJAVARuntime/Camera;

    iget-object v0, v0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->allowPostProcessing()Z

    move-result v0

    return v0
.end method
