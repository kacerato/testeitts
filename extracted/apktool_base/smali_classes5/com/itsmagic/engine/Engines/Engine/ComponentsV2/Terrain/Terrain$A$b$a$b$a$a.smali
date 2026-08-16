.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a;->onSelected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$5",
            "val$file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a$a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->selectedMatcap:Ljava/lang/String;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer$a;->PBRPreset:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer$a;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->source:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer$a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$V;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$V;->a()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
