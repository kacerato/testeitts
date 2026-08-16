.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;
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
    name = "FoliageInstance"
.end annotation


# instance fields
.field public posX:F

.field public posY:F

.field public posZ:F

.field public prototypeIndex:I

.field public rotY:F

.field public scale:F


# direct methods
.method public constructor <init>(FFFFFI)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;->posX:F

    .line 48
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;->posY:F

    .line 49
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;->posZ:F

    .line 50
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;->rotY:F

    .line 51
    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;->scale:F

    .line 52
    iput p6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;->prototypeIndex:I

    .line 53
    return-void
.end method
