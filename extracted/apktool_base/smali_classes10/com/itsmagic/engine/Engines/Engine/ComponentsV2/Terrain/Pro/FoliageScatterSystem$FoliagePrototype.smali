.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;
.super Ljava/lang/Object;
.source "FoliageScatterSystem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FoliagePrototype"
.end annotation


# instance fields
.field public alignToNormal:Z

.field public billboardDistance:F

.field public densityPer100m:F

.field public generateCollisionCapsule:Z

.field public isGrass:Z

.field public maxAltitude:F

.field public maxCullDistance:F

.field public maxScale:F

.field public maxSlope:F

.field public minAltitude:F

.field public minScale:F

.field public minSlope:F

.field public modelPath:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "Tree"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->name:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->modelPath:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->isGrass:Z

    .line 18
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->minScale:F

    .line 19
    const v1, 0x3f99999a    # 1.2f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->maxScale:F

    .line 20
    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->minSlope:F

    .line 21
    const/high16 v2, 0x41f00000    # 30.0f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->maxSlope:F

    .line 22
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->minAltitude:F

    .line 23
    const/high16 v1, 0x43960000    # 300.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->maxAltitude:F

    .line 24
    const/high16 v1, 0x41c80000    # 25.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->densityPer100m:F

    .line 25
    const/high16 v1, 0x43160000    # 150.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->maxCullDistance:F

    .line 26
    const/high16 v1, 0x42700000    # 60.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->billboardDistance:F

    .line 27
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->alignToNormal:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->generateCollisionCapsule:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "Tree"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->name:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->modelPath:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->isGrass:Z

    .line 18
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->minScale:F

    .line 19
    const v1, 0x3f99999a    # 1.2f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->maxScale:F

    .line 20
    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->minSlope:F

    .line 21
    const/high16 v2, 0x41f00000    # 30.0f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->maxSlope:F

    .line 22
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->minAltitude:F

    .line 23
    const/high16 v1, 0x43960000    # 300.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->maxAltitude:F

    .line 24
    const/high16 v1, 0x41c80000    # 25.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->densityPer100m:F

    .line 25
    const/high16 v1, 0x43160000    # 150.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->maxCullDistance:F

    .line 26
    const/high16 v1, 0x42700000    # 60.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->billboardDistance:F

    .line 27
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->alignToNormal:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->generateCollisionCapsule:Z

    .line 34
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->name:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->modelPath:Ljava/lang/String;

    .line 36
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->isGrass:Z

    .line 37
    return-void
.end method
