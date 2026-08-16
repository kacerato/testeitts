.class public Lcom/jme3/app/DetailedProfilerState;
.super Lcom/jme3/app/state/BaseAppState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/app/DetailedProfilerState$ProfilerInputListener;,
        Lcom/jme3/app/DetailedProfilerState$StatLineView;
    }
.end annotation


# static fields
.field private static final CLICK_KEY:Ljava/lang/String; = "Click_Detailed_Profiler"

.field private static final HEADER_HEIGHT:I = 0x64

.field private static final INSIGNIFICANT:Ljava/lang/String; = "Hide insignificant stat"

.field private static final LINE_HEIGHT:I = 0xc

.field private static final PADDING:I = 0xa

.field private static final PANEL_WIDTH:I = 0x190

.field private static final REFRESH_TIME:F = 1.0f

.field private static final TOGGLE_KEY:Ljava/lang/String; = "Toggle_Detailed_Profiler"


# instance fields
.field private bigFont:Lcom/jme3/font/BitmapFont;

.field private final df:Ljava/text/DecimalFormat;

.field private final dimmedGreen:Lcom/jme3/math/ColorRGBA;

.field private final dimmedOrange:Lcom/jme3/math/ColorRGBA;

.field private final dimmedRed:Lcom/jme3/math/ColorRGBA;

.field private final dimmedWhite:Lcom/jme3/math/ColorRGBA;

.field private font:Lcom/jme3/font/BitmapFont;

.field private frameCpuTimeValue:Lcom/jme3/font/BitmapText;

.field private frameGpuTimeValue:Lcom/jme3/font/BitmapText;

.field private frameTimeValue:Lcom/jme3/font/BitmapText;

.field private height:I

.field private hideInsignificant:Z

.field private hideInsignificantField:Lcom/jme3/font/BitmapText;

.field private final inputListener:Lcom/jme3/app/DetailedProfilerState$ProfilerInputListener;

.field private final lines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/app/DetailedProfilerState$StatLineView;",
            ">;"
        }
    .end annotation
.end field

.field private maxLevel:I

.field private final prof:Lcom/jme3/app/DetailedProfiler;

.field private rootLine:Lcom/jme3/app/DetailedProfilerState$StatLineView;

.field private selectedField:Lcom/jme3/font/BitmapText;

.field private selectedValueCpu:D

.field private selectedValueGpu:D

.field private time:F

.field private totalTimeCpu:D

.field private totalTimeGpu:D

.field private final ui:Lcom/jme3/scene/Node;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/jme3/app/state/BaseAppState;-><init>()V

    new-instance v0, Lcom/jme3/app/DetailedProfiler;

    invoke-direct {v0}, Lcom/jme3/app/DetailedProfiler;-><init>()V

    iput-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->prof:Lcom/jme3/app/DetailedProfiler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/app/DetailedProfilerState;->time:F

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "Stats ui"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->lines:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/app/DetailedProfilerState;->maxLevel:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/jme3/app/DetailedProfilerState;->selectedValueCpu:D

    iput-wide v1, p0, Lcom/jme3/app/DetailedProfilerState;->selectedValueGpu:D

    iput-boolean v0, p0, Lcom/jme3/app/DetailedProfilerState;->hideInsignificant:Z

    iput v0, p0, Lcom/jme3/app/DetailedProfilerState;->height:I

    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v2, "##0.00"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->df:Ljava/text/DecimalFormat;

    sget-object v0, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->mult(F)Lcom/jme3/math/ColorRGBA;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->dimmedWhite:Lcom/jme3/math/ColorRGBA;

    sget-object v0, Lcom/jme3/math/ColorRGBA;->Green:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->mult(F)Lcom/jme3/math/ColorRGBA;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->dimmedGreen:Lcom/jme3/math/ColorRGBA;

    sget-object v0, Lcom/jme3/math/ColorRGBA;->Orange:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->mult(F)Lcom/jme3/math/ColorRGBA;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->dimmedOrange:Lcom/jme3/math/ColorRGBA;

    sget-object v0, Lcom/jme3/math/ColorRGBA;->Red:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->mult(F)Lcom/jme3/math/ColorRGBA;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->dimmedRed:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/app/DetailedProfilerState$ProfilerInputListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jme3/app/DetailedProfilerState$ProfilerInputListener;-><init>(Lcom/jme3/app/DetailedProfilerState;Lcom/jme3/app/DetailedProfilerState$1;)V

    iput-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->inputListener:Lcom/jme3/app/DetailedProfilerState$ProfilerInputListener;

    return-void
