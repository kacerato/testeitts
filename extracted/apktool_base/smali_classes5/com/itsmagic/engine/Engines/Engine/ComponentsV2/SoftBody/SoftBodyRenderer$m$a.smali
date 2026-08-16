.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->d:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
