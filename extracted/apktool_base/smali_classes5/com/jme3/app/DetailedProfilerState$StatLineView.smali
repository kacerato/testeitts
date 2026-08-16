.class Lcom/jme3/app/DetailedProfilerState$StatLineView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/app/DetailedProfilerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatLineView"
.end annotation


# instance fields
.field checkBox:Lcom/jme3/font/BitmapText;

.field children:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/jme3/app/DetailedProfilerState$StatLineView;",
            ">;"
        }
    .end annotation
.end field

.field cpuText:Lcom/jme3/font/BitmapText;

.field cpuValue:D

.field private expended:Z

.field gpuText:Lcom/jme3/font/BitmapText;

.field gpuValue:D

.field label:Lcom/jme3/font/BitmapText;

.field private selected:Z

.field text:Ljava/lang/String;

.field final synthetic this$0:Lcom/jme3/app/DetailedProfilerState;

.field private visible:Z


# direct methods
.method public constructor <init>(Lcom/jme3/app/DetailedProfilerState;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->expended:Z

    iput-boolean v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->visible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->selected:Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->children:Ljava/util/Set;

    iput-object p2, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->text:Ljava/lang/String;

    new-instance v0, Lcom/jme3/font/BitmapText;

    invoke-static {p1}, Lcom/jme3/app/DetailedProfilerState;->access$100(Lcom/jme3/app/DetailedProfilerState;)Lcom/jme3/font/BitmapFont;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    iput-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->label:Lcom/jme3/font/BitmapText;

    new-instance v0, Lcom/jme3/font/BitmapText;

    invoke-static {p1}, Lcom/jme3/app/DetailedProfilerState;->access$100(Lcom/jme3/app/DetailedProfilerState;)Lcom/jme3/font/BitmapFont;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    iput-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->checkBox:Lcom/jme3/font/BitmapText;

    const-string v1, "O"

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->label:Lcom/jme3/font/BitmapText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    new-instance p2, Lcom/jme3/font/BitmapText;

    invoke-static {p1}, Lcom/jme3/app/DetailedProfilerState;->access$100(Lcom/jme3/app/DetailedProfilerState;)Lcom/jme3/font/BitmapFont;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    iput-object p2, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuText:Lcom/jme3/font/BitmapText;

    new-instance p2, Lcom/jme3/font/BitmapText;

    invoke-static {p1}, Lcom/jme3/app/DetailedProfilerState;->access$100(Lcom/jme3/app/DetailedProfilerState;)Lcom/jme3/font/BitmapFont;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    iput-object p2, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuText:Lcom/jme3/font/BitmapText;

    return-void
.end method


# virtual methods
.method public attachTo(Lcom/jme3/scene/Node;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->label:Lcom/jme3/font/BitmapText;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuText:Lcom/jme3/font/BitmapText;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuText:Lcom/jme3/font/BitmapText;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->checkBox:Lcom/jme3/font/BitmapText;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public layout(I)V
    .locals 11

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuText:Lcom/jme3/font/BitmapText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-static {v2}, Lcom/jme3/app/DetailedProfilerState;->access$300(Lcom/jme3/app/DetailedProfilerState;)Ljava/text/DecimalFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    iget-wide v4, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuValue:D

    invoke-static {v3, v4, v5}, Lcom/jme3/app/DetailedProfilerState;->access$200(Lcom/jme3/app/DetailedProfilerState;D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ms /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuText:Lcom/jme3/font/BitmapText;

    iget-wide v4, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuValue:D

    invoke-static {v2}, Lcom/jme3/app/DetailedProfilerState;->access$400(Lcom/jme3/app/DetailedProfilerState;)D

    move-result-wide v6

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->children:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    iget-boolean v9, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->expended:Z

    invoke-virtual/range {v2 .. v9}, Lcom/jme3/app/DetailedProfilerState;->setColor(Lcom/jme3/font/BitmapText;DDZZ)Z

    move-result v0

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuText:Lcom/jme3/font/BitmapText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-static {v3}, Lcom/jme3/app/DetailedProfilerState;->access$300(Lcom/jme3/app/DetailedProfilerState;)Ljava/text/DecimalFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    iget-wide v5, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuValue:D

    invoke-static {v4, v5, v6}, Lcom/jme3/app/DetailedProfilerState;->access$200(Lcom/jme3/app/DetailedProfilerState;D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    iget-object v4, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuText:Lcom/jme3/font/BitmapText;

    iget-wide v5, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuValue:D

    invoke-static {v3}, Lcom/jme3/app/DetailedProfilerState;->access$500(Lcom/jme3/app/DetailedProfilerState;)D

    move-result-wide v7

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->children:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v9, v1, 0x1

    iget-boolean v10, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->expended:Z

    invoke-virtual/range {v3 .. v10}, Lcom/jme3/app/DetailedProfilerState;->setColor(Lcom/jme3/font/BitmapText;DDZZ)Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-static {v0}, Lcom/jme3/app/DetailedProfilerState;->access$600(Lcom/jme3/app/DetailedProfilerState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->setVisible(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->visible:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->selected:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->label:Lcom/jme3/font/BitmapText;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->Yellow:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapText;->setColor(Lcom/jme3/math/ColorRGBA;)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    iget-wide v1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuValue:D

    invoke-static {v0, v1, v2}, Lcom/jme3/app/DetailedProfilerState;->access$718(Lcom/jme3/app/DetailedProfilerState;D)D

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    iget-wide v1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuValue:D

    invoke-static {v0, v1, v2}, Lcom/jme3/app/DetailedProfilerState;->access$818(Lcom/jme3/app/DetailedProfilerState;D)D

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->label:Lcom/jme3/font/BitmapText;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapText;->setColor(Lcom/jme3/math/ColorRGBA;)V

    :goto_0
    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-static {v0}, Lcom/jme3/app/DetailedProfilerState;->access$900(Lcom/jme3/app/DetailedProfilerState;)I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x64

    neg-int v0, v0

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->label:Lcom/jme3/font/BitmapText;

    mul-int/lit8 v2, p1, 0xa

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-static {v1}, Lcom/jme3/app/DetailedProfilerState;->access$100(Lcom/jme3/app/DetailedProfilerState;)Lcom/jme3/font/BitmapFont;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuText:Lcom/jme3/font/BitmapText;

    invoke-virtual {v2}, Lcom/jme3/font/BitmapText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/font/BitmapFont;->getLineWidth(Ljava/lang/CharSequence;)F

    move-result v1

    const/high16 v2, 0x43c80000    # 400.0f

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-static {v1}, Lcom/jme3/app/DetailedProfilerState;->access$1000(Lcom/jme3/app/DetailedProfilerState;)I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuText:Lcom/jme3/font/BitmapText;

    iget-object v4, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-static {v4}, Lcom/jme3/app/DetailedProfilerState;->access$100(Lcom/jme3/app/DetailedProfilerState;)Lcom/jme3/font/BitmapFont;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuText:Lcom/jme3/font/BitmapText;

    invoke-virtual {v5}, Lcom/jme3/font/BitmapText;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jme3/font/BitmapFont;->getLineWidth(Ljava/lang/CharSequence;)F

    move-result v4

    sub-float v4, v2, v4

    invoke-virtual {v1, v4, v0, v3}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuText:Lcom/jme3/font/BitmapText;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->checkBox:Lcom/jme3/font/BitmapText;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2, v0, v3}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-static {v0}, Lcom/jme3/app/DetailedProfilerState;->access$908(Lcom/jme3/app/DetailedProfilerState;)I

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->children:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/app/DetailedProfilerState$StatLineView;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->layout(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onClick(Lcom/jme3/math/Vector2f;)V
    .locals 4

    iget-boolean v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->visible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->label:Lcom/jme3/font/BitmapText;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->checkBox:Lcom/jme3/font/BitmapText;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v2, p1, Lcom/jme3/math/Vector2f;->x:F

    iget v3, v1, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, p1, Lcom/jme3/math/Vector2f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    cmpg-float v3, v2, v0

    if-gez v3, :cond_3

    const/high16 v3, 0x41400000    # 12.0f

    sub-float/2addr v0, v3

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-static {v0}, Lcom/jme3/app/DetailedProfilerState;->access$100(Lcom/jme3/app/DetailedProfilerState;)Lcom/jme3/font/BitmapFont;

    move-result-object v0

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->checkBox:Lcom/jme3/font/BitmapText;

    invoke-virtual {v2}, Lcom/jme3/font/BitmapText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/font/BitmapFont;->getLineWidth(Ljava/lang/CharSequence;)F

    move-result v0

    iget p1, p1, Lcom/jme3/math/Vector2f;->x:F

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_2

    add-float/2addr v1, v0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_2

    iget-boolean p1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->selected:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->selected:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->checkBox:Lcom/jme3/font/BitmapText;

    const-string v0, "X"

    invoke-virtual {p1, v0}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->checkBox:Lcom/jme3/font/BitmapText;

    const-string v0, "O"

    invoke-virtual {p1, v0}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->expended:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->setExpended(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public removeFromParent()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->label:Lcom/jme3/font/BitmapText;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuText:Lcom/jme3/font/BitmapText;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuText:Lcom/jme3/font/BitmapText;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->checkBox:Lcom/jme3/font/BitmapText;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->children:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuValue:D

    iput-wide v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuValue:D

    return-void
.end method

.method public setExpended(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->expended:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->label:Lcom/jme3/font/BitmapText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->label:Lcom/jme3/font/BitmapText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->children:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/app/DetailedProfilerState$StatLineView;

    invoke-virtual {v1, p1}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->setVisible(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setVisible(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->visible:Z

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->label:Lcom/jme3/font/BitmapText;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuText:Lcom/jme3/font/BitmapText;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuText:Lcom/jme3/font/BitmapText;

    if-eqz p1, :cond_2

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_2
    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->checkBox:Lcom/jme3/font/BitmapText;

    if-eqz p1, :cond_3

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_3
    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->children:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/app/DetailedProfilerState$StatLineView;

    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->expended:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v1, v2}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->setVisible(Z)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->label:Lcom/jme3/font/BitmapText;

    invoke-virtual {v1}, Lcom/jme3/font/BitmapText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-static {v1}, Lcom/jme3/app/DetailedProfilerState;->access$300(Lcom/jme3/app/DetailedProfilerState;)Ljava/text/DecimalFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    iget-wide v3, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuValue:D

    invoke-static {v2, v3, v4}, Lcom/jme3/app/DetailedProfilerState;->access$200(Lcom/jme3/app/DetailedProfilerState;D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ms / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-static {v1}, Lcom/jme3/app/DetailedProfilerState;->access$300(Lcom/jme3/app/DetailedProfilerState;)Ljava/text/DecimalFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->this$0:Lcom/jme3/app/DetailedProfilerState;

    iget-wide v3, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuValue:D

    invoke-static {v2, v3, v4}, Lcom/jme3/app/DetailedProfilerState;->access$200(Lcom/jme3/app/DetailedProfilerState;D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateValues(DD)V
    .locals 2

    iget-wide v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuValue:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuValue:D

    iget-wide p1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuValue:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuValue:D

    return-void
.end method
