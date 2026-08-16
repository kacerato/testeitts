.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->layerDataFor(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Lx9/a;

    move-result-object v3

    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v5

    if-ge v4, v5, :cond_1

    move v5, v1

    :goto_2
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, LNc/d;->h(FF)F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lx9/a;->h(IIF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$y;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
