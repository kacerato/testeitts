.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$a;
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
.field public final synthetic b:Lv9/d;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;Lv9/d;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$chunk",
            "val$terrain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$a;->b:Lv9/d;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;Z)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$a;->b:Lv9/d;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v0, v1}, Lv9/d;->f0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method
