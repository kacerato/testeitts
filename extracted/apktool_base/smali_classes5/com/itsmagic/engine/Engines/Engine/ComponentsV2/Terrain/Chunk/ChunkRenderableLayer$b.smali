.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->B(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;[FLv9/d;ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lv9/d;

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

.field public final synthetic f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;IILv9/d;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
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
            "val$tw",
            "val$th",
            "val$chunk",
            "val$terrain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->b:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->c:I

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->d:Lv9/d;

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)Lx9/a;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)Lx9/a;

    move-result-object v3

    invoke-virtual {v3}, Lx9/a;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v2

    move v3, v1

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v3

    :goto_1
    move-wide v5, v3

    goto :goto_2

    :cond_1
    const-wide/16 v3, 0x0

    goto :goto_1

    :goto_2
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)Lx9/a;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)Lx9/a;

    move-result-object v3

    invoke-virtual {v3}, Lx9/a;->f()I

    move-result v3

    move v7, v3

    goto :goto_3

    :cond_2
    move v7, v1

    :goto_3
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)I

    move-result v8

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)I

    move-result v9

    iget v10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->b:I

    iget v11, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->c:I

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getPointerCritical()J

    move-result-wide v12

    invoke-static/range {v5 .. v13}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->i(JIIIIIJ)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->l(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;Z)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;Z)Z

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->d()Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->d()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->d:Lv9/d;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v0, v1}, Lv9/d;->f0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v2

    :goto_4
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->l(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;Z)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;Z)Z

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->d()Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_4
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->d()Ljava/util/Set;

    move-result-object v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->d:Lv9/d;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v0, v1}, Lv9/d;->f0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    throw v2

    :catchall_3
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1
.end method
