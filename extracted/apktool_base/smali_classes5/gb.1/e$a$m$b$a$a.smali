.class public Lgb/e$a$m$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/e$a$m$b$a;->a(LZ6/g;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LZ6/g;

.field public final synthetic c:Lgb/e$a$m$b$a;


# direct methods
.method public constructor <init>(Lgb/e$a$m$b$a;LZ6/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$m$b$a$a;->c:Lgb/e$a$m$b$a;

    iput-object p2, p0, Lgb/e$a$m$b$a$a;->b:LZ6/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    filled-new-array {v0}, [I

    move-result-object v8

    filled-new-array {v0}, [I

    move-result-object v7

    filled-new-array {v0}, [I

    move-result-object v1

    filled-new-array {v0}, [I

    move-result-object v2

    new-instance v3, Lgb/e$a$m$b$a$a$a;

    invoke-direct {v3, p0, v8, v1, v2}, Lgb/e$a$m$b$a$a$a;-><init>(Lgb/e$a$m$b$a$a;[I[I[I)V

    iget-object v4, p0, Lgb/e$a$m$b$a$a;->c:Lgb/e$a$m$b$a;

    iget-object v4, v4, Lgb/e$a$m$b$a;->a:Lgb/e$a$m$b;

    iget-object v4, v4, Lgb/e$a$m$b;->a:Lgb/e$a$m;

    iget-object v4, v4, Lgb/e$a$m;->b:Lgb/e$a;

    iget-object v4, v4, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-instance v9, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    aget v1, v1, v0

    invoke-direct {v9, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v10, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    aget v1, v2, v0

    invoke-direct {v10, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    invoke-virtual {v9, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    invoke-virtual {v10, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    filled-new-array {v0}, [I

    move-result-object v5

    iget-object v1, p0, Lgb/e$a$m$b$a$a;->c:Lgb/e$a$m$b$a;

    iget-object v1, v1, Lgb/e$a$m$b$a;->a:Lgb/e$a$m$b;

    iget-object v1, v1, Lgb/e$a$m$b;->a:Lgb/e$a$m;

    iget-object v1, v1, Lgb/e$a$m;->b:Lgb/e$a;

    iget-object v1, v1, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lib/g;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->E()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v11, Lgb/e$a$m$b$a$a$b;

    move-object v1, v11

    move-object v2, p0

    move-object v4, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v8}, Lgb/e$a$m$b$a$a$b;-><init>(Lgb/e$a$m$b$a$a;Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;[ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;[I[I)V

    iget-object v1, p0, Lgb/e$a$m$b$a$a;->c:Lgb/e$a$m$b$a;

    iget-object v1, v1, Lgb/e$a$m$b$a;->a:Lgb/e$a$m$b;

    iget-object v1, v1, Lgb/e$a$m$b;->a:Lgb/e$a$m;

    iget-object v1, v1, Lgb/e$a$m;->b:Lgb/e$a;

    iget-object v1, v1, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v11, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v1, v10}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LLb/k;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Bakes/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lgb/e$a$m$b$a$a;->c:Lgb/e$a$m$b$a;

    iget-object v3, v3, Lgb/e$a$m$b$a;->a:Lgb/e$a$m$b;

    iget-object v3, v3, Lgb/e$a$m$b;->a:Lgb/e$a$m;

    iget-object v3, v3, Lgb/e$a$m;->b:Lgb/e$a;

    iget-object v3, v3, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_compound_collision"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mesh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->m(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->p(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)Z

    iget-object v0, p0, Lgb/e$a$m$b$a$a;->c:Lgb/e$a$m$b$a;

    iget-object v0, v0, Lgb/e$a$m$b$a;->a:Lgb/e$a$m$b;

    iget-object v0, v0, Lgb/e$a$m$b;->a:Lgb/e$a$m;

    iget-object v0, v0, Lgb/e$a$m;->b:Lgb/e$a;

    iget-object v0, v0, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lib/g;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>()V

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l3(Z)V

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c3(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgb/e$a$m$b$a$a;->c:Lgb/e$a$m$b$a;

    iget-object v3, v3, Lgb/e$a$m$b$a;->a:Lgb/e$a$m$b;

    iget-object v3, v3, Lgb/e$a$m$b;->a:Lgb/e$a$m;

    iget-object v3, v3, Lgb/e$a$m;->b:Lgb/e$a;

    iget-object v3, v3, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_collision"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->E1(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->N3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-direct {v0, v3, v2, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object v0, p0, Lgb/e$a$m$b$a$a;->c:Lgb/e$a$m$b$a;

    iget-object v0, v0, Lgb/e$a$m$b$a;->a:Lgb/e$a$m$b;

    iget-object v0, v0, Lgb/e$a$m$b;->a:Lgb/e$a$m;

    iget-object v0, v0, Lgb/e$a$m;->b:Lgb/e$a;

    iget-object v0, v0, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/World/b;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lgb/e$a$m$b$a$a;->b:LZ6/g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lw5/i;

    invoke-direct {v1, v0}, Lw5/i;-><init>(LZ6/g;)V

    :goto_0
    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lgb/e$a$m$b$a$a;->b:LZ6/g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lw5/i;

    invoke-direct {v1, v0}, Lw5/i;-><init>(LZ6/g;)V

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lgb/e$a$m$b$a$a;->b:LZ6/g;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lw5/i;

    invoke-direct {v2, v1}, Lw5/i;-><init>(LZ6/g;)V

    invoke-static {v2}, LN7/c;->j0(Ljava/lang/Runnable;)V

    throw v0
.end method
