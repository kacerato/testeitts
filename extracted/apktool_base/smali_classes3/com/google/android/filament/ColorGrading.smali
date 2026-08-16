.class public Lcom/google/android/filament/ColorGrading;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/ColorGrading$a;,
        Lcom/google/android/filament/ColorGrading$d;,
        Lcom/google/android/filament/ColorGrading$b;,
        Lcom/google/android/filament/ColorGrading$c;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/ColorGrading;->a:J

    return-void
.end method

.method public static bridge synthetic a(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(J[F[F[F)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/ColorGrading;->nBuilderChannelMixer(J[F[F[F)V

    return-void
.end method

.method public static bridge synthetic c(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderContrast(JF)V

    return-void
.end method

.method public static bridge synthetic d(J[F[F[F)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/ColorGrading;->nBuilderCurves(J[F[F[F)V

    return-void
.end method

.method public static bridge synthetic e(JLjava/nio/Buffer;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->nBuilderCustomLut(JLjava/nio/Buffer;I)V

    return-void
.end method

.method public static bridge synthetic f(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderDimensions(JI)V

    return-void
.end method

.method public static bridge synthetic g(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderExposure(JF)V

    return-void
.end method

.method public static bridge synthetic h(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderFastMath(JZ)V

    return-void
.end method

.method public static bridge synthetic i(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderFormat(JI)V

    return-void
.end method

.method public static bridge synthetic j(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderGamutMapping(JZ)V

    return-void
.end method

.method public static bridge synthetic k(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderLuminanceScaling(JZ)V

    return-void
.end method

.method public static bridge synthetic l(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderNightAdaptation(JF)V

    return-void
.end method

.method public static bridge synthetic m(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderQuality(JI)V

    return-void
.end method

.method public static bridge synthetic n(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderSaturation(JF)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderChannelMixer(J[F[F[F)V
.end method

.method private static native nBuilderContrast(JF)V
.end method

.method private static native nBuilderCurves(J[F[F[F)V
.end method

.method private static native nBuilderCustomLut(JLjava/nio/Buffer;I)V
.end method

.method private static native nBuilderDimensions(JI)V
.end method

.method private static native nBuilderExposure(JF)V
.end method

.method private static native nBuilderFastMath(JZ)V
.end method

.method private static native nBuilderFormat(JI)V
.end method

.method private static native nBuilderGamutMapping(JZ)V
.end method

.method private static native nBuilderLuminanceScaling(JZ)V
.end method

.method private static native nBuilderNightAdaptation(JF)V
.end method

.method private static native nBuilderQuality(JI)V
.end method

.method private static native nBuilderSaturation(JF)V
.end method

.method private static native nBuilderShadowsMidtonesHighlights(J[F[F[F[F)V
.end method

.method private static native nBuilderSlopeOffsetPower(J[F[F[F)V
.end method

.method private static native nBuilderToneMapper(JJ)V
.end method

.method private static native nBuilderToneMapping(JI)V
.end method

.method private static native nBuilderVibrance(JF)V
.end method

.method private static native nBuilderWhiteBalance(JFF)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method public static bridge synthetic o(J[F[F[F[F)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/filament/ColorGrading;->nBuilderShadowsMidtonesHighlights(J[F[F[F[F)V

    return-void
.end method

.method public static bridge synthetic p(J[F[F[F)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/ColorGrading;->nBuilderSlopeOffsetPower(J[F[F[F)V

    return-void
.end method

.method public static bridge synthetic q(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->nBuilderToneMapper(JJ)V

    return-void
.end method

.method public static bridge synthetic r(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderToneMapping(JI)V

    return-void
.end method

.method public static bridge synthetic s(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderVibrance(JF)V

    return-void
.end method

.method public static bridge synthetic t(JFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->nBuilderWhiteBalance(JFF)V

    return-void
.end method

.method public static bridge synthetic u()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/ColorGrading;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic v(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/ColorGrading;->nDestroyBuilder(J)V

    return-void
.end method


# virtual methods
.method public w()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/ColorGrading;->a:J

    return-void
.end method

.method public x()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed ColorGrading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
