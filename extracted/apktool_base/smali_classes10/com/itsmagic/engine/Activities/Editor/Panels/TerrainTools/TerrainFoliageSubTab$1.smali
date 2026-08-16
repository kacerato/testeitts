.class Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab$1;
.super Ljava/lang/Object;
.source "TerrainFoliageSubTab.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab;->buildUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab;

.field final synthetic val$txtWind:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab$1;->this$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab$1;->val$txtWind:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 81
    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 82
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab$1;->this$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab;->access$000(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->setWindStrength(F)V

    .line 83
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab$1;->val$txtWind:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "Wind Strength: %.2f"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 85
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 86
    return-void
.end method
