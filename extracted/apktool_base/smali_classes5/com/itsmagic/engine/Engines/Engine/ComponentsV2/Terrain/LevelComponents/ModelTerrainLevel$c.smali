.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hierarchyMatrix"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;Z)Z

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->access$200()V

    return-void
.end method