.end method

.method public static synthetic access$100(Lcom/jme3/app/DetailedProfilerState;)Lcom/jme3/font/BitmapFont;
    .locals 0

    iget-object p0, p0, Lcom/jme3/app/DetailedProfilerState;->font:Lcom/jme3/font/BitmapFont;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/jme3/app/DetailedProfilerState;)I
    .locals 0

    iget p0, p0, Lcom/jme3/app/DetailedProfilerState;->maxLevel:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/jme3/app/DetailedProfilerState;Lcom/jme3/math/Vector2f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/app/DetailedProfilerState;->handleClick(Lcom/jme3/math/Vector2f;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/jme3/app/DetailedProfilerState;D)D
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jme3/app/DetailedProfilerState;->getMsFromNs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$300(Lcom/jme3/app/DetailedProfilerState;)Ljava/text/DecimalFormat;
    .locals 0

    iget-object p0, p0, Lcom/jme3/app/DetailedProfilerState;->df:Ljava/text/DecimalFormat;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/jme3/app/DetailedProfilerState;)D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/app/DetailedProfilerState;->totalTimeCpu:D

    return-wide v0
.end method

.method public static synthetic access$500(Lcom/jme3/app/DetailedProfilerState;)D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/app/DetailedProfilerState;->totalTimeGpu:D

    return-wide v0
.end method

