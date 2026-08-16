.class Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$2;
.super Ljava/lang/Object;
.source "TerrainViewportHUD.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->buildHUD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;


# direct methods
.method constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$2;->this$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 100
    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    const p2, 0x3c23d70a    # 0.01f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 101
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$2;->this$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->access$000(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->setBrushStrength(F)V

    .line 102
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$2;->this$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->access$200(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;)Landroid/widget/TextView;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Strength: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%.2f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 104
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 105
    return-void
.end method
