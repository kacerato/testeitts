.class public Lcom/google/android/filament/utils/AutomationEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/AutomationEngine$b;,
        Lcom/google/android/filament/utils/AutomationEngine$c;,
        Lcom/google/android/filament/utils/AutomationEngine$d;,
        Lcom/google/android/filament/utils/AutomationEngine$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public b:Lcom/google/android/filament/ColorGrading;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Lcom/google/android/filament/utils/AutomationEngine;->nCreateDefaultAutomationEngine()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t create AutomationEngine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/filament/utils/AutomationEngine;->nCreateAutomationEngine(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create AutomationEngine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nApplySettings(JJLjava/lang/String;J[JJI[IJJJ)V
.end method

.method private static native nCreateAutomationEngine(Ljava/lang/String;)J
.end method

.method private static native nCreateDefaultAutomationEngine()J
.end method

.method private static native nDestroy(J)V
.end method

.method private static native nGetCameraSettings(JLjava/lang/Object;)V
.end method

.method private static native nGetColorGrading(JJ)J
.end method

.method private static native nGetCurrentTest(J)I
.end method

.method private static native nGetTestCount(J)I
.end method

.method private static native nGetViewerOptions(JLjava/lang/Object;)V
.end method

.method private static native nSetOptions(JFIZ)V
.end method

.method private static native nShouldClose(J)Z
.end method

.method private static native nSignalBatchMode(J)V
.end method

.method private static native nStartBatchMode(J)V
.end method

.method private static native nStartRunning(J)V
.end method

.method private static native nStopRunning(J)V
.end method

.method private static native nTick(JJJ[JJJI[IJJF)V
.end method


# virtual methods
.method public a(Lcom/google/android/filament/Engine;Ljava/lang/String;Lcom/google/android/filament/utils/AutomationEngine$c;)V
    .locals 21
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/utils/AutomationEngine$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->a:Lcom/google/android/filament/View;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->b:Lcom/google/android/filament/Renderer;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->d:Lcom/google/android/filament/LightManager;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->e:Lcom/google/android/filament/Scene;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->c:[Lcom/google/android/filament/MaterialInstance;

    if-eqz v1, :cond_1

    array-length v1, v1

    new-array v2, v1, [J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->c:[Lcom/google/android/filament/MaterialInstance;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    move-object v10, v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->a:Lcom/google/android/filament/View;

    invoke-virtual {v1}, Lcom/google/android/filament/View;->v()J

    move-result-wide v8

    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->f:Lcom/google/android/filament/IndirectLight;

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    :goto_3
    move-wide v11, v1

    goto :goto_4

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/filament/IndirectLight;->q()J

    move-result-wide v1

    goto :goto_3

    :goto_4
    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->d:Lcom/google/android/filament/LightManager;

    invoke-virtual {v1}, Lcom/google/android/filament/LightManager;->E()J

    move-result-wide v15

    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->e:Lcom/google/android/filament/Scene;

    invoke-virtual {v1}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v17

    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->b:Lcom/google/android/filament/Renderer;

    invoke-virtual {v1}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v19

    move-object/from16 v1, p0

    iget-wide v3, v1, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v5

    iget v13, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->g:I

    iget-object v14, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->h:[I

    move-object/from16 v7, p2

    invoke-static/range {v3 .. v20}, Lcom/google/android/filament/utils/AutomationEngine;->nApplySettings(JJLjava/lang/String;J[JJI[IJJJ)V

    return-void

    :cond_3
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Must provide a LightManager and Scene"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Must provide a View and Renderer"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lcom/google/android/filament/utils/AutomationEngine$a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/filament/utils/AutomationEngine$a;

    invoke-direct {v0}, Lcom/google/android/filament/utils/AutomationEngine$a;-><init>()V

    iget-wide v1, p0, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/utils/AutomationEngine;->nGetCameraSettings(JLjava/lang/Object;)V

    return-object v0
.end method

.method public c(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/ColorGrading;
    .locals 4
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/utils/AutomationEngine;->nGetColorGrading(JJ)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/filament/utils/AutomationEngine;->b:Lcom/google/android/filament/ColorGrading;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading;->x()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/filament/ColorGrading;

    invoke-direct {p1, v0, v1}, Lcom/google/android/filament/ColorGrading;-><init>(J)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/filament/utils/AutomationEngine;->b:Lcom/google/android/filament/ColorGrading;

    :cond_2
    iget-object p1, p0, Lcom/google/android/filament/utils/AutomationEngine;->b:Lcom/google/android/filament/ColorGrading;

    return-object p1
.end method

.method public d()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/AutomationEngine;->nGetCurrentTest(J)I

    move-result v0

    return v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    return-wide v0
.end method

.method public f()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/AutomationEngine;->nGetTestCount(J)I

    move-result v0

    return v0
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/AutomationEngine;->nDestroy(J)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g()Lcom/google/android/filament/utils/AutomationEngine$d;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/filament/utils/AutomationEngine$d;

    invoke-direct {v0}, Lcom/google/android/filament/utils/AutomationEngine$d;-><init>()V

    iget-wide v1, p0, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/utils/AutomationEngine;->nGetViewerOptions(JLjava/lang/Object;)V

    return-object v0
.end method

.method public h(Lcom/google/android/filament/utils/AutomationEngine$b;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/utils/AutomationEngine$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    iget v2, p1, Lcom/google/android/filament/utils/AutomationEngine$b;->a:F

    iget v3, p1, Lcom/google/android/filament/utils/AutomationEngine$b;->b:I

    iget-boolean p1, p1, Lcom/google/android/filament/utils/AutomationEngine$b;->c:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/filament/utils/AutomationEngine;->nSetOptions(JFIZ)V

    return-void
.end method

.method public i()Z
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/AutomationEngine;->nShouldClose(J)Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/AutomationEngine;->nSignalBatchMode(J)V

    return-void
.end method

.method public k()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/AutomationEngine;->nStartBatchMode(J)V

    return-void
.end method

.method public l()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/AutomationEngine;->nStartRunning(J)V

    return-void
.end method

.method public m()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/AutomationEngine;->nStopRunning(J)V

    return-void
.end method

.method public n(Lcom/google/android/filament/Engine;Lcom/google/android/filament/utils/AutomationEngine$c;F)V
    .locals 21
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/utils/AutomationEngine$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->a:Lcom/google/android/filament/View;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->b:Lcom/google/android/filament/Renderer;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->c:[Lcom/google/android/filament/MaterialInstance;

    if-eqz v1, :cond_1

    array-length v1, v1

    new-array v2, v1, [J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->c:[Lcom/google/android/filament/MaterialInstance;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    move-object v9, v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->a:Lcom/google/android/filament/View;

    invoke-virtual {v1}, Lcom/google/android/filament/View;->v()J

    move-result-wide v7

    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->b:Lcom/google/android/filament/Renderer;

    invoke-virtual {v1}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v10

    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->f:Lcom/google/android/filament/IndirectLight;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    move-wide v12, v2

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/filament/IndirectLight;->q()J

    move-result-wide v4

    move-wide v12, v4

    :goto_3
    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->d:Lcom/google/android/filament/LightManager;

    if-nez v1, :cond_3

    move-wide/from16 v16, v2

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/filament/LightManager;->E()J

    move-result-wide v4

    move-wide/from16 v16, v4

    :goto_4
    iget-object v1, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->e:Lcom/google/android/filament/Scene;

    if-nez v1, :cond_4

    move-object/from16 v1, p0

    move-wide/from16 v18, v2

    goto :goto_5

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v1

    move-wide/from16 v18, v1

    move-object/from16 v1, p0

    :goto_5
    iget-wide v3, v1, Lcom/google/android/filament/utils/AutomationEngine;->a:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v5

    iget v14, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->g:I

    iget-object v15, v0, Lcom/google/android/filament/utils/AutomationEngine$c;->h:[I

    move/from16 v20, p3

    invoke-static/range {v3 .. v20}, Lcom/google/android/filament/utils/AutomationEngine;->nTick(JJJ[JJJI[IJJF)V

    return-void

    :cond_5
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Must provide a View and Renderer"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