.method public static synthetic access$600(Lcom/jme3/app/DetailedProfilerState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/jme3/app/DetailedProfilerState;->hideInsignificant:Z

    return p0
.end method

.method public static synthetic access$718(Lcom/jme3/app/DetailedProfilerState;D)D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/app/DetailedProfilerState;->selectedValueCpu:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/jme3/app/DetailedProfilerState;->selectedValueCpu:D

    return-wide v0
.end method

.method public static synthetic access$818(Lcom/jme3/app/DetailedProfilerState;D)D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/app/DetailedProfilerState;->selectedValueGpu:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/jme3/app/DetailedProfilerState;->selectedValueGpu:D

    return-wide v0
.end method

.method public static synthetic access$900(Lcom/jme3/app/DetailedProfilerState;)I
    .locals 0

    iget p0, p0, Lcom/jme3/app/DetailedProfilerState;->height:I

    return p0
.end method

.method public static synthetic access$908(Lcom/jme3/app/DetailedProfilerState;)I
    .locals 2

    iget v0, p0, Lcom/jme3/app/DetailedProfilerState;->height:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jme3/app/DetailedProfilerState;->height:I

    return v0
.end method

.method private displayData(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/app/DetailedProfiler$StatLine;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->lines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/app/DetailedProfilerState$StatLineView;

    invoke-virtual {v1}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->reset()V

    invoke-virtual {v1}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->removeFromParent()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->rootLine:Lcom/jme3/app/DetailedProfilerState$StatLineView;

    invoke-virtual {v0}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/app/DetailedProfilerState;->maxLevel:I

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "EndFrame"

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/jme3/app/DetailedProfilerState;->maxLevel:I

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/jme3/app/DetailedProfilerState;->maxLevel:I

    invoke-direct {p0, v1}, Lcom/jme3/app/DetailedProfilerState;->getStatLineView(Ljava/lang/String;)Lcom/jme3/app/DetailedProfilerState$StatLineView;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/app/DetailedProfiler$StatLine;

    invoke-virtual {v3}, Lcom/jme3/app/DetailedProfiler$StatLine;->getAverageCpu()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/jme3/app/DetailedProfiler$StatLine;->getAverageGpu()D

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->updateValues(DD)V

    invoke-direct {p0, v1}, Lcom/jme3/app/DetailedProfilerState;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/jme3/app/DetailedProfilerState;->getStatLineView(Ljava/lang/String;)Lcom/jme3/app/DetailedProfilerState$StatLineView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/jme3/app/DetailedProfiler$StatLine;->getAverageCpu()D

    move-result-wide v5

    invoke-virtual {v3}, Lcom/jme3/app/DetailedProfiler$StatLine;->getAverageGpu()D

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->updateValues(DD)V

    iget-object v5, v4, Lcom/jme3/app/DetailedProfilerState$StatLineView;->children:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    invoke-virtual {v2, v5}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->attachTo(Lcom/jme3/scene/Node;)V

    invoke-direct {p0, v1}, Lcom/jme3/app/DetailedProfilerState;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v4

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState;->rootLine:Lcom/jme3/app/DetailedProfilerState$StatLineView;

    iget-object v1, v1, Lcom/jme3/app/DetailedProfilerState$StatLineView;->children:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    invoke-virtual {v2, v1}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->attachTo(Lcom/jme3/scene/Node;)V

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState;->rootLine:Lcom/jme3/app/DetailedProfilerState$StatLineView;

    invoke-virtual {v3}, Lcom/jme3/app/DetailedProfiler$StatLine;->getAverageCpu()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/jme3/app/DetailedProfiler$StatLine;->getAverageGpu()D

    move-result-wide v2

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->updateValues(DD)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->rootLine:Lcom/jme3/app/DetailedProfilerState$StatLineView;

    iget-wide v3, v0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->cpuValue:D

    iput-wide v3, p0, Lcom/jme3/app/DetailedProfilerState;->totalTimeCpu:D

    iget-wide v0, v0, Lcom/jme3/app/DetailedProfilerState$StatLineView;->gpuValue:D

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/app/DetailedProfiler$StatLine;

    invoke-virtual {p1}, Lcom/jme3/app/DetailedProfiler$StatLine;->getAverageGpu()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/jme3/app/DetailedProfilerState;->totalTimeGpu:D

    invoke-direct {p0}, Lcom/jme3/app/DetailedProfilerState;->layout()V

    :cond_5
    :goto_3
    return-void
.end method

.method private getLeaf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getMsFromNs(D)D
    .locals 2

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private getParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getStatLineView(Ljava/lang/String;)Lcom/jme3/app/DetailedProfilerState$StatLineView;
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->lines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/app/DetailedProfilerState$StatLineView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/app/DetailedProfilerState$StatLineView;

    invoke-direct {p0, p1}, Lcom/jme3/app/DetailedProfilerState;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jme3/app/DetailedProfilerState$StatLineView;-><init>(Lcom/jme3/app/DetailedProfilerState;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState;->lines:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p1}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->attachTo(Lcom/jme3/scene/Node;)V

    :cond_0
    return-object v0
.end method

.method private handleClick(Lcom/jme3/math/Vector2f;)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->hideInsignificantField:Lcom/jme3/font/BitmapText;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState;->font:Lcom/jme3/font/BitmapFont;

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->hideInsignificantField:Lcom/jme3/font/BitmapText;

    invoke-virtual {v2}, Lcom/jme3/font/BitmapText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/font/BitmapFont;->getLineWidth(Ljava/lang/CharSequence;)F

    move-result v1

    iget v2, p1, Lcom/jme3/math/Vector2f;->x:F

    iget v3, v0, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    add-float/2addr v3, v1

    cmpg-float v1, v2, v3

    if-gez v1, :cond_1

    iget v1, p1, Lcom/jme3/math/Vector2f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    const/high16 v2, 0x41400000    # 12.0f

    sub-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/jme3/app/DetailedProfilerState;->hideInsignificant:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/jme3/app/DetailedProfilerState;->hideInsignificant:Z

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->hideInsignificantField:Lcom/jme3/font/BitmapText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lcom/jme3/app/DetailedProfilerState;->hideInsignificant:Z

    if-eqz v3, :cond_0

    const-string v3, "X "

    goto :goto_0

    :cond_0
    const-string v3, "O "

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Hide insignificant stat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/jme3/app/DetailedProfilerState;->hideInsignificant:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->rootLine:Lcom/jme3/app/DetailedProfilerState$StatLineView;

    invoke-virtual {v0, v1}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->setExpended(Z)V

    :cond_1
    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->rootLine:Lcom/jme3/app/DetailedProfilerState$StatLineView;

    invoke-virtual {v0, p1}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->onClick(Lcom/jme3/math/Vector2f;)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->lines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/app/DetailedProfilerState$StatLineView;

    invoke-virtual {v1, p1}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->onClick(Lcom/jme3/math/Vector2f;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/jme3/app/DetailedProfilerState;->layout()V

    return-void
.end method

.method private layout()V
    .locals 13

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/app/DetailedProfilerState;->height:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/jme3/app/DetailedProfilerState;->selectedValueCpu:D

    iput-wide v1, p0, Lcom/jme3/app/DetailedProfilerState;->selectedValueGpu:D

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState;->rootLine:Lcom/jme3/app/DetailedProfilerState$StatLineView;

    invoke-virtual {v1, v0}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->layout(I)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->frameTimeValue:Lcom/jme3/font/BitmapText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->df:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState;->prof:Lcom/jme3/app/DetailedProfiler;

    invoke-virtual {v3}, Lcom/jme3/app/DetailedProfiler;->getAverageFrameTime()D

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/jme3/app/DetailedProfilerState;->getMsFromNs(D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "ms"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->frameTimeValue:Lcom/jme3/font/BitmapText;

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v2, -0x3ee00000    # -10.0f

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v2, v9}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState;->frameTimeValue:Lcom/jme3/font/BitmapText;

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->prof:Lcom/jme3/app/DetailedProfiler;

    invoke-virtual {v0}, Lcom/jme3/app/DetailedProfiler;->getAverageFrameTime()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/jme3/app/DetailedProfilerState;->totalTimeCpu:D

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/jme3/app/DetailedProfilerState;->setColor(Lcom/jme3/font/BitmapText;DDZZ)Z

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->frameCpuTimeValue:Lcom/jme3/font/BitmapText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->df:Ljava/text/DecimalFormat;

    iget-wide v3, p0, Lcom/jme3/app/DetailedProfilerState;->totalTimeCpu:D

    invoke-direct {p0, v3, v4}, Lcom/jme3/app/DetailedProfilerState;->getMsFromNs(D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->frameCpuTimeValue:Lcom/jme3/font/BitmapText;

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->bigFont:Lcom/jme3/font/BitmapFont;

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState;->frameCpuTimeValue:Lcom/jme3/font/BitmapText;

    invoke-virtual {v3}, Lcom/jme3/font/BitmapText;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/font/BitmapFont;->getLineWidth(Ljava/lang/CharSequence;)F

    move-result v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v2, v10

    const/high16 v3, 0x42c80000    # 100.0f

    sub-float/2addr v3, v2

    const/high16 v11, -0x3d900000    # -60.0f

    invoke-direct {v1, v3, v11, v9}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState;->frameCpuTimeValue:Lcom/jme3/font/BitmapText;

    iget-wide v4, p0, Lcom/jme3/app/DetailedProfilerState;->totalTimeCpu:D

    move-object v0, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v7}, Lcom/jme3/app/DetailedProfilerState;->setColor(Lcom/jme3/font/BitmapText;DDZZ)Z

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->frameGpuTimeValue:Lcom/jme3/font/BitmapText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->df:Ljava/text/DecimalFormat;

    iget-wide v3, p0, Lcom/jme3/app/DetailedProfilerState;->totalTimeGpu:D

    invoke-direct {p0, v3, v4}, Lcom/jme3/app/DetailedProfilerState;->getMsFromNs(D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->frameGpuTimeValue:Lcom/jme3/font/BitmapText;

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->bigFont:Lcom/jme3/font/BitmapFont;

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState;->frameGpuTimeValue:Lcom/jme3/font/BitmapText;

    invoke-virtual {v3}, Lcom/jme3/font/BitmapText;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/font/BitmapFont;->getLineWidth(Ljava/lang/CharSequence;)F

    move-result v2

    div-float/2addr v2, v10

    const/high16 v12, 0x43960000    # 300.0f

    sub-float v2, v12, v2

    invoke-direct {v1, v2, v11, v9}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState;->frameGpuTimeValue:Lcom/jme3/font/BitmapText;

    iget-wide v4, p0, Lcom/jme3/app/DetailedProfilerState;->totalTimeGpu:D

    move-object v0, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v7}, Lcom/jme3/app/DetailedProfilerState;->setColor(Lcom/jme3/font/BitmapText;DDZZ)Z

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->selectedField:Lcom/jme3/font/BitmapText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->df:Ljava/text/DecimalFormat;

    iget-wide v3, p0, Lcom/jme3/app/DetailedProfilerState;->selectedValueCpu:D

    invoke-direct {p0, v3, v4}, Lcom/jme3/app/DetailedProfilerState;->getMsFromNs(D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ms / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->df:Ljava/text/DecimalFormat;

    iget-wide v3, p0, Lcom/jme3/app/DetailedProfilerState;->selectedValueGpu:D

    invoke-direct {p0, v3, v4}, Lcom/jme3/app/DetailedProfilerState;->getMsFromNs(D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->selectedField:Lcom/jme3/font/BitmapText;

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState;->font:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v0}, Lcom/jme3/font/BitmapText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/font/BitmapFont;->getLineWidth(Ljava/lang/CharSequence;)F

    move-result v1

    div-float/2addr v1, v10

    sub-float/2addr v12, v1

    const/high16 v1, -0x3d560000    # -85.0f

    invoke-virtual {v0, v12, v1, v9}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    return-void
.end method


# virtual methods
.method public cleanup(Lcom/jme3/app/Application;)V
    .locals 1

    iget-object p1, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->detachAllChildren()V

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object p1

    invoke-interface {p1}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object p1

    const-string v0, "Toggle_Detailed_Profiler"

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    const-string v0, "Click_Detailed_Profiler"

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->inputListener:Lcom/jme3/app/DetailedProfilerState$ProfilerInputListener;

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->removeListener(Lcom/jme3/input/controls/InputListener;)V

    return-void
.end method

.method public getUiNode()Lcom/jme3/scene/Node;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    return-object v0
.end method

.method public initialize(Lcom/jme3/app/Application;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/jme3/material/Material;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v3

    const-string v4, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v2, v3, v4}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    new-instance v3, Lcom/jme3/math/ColorRGBA;

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v5, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    const-string v4, "Color"

    invoke-virtual {v2, v4, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    invoke-virtual {v2}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v3

    sget-object v4, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v3, v4}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    new-instance v3, Lcom/jme3/scene/Geometry;

    new-instance v4, Lcom/jme3/scene/shape/Quad;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x43c80000    # 400.0f

    invoke-direct {v4, v7, v6}, Lcom/jme3/scene/shape/Quad;-><init>(FF)V

    const-string v6, "StatsDarken"

    invoke-direct {v3, v6, v4}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {v3, v2}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-interface {p1}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v3, v5, v2, v4}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v3

    add-int/lit16 v3, v3, -0x190

    int-to-float v3, v3

    invoke-interface {p1}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    invoke-interface {p1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v2

    const-string v3, "Interface/Fonts/Console.fnt"

    invoke-interface {v2, v3}, Lcom/jme3/asset/AssetManager;->loadFont(Ljava/lang/String;)Lcom/jme3/font/BitmapFont;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->font:Lcom/jme3/font/BitmapFont;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v2

    const-string v3, "Interface/Fonts/Default.fnt"

    invoke-interface {v2, v3}, Lcom/jme3/asset/AssetManager;->loadFont(Ljava/lang/String;)Lcom/jme3/font/BitmapFont;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->bigFont:Lcom/jme3/font/BitmapFont;

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->prof:Lcom/jme3/app/DetailedProfiler;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/app/DetailedProfiler;->setRenderer(Lcom/jme3/renderer/Renderer;)V

    new-instance v2, Lcom/jme3/app/DetailedProfilerState$StatLineView;

    const-string v3, "Frame"

    invoke-direct {v2, p0, v3}, Lcom/jme3/app/DetailedProfilerState$StatLineView;-><init>(Lcom/jme3/app/DetailedProfilerState;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->rootLine:Lcom/jme3/app/DetailedProfilerState$StatLineView;

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    invoke-virtual {v2, v3}, Lcom/jme3/app/DetailedProfilerState$StatLineView;->attachTo(Lcom/jme3/scene/Node;)V

    new-instance v2, Lcom/jme3/font/BitmapText;

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState;->bigFont:Lcom/jme3/font/BitmapFont;

    invoke-direct {v2, v3}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    const-string v3, "Total Frame Time: "

    invoke-virtual {v2, v3}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    invoke-virtual {v3, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    new-instance v3, Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/app/DetailedProfilerState;->bigFont:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v2}, Lcom/jme3/font/BitmapText;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jme3/font/BitmapFont;->getLineWidth(Ljava/lang/CharSequence;)F

    move-result v4

    const/high16 v6, 0x43480000    # 200.0f

    sub-float v4, v6, v4

    const/high16 v7, -0x3ee00000    # -10.0f

    invoke-direct {v3, v4, v7, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    new-instance v2, Lcom/jme3/font/BitmapText;

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState;->bigFont:Lcom/jme3/font/BitmapFont;

    invoke-direct {v2, v3}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    const-string v3, "CPU"

    invoke-virtual {v2, v3}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    invoke-virtual {v3, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState;->bigFont:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v2}, Lcom/jme3/font/BitmapText;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/font/BitmapFont;->getLineWidth(Ljava/lang/CharSequence;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v7, 0x42c80000    # 100.0f

    sub-float/2addr v7, v3

    const/high16 v3, -0x3de00000    # -40.0f

    invoke-virtual {v2, v7, v3, v5}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    new-instance v2, Lcom/jme3/font/BitmapText;

    iget-object v7, p0, Lcom/jme3/app/DetailedProfilerState;->bigFont:Lcom/jme3/font/BitmapFont;

    invoke-direct {v2, v7}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    const-string v7, "GPU"

    invoke-virtual {v2, v7}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    invoke-virtual {v7, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v7, p0, Lcom/jme3/app/DetailedProfilerState;->bigFont:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v2}, Lcom/jme3/font/BitmapText;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jme3/font/BitmapFont;->getLineWidth(Ljava/lang/CharSequence;)F

    move-result v7

    div-float/2addr v7, v4

    const/high16 v4, 0x43960000    # 300.0f

    sub-float/2addr v4, v7

    invoke-virtual {v2, v4, v3, v5}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    new-instance v2, Lcom/jme3/font/BitmapText;

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState;->bigFont:Lcom/jme3/font/BitmapFont;

    invoke-direct {v2, v3}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    iput-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->frameTimeValue:Lcom/jme3/font/BitmapText;

    new-instance v2, Lcom/jme3/font/BitmapText;

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState;->bigFont:Lcom/jme3/font/BitmapFont;

    invoke-direct {v2, v3}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    iput-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->frameCpuTimeValue:Lcom/jme3/font/BitmapText;

    new-instance v2, Lcom/jme3/font/BitmapText;

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState;->bigFont:Lcom/jme3/font/BitmapFont;

    invoke-direct {v2, v3}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    iput-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->frameGpuTimeValue:Lcom/jme3/font/BitmapText;

    new-instance v2, Lcom/jme3/font/BitmapText;

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState;->font:Lcom/jme3/font/BitmapFont;

    invoke-direct {v2, v3}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    iput-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->selectedField:Lcom/jme3/font/BitmapText;

    const-string v3, "Selected: "

    invoke-virtual {v2, v3}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->selectedField:Lcom/jme3/font/BitmapText;

    const/high16 v3, -0x3d560000    # -85.0f

    invoke-virtual {v2, v6, v3, v5}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->selectedField:Lcom/jme3/font/BitmapText;

    sget-object v4, Lcom/jme3/math/ColorRGBA;->Yellow:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v2, v4}, Lcom/jme3/font/BitmapText;->setColor(Lcom/jme3/math/ColorRGBA;)V

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    iget-object v4, p0, Lcom/jme3/app/DetailedProfilerState;->frameTimeValue:Lcom/jme3/font/BitmapText;

    invoke-virtual {v2, v4}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    iget-object v4, p0, Lcom/jme3/app/DetailedProfilerState;->frameCpuTimeValue:Lcom/jme3/font/BitmapText;

    invoke-virtual {v2, v4}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    iget-object v4, p0, Lcom/jme3/app/DetailedProfilerState;->frameGpuTimeValue:Lcom/jme3/font/BitmapText;

    invoke-virtual {v2, v4}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    iget-object v4, p0, Lcom/jme3/app/DetailedProfilerState;->selectedField:Lcom/jme3/font/BitmapText;

    invoke-virtual {v2, v4}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    new-instance v2, Lcom/jme3/font/BitmapText;

    iget-object v4, p0, Lcom/jme3/app/DetailedProfilerState;->font:Lcom/jme3/font/BitmapFont;

    invoke-direct {v2, v4}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    iput-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->hideInsignificantField:Lcom/jme3/font/BitmapText;

    const-string v4, "O Hide insignificant stat"

    invoke-virtual {v2, v4}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->hideInsignificantField:Lcom/jme3/font/BitmapText;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v2, v4, v3, v5}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object v2, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    iget-object v3, p0, Lcom/jme3/app/DetailedProfilerState;->hideInsignificantField:Lcom/jme3/font/BitmapText;

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    invoke-interface {p1}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v2, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v3, v0, [Lcom/jme3/input/controls/Trigger;

    aput-object v2, v3, v1

    const-string v2, "Toggle_Detailed_Profiler"

    invoke-virtual {p1, v2, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v3, Lcom/jme3/input/controls/MouseButtonTrigger;

    invoke-direct {v3, v1}, Lcom/jme3/input/controls/MouseButtonTrigger;-><init>(I)V

    new-array v0, v0, [Lcom/jme3/input/controls/Trigger;

    aput-object v3, v0, v1

    const-string v1, "Click_Detailed_Profiler"

    invoke-virtual {p1, v1, v0}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->inputListener:Lcom/jme3/app/DetailedProfilerState$ProfilerInputListener;

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDisable()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jme3/app/Application;->setAppProfiler(Lcom/jme3/profile/AppProfiler;)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    return-void
.end method

.method public onEnable()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState;->prof:Lcom/jme3/app/DetailedProfiler;

    invoke-interface {v0, v1}, Lcom/jme3/app/Application;->setAppProfiler(Lcom/jme3/profile/AppProfiler;)V

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jme3/app/SimpleApplication;

    invoke-virtual {v0}, Lcom/jme3/app/SimpleApplication;->getGuiNode()Lcom/jme3/scene/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/app/DetailedProfilerState;->ui:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public postRender()V
    .locals 2

    iget v0, p0, Lcom/jme3/app/DetailedProfilerState;->time:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->prof:Lcom/jme3/app/DetailedProfiler;

    sget-object v1, Lcom/jme3/profile/AppStep;->EndFrame:Lcom/jme3/profile/AppStep;

    invoke-virtual {v0, v1}, Lcom/jme3/app/DetailedProfiler;->appStep(Lcom/jme3/profile/AppStep;)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfilerState;->prof:Lcom/jme3/app/DetailedProfiler;

    invoke-virtual {v0}, Lcom/jme3/app/DetailedProfiler;->getStats()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/app/DetailedProfilerState;->displayData(Ljava/util/Map;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/app/DetailedProfilerState;->time:F

    :cond_0
    return-void
.end method

.method public setColor(Lcom/jme3/font/BitmapText;DDZZ)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    move p6, v1

    goto :goto_0

    :cond_0
    move p6, v0

    :goto_0
    const-wide v2, 0x417fca0555555555L    # 3.3333333333333332E7

    cmpl-double p7, p2, v2

    if-lez p7, :cond_2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/jme3/app/DetailedProfilerState;->dimmedRed:Lcom/jme3/math/ColorRGBA;

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/jme3/math/ColorRGBA;->Red:Lcom/jme3/math/ColorRGBA;

    :goto_1
    invoke-virtual {p1, p2}, Lcom/jme3/font/BitmapText;->setColor(Lcom/jme3/math/ColorRGBA;)V

    goto :goto_5

    :cond_2
    const-wide v2, 0x416fca0555555555L    # 1.6666666666666666E7

    cmpl-double p7, p2, v2

    if-lez p7, :cond_4

    if-eqz p6, :cond_3

    iget-object p2, p0, Lcom/jme3/app/DetailedProfilerState;->dimmedOrange:Lcom/jme3/math/ColorRGBA;

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/jme3/math/ColorRGBA;->Orange:Lcom/jme3/math/ColorRGBA;

    :goto_2
    invoke-virtual {p1, p2}, Lcom/jme3/font/BitmapText;->setColor(Lcom/jme3/math/ColorRGBA;)V

    goto :goto_5

    :cond_4
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr p4, v2

    cmpl-double p4, p2, p4

    if-lez p4, :cond_6

    if-eqz p6, :cond_5

    iget-object p2, p0, Lcom/jme3/app/DetailedProfilerState;->dimmedGreen:Lcom/jme3/math/ColorRGBA;

    goto :goto_3

    :cond_5
    sget-object p2, Lcom/jme3/math/ColorRGBA;->Green:Lcom/jme3/math/ColorRGBA;

    :goto_3
    invoke-virtual {p1, p2}, Lcom/jme3/font/BitmapText;->setColor(Lcom/jme3/math/ColorRGBA;)V

    goto :goto_5

    :cond_6
    const-wide p4, 0x40dd4c0000000000L    # 30000.0

    cmpg-double p2, p2, p4

    if-gez p2, :cond_7

    sget-object p2, Lcom/jme3/math/ColorRGBA;->DarkGray:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1, p2}, Lcom/jme3/font/BitmapText;->setColor(Lcom/jme3/math/ColorRGBA;)V

    move v0, v1

    goto :goto_5

    :cond_7
    if-eqz p6, :cond_8

    iget-object p2, p0, Lcom/jme3/app/DetailedProfilerState;->dimmedWhite:Lcom/jme3/math/ColorRGBA;

    goto :goto_4

    :cond_8
    sget-object p2, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    :goto_4
    invoke-virtual {p1, p2}, Lcom/jme3/font/BitmapText;->setColor(Lcom/jme3/math/ColorRGBA;)V

    :goto_5
    return v0
.end method

.method public update(F)V
    .locals 1

    iget v0, p0, Lcom/jme3/app/DetailedProfilerState;->time:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/app/DetailedProfilerState;->time:F

    return-void
.end method
