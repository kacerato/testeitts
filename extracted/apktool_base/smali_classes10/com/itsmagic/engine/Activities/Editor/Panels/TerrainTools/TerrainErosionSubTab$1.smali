.class Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab$1;
.super Ljava/lang/Object;
.source "TerrainErosionSubTab.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;->buildUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;

.field final synthetic val$txtDroplets:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;Landroid/widget/TextView;)V
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

    .line 55
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab$1;->this$0:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab$1;->val$txtDroplets:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 58
    const/16 p1, 0x3e8

    mul-int/lit16 p2, p2, 0x3e8

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 59
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab$1;->val$txtDroplets:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rain Droplets (Batch): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 61
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 62
    return-void
.end method
