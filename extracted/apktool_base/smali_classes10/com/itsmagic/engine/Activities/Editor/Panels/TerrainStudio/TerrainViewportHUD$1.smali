.class Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$1;
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

    .line 74
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$1;->this$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 77
    const/4 p1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 78
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$1;->this$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->access$000(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    move-result-object p2

    int-to-float p3, p1

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->setBrushRadius(F)V

    .line 79
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$1;->this$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->access$100(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;)Landroid/widget/TextView;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Size: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "m"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 81
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 82
    return-void
.end method
