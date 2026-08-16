.class LJAVARuntime/Vertex$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/AsyncRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Vertex;->traceLaserAsync(LJAVARuntime/Transform;LJAVARuntime/Ray;LJAVARuntime/AsyncLaserListener;LJAVARuntime/Vertex$RayMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Vertex;

.field final synthetic val$asyncLaserListener:LJAVARuntime/AsyncLaserListener;

.field final synthetic val$ray:LJAVARuntime/Ray;

.field final synthetic val$rayMode:LJAVARuntime/Vertex$RayMode;

.field final synthetic val$transform:LJAVARuntime/Transform;


# direct methods
.method public constructor <init>(LJAVARuntime/Vertex;LJAVARuntime/Transform;LJAVARuntime/Ray;LJAVARuntime/Vertex$RayMode;LJAVARuntime/AsyncLaserListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$transform",
            "val$ray",
            "val$rayMode",
            "val$asyncLaserListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Vertex$25;->this$0:LJAVARuntime/Vertex;

    iput-object p2, p0, LJAVARuntime/Vertex$25;->val$transform:LJAVARuntime/Transform;

    iput-object p3, p0, LJAVARuntime/Vertex$25;->val$ray:LJAVARuntime/Ray;

    iput-object p4, p0, LJAVARuntime/Vertex$25;->val$rayMode:LJAVARuntime/Vertex$RayMode;

    iput-object p5, p0, LJAVARuntime/Vertex$25;->val$asyncLaserListener:LJAVARuntime/AsyncLaserListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    iget-object p1, p0, LJAVARuntime/Vertex$25;->this$0:LJAVARuntime/Vertex;

    iget-object p1, p1, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v0, p0, LJAVARuntime/Vertex$25;->val$transform:LJAVARuntime/Transform;

    iget-object v0, v0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, LJAVARuntime/Vertex$25;->val$ray:LJAVARuntime/Ray;

    iget-object v1, v1, LJAVARuntime/Ray;->ray:Laa/c;

    iget-object v2, p0, LJAVARuntime/Vertex$25;->val$rayMode:LJAVARuntime/Vertex$RayMode;

    invoke-virtual {p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->D2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Laa/c;LJAVARuntime/Vertex$RayMode;)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Laa/a;->E()LJAVARuntime/LaserHit;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onEngine(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Vertex$25;->val$asyncLaserListener:LJAVARuntime/AsyncLaserListener;

    check-cast p1, LJAVARuntime/LaserHit;

    invoke-interface {v0, p1}, LJAVARuntime/AsyncLaserListener;->onFinish(LJAVARuntime/LaserHit;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Vertex$25;->val$asyncLaserListener:LJAVARuntime/AsyncLaserListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, LJAVARuntime/AsyncLaserListener;->onFinish(LJAVARuntime/LaserHit;)V

    :goto_0
    return-void
.end method
