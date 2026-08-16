.class public Lcom/google/android/filament/ToneMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/ToneMapper$f;,
        Lcom/google/android/filament/ToneMapper$c;,
        Lcom/google/android/filament/ToneMapper$e;,
        Lcom/google/android/filament/ToneMapper$h;,
        Lcom/google/android/filament/ToneMapper$d;,
        Lcom/google/android/filament/ToneMapper$b;,
        Lcom/google/android/filament/ToneMapper$a;,
        Lcom/google/android/filament/ToneMapper$g;
    }
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/google/android/filament/ToneMapper;->a:J

    return-void
.end method

.method public synthetic constructor <init>(JLcom/google/android/filament/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/ToneMapper;-><init>(J)V

    return-void
.end method

.method public static bridge synthetic a()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/ToneMapper;->nCreateACESLegacyToneMapper()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic b()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/ToneMapper;->nCreateACESToneMapper()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic c(I)J
    .locals 2

    invoke-static {p0}, Lcom/google/android/filament/ToneMapper;->nCreateAgxToneMapper(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic d()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/ToneMapper;->nCreateFilmicToneMapper()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic e()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/ToneMapper;->nCreateGT7ToneMapper()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic f(FFFF)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/ToneMapper;->nCreateGenericToneMapper(FFFF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic g()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/ToneMapper;->nCreateLinearToneMapper()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic h()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/ToneMapper;->nCreatePBRNeutralToneMapper()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic i(J)F
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/ToneMapper;->nGenericGetContrast(J)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(J)F
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/ToneMapper;->nGenericGetHdrMax(J)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic k(J)F
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/ToneMapper;->nGenericGetMidGrayIn(J)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(J)F
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/ToneMapper;->nGenericGetMidGrayOut(J)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ToneMapper;->nGenericSetContrast(JF)V

    return-void
.end method

.method public static bridge synthetic n(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ToneMapper;->nGenericSetHdrMax(JF)V

    return-void
.end method

.method private static native nCreateACESLegacyToneMapper()J
.end method

.method private static native nCreateACESToneMapper()J
.end method

.method private static native nCreateAgxToneMapper(I)J
.end method

.method private static native nCreateFilmicToneMapper()J
.end method

.method private static native nCreateGT7ToneMapper()J
.end method

.method private static native nCreateGenericToneMapper(FFFF)J
.end method

.method private static native nCreateLinearToneMapper()J
.end method

.method private static native nCreatePBRNeutralToneMapper()J
.end method

.method private static native nDestroyToneMapper(J)V
.end method

.method private static native nGenericGetContrast(J)F
.end method

.method private static native nGenericGetHdrMax(J)F
.end method

.method private static native nGenericGetMidGrayIn(J)F
.end method

.method private static native nGenericGetMidGrayOut(J)F
.end method

.method private static native nGenericSetContrast(JF)V
.end method

.method private static native nGenericSetHdrMax(JF)V
.end method

.method private static native nGenericSetMidGrayIn(JF)V
.end method

.method private static native nGenericSetMidGrayOut(JF)V
.end method

.method public static bridge synthetic o(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ToneMapper;->nGenericSetMidGrayIn(JF)V

    return-void
.end method

.method public static bridge synthetic p(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ToneMapper;->nGenericSetMidGrayOut(JF)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v0, p0, Lcom/google/android/filament/ToneMapper;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/ToneMapper;->nDestroyToneMapper(J)V

    return-void

    :catchall_0
    move-exception v0

    iget-wide v1, p0, Lcom/google/android/filament/ToneMapper;->a:J

    invoke-static {v1, v2}, Lcom/google/android/filament/ToneMapper;->nDestroyToneMapper(J)V

    throw v0
.end method

.method public q()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/ToneMapper;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed ToneMapper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
