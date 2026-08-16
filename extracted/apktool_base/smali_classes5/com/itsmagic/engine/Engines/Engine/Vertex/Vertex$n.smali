.class public Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C2(Laa/c;LJAVARuntime/Vertex$RayMode;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Laa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->r(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->H(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;)Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
