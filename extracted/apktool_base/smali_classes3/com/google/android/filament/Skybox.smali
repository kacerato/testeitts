.class public Lcom/google/android/filament/Skybox;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Skybox$a;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/Skybox;->a:J

    return-void
.end method

.method public static bridge synthetic a(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Skybox;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(JFFFF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/filament/Skybox;->nBuilderColor(JFFFF)V

    return-void
.end method

.method public static bridge synthetic c(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Skybox;->nBuilderEnvironment(JJ)V

    return-void
.end method

.method public static bridge synthetic d(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Skybox;->nBuilderIntensity(JF)V

    return-void
.end method

.method public static bridge synthetic e(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Skybox;->nBuilderPriority(JI)V

    return-void
.end method

.method public static bridge synthetic f(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Skybox;->nBuilderShowSun(JZ)V

    return-void
.end method

.method public static bridge synthetic g()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/Skybox;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic h(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/Skybox;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderColor(JFFFF)V
.end method

.method private static native nBuilderEnvironment(JJ)V
.end method

.method private static native nBuilderIntensity(JF)V
.end method

.method private static native nBuilderPriority(JI)V
.end method

.method private static native nBuilderShowSun(JZ)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetIntensity(J)F
.end method

.method private static native nGetLayerMask(J)I
.end method

.method private static native nGetTexture(J)J
.end method

.method private static native nSetColor(JFFFF)V
.end method

.method private static native nSetLayerMask(JII)V
.end method


# virtual methods
.method public i()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/Skybox;->a:J

    return-void
.end method

.method public j()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Skybox;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Skybox;->nGetIntensity(J)F

    move-result v0

    return v0
.end method

.method public k()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Skybox;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Skybox;->nGetLayerMask(J)I

    move-result v0

    return v0
.end method

.method public l()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Skybox;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed Skybox"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()Lcom/google/android/filament/Texture;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/Skybox;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Skybox;->nGetTexture(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/filament/Texture;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/Texture;-><init>(J)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public n(FFFF)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/Skybox;->l()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Skybox;->nSetColor(JFFFF)V

    return-void
.end method

.method public o([F)V
    .locals 6
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x4L
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Skybox;->l()J

    move-result-wide v0

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v5, 0x3

    aget v5, p1, v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Skybox;->nSetColor(JFFFF)V

    return-void
.end method

.method public p(II)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Skybox;->l()J

    move-result-wide v0

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p2, p2, 0xff

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/Skybox;->nSetLayerMask(JII)V

    return-void
.end method
