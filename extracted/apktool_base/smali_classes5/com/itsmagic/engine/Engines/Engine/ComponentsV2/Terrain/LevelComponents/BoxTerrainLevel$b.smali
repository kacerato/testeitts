.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalMatrix"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->G:I

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x4([FI)I

    move-result v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->G:I

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->access$200()V

    return-void
.end method
