.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;->lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FFF)V
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
            "val$targetGameObject",
            "val$x",
            "val$finalBestY",
            "val$z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$c;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$c;->c:F

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$c;->d:F

    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$c;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lt6/j;->J1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StickToTerrain - set global position"

    invoke-static {v0}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isGarbage()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$c;->c:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$c;->d:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$c;->e:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g3(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    return-void

    :goto_2
    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    throw v1
.end method
