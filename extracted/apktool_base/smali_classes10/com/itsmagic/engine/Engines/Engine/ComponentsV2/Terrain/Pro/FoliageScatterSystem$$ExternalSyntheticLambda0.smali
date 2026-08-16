.class public final synthetic Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(FFF)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$$ExternalSyntheticLambda0;->f$0:F

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$$ExternalSyntheticLambda0;->f$1:F

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$$ExternalSyntheticLambda0;->f$2:F

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$$ExternalSyntheticLambda0;->f$0:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$$ExternalSyntheticLambda0;->f$1:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$$ExternalSyntheticLambda0;->f$2:F

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;

    invoke-static {v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->lambda$eraseFoliage$0(FFFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;)Z

    move-result p1

    return p1
.end method
