.class public final synthetic Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;

.field public final synthetic f$1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda1;->f$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda1;->f$1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda1;->f$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda1;->f$1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->lambda$createCurveButton$1$com-itsmagic-engine-Activities-Editor-Panels-TerrainTools-TerrainSculptSubTab(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;Landroid/view/View;)V

    return-void
.end method
