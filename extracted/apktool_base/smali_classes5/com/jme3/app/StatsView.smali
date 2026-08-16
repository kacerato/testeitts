.class public Lcom/jme3/app/StatsView;
.super Lcom/jme3/scene/Node;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/scene/control/Control;
.implements Lcom/jme3/util/clone/JmeCloneable;


# instance fields
.field private enabled:Z

.field private final statData:[I

.field private final statLabels:[Ljava/lang/String;

.field private final statText:Lcom/jme3/font/BitmapText;

.field private final statistics:Lcom/jme3/renderer/Statistics;

.field private final stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/Statistics;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/app/StatsView;->enabled:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/jme3/app/StatsView;->stringBuilder:Ljava/lang/StringBuilder;

    sget-object p1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Gui:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iput-object p3, p0, Lcom/jme3/app/StatsView;->statistics:Lcom/jme3/renderer/Statistics;

    iget-boolean p1, p0, Lcom/jme3/app/StatsView;->enabled:Z

    invoke-virtual {p3, p1}, Lcom/jme3/renderer/Statistics;->setEnabled(Z)V

    invoke-virtual {p3}, Lcom/jme3/renderer/Statistics;->getLabels()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/app/StatsView;->statLabels:[Ljava/lang/String;

    array-length p3, p1

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/jme3/app/StatsView;->statData:[I

    const-string p3, "Interface/Fonts/Console.fnt"

    invoke-interface {p2, p3}, Lcom/jme3/asset/AssetManager;->loadFont(Ljava/lang/String;)Lcom/jme3/font/BitmapFont;

    move-result-object p2

    new-instance p3, Lcom/jme3/font/BitmapText;

    invoke-direct {p3, p2}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    iput-object p3, p0, Lcom/jme3/app/StatsView;->statText:Lcom/jme3/font/BitmapText;

    invoke-virtual {p3}, Lcom/jme3/font/BitmapText;->getLineHeight()F

    move-result p2

    array-length p1, p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    const/4 p1, 0x0

    invoke-virtual {p3, p1, p2, p1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    invoke-virtual {p0, p3}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    invoke-virtual {p0, p0}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/control/Control;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getHeight()F
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/StatsView;->statText:Lcom/jme3/font/BitmapText;

    invoke-virtual {v0}, Lcom/jme3/font/BitmapText;->getLineHeight()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/app/StatsView;->statLabels:[Ljava/lang/String;

    array-length v1, v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/app/StatsView;->enabled:Z

    return v0
.end method

.method public jmeClone()Lcom/jme3/app/StatsView;
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic jmeClone()Lcom/jme3/scene/Spatial;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/app/StatsView;->jmeClone()Lcom/jme3/app/StatsView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/app/StatsView;->jmeClone()Lcom/jme3/app/StatsView;

    move-result-object v0

    return-object v0
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jme3/app/StatsView;->enabled:Z

    iget-object v0, p0, Lcom/jme3/app/StatsView;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/Statistics;->setEnabled(Z)V

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 0

    return-void
.end method

.method public update(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/app/StatsView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/jme3/app/StatsView;->statistics:Lcom/jme3/renderer/Statistics;

    iget-object v0, p0, Lcom/jme3/app/StatsView;->statData:[I

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Statistics;->getData([I)V

    iget-object p1, p0, Lcom/jme3/app/StatsView;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p1, p0, Lcom/jme3/app/StatsView;->statLabels:[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/jme3/app/StatsView;->stringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/app/StatsView;->statLabels:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/app/StatsView;->statData:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/jme3/app/StatsView;->statText:Lcom/jme3/font/BitmapText;

    iget-object v0, p0, Lcom/jme3/app/StatsView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
