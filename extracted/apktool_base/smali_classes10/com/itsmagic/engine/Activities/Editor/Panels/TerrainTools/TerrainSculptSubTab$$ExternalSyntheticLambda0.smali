.class public final synthetic Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;

.field public final synthetic f$1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

.field public final synthetic f$2:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;Landroid/widget/Button;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda0;->f$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda0;->f$1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda0;->f$2:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda0;->f$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda0;->f$1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda0;->f$2:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->lambda$createToolButton$0$com-itsmagic-engine-Activities-Editor-Panels-TerrainTools-TerrainSculptSubTab(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method
