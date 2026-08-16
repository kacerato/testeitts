.class public Lcom/google/android/filament/utils/IBLPrefilterContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/IBLPrefilterContext$b;,
        Lcom/google/android/filament/utils/IBLPrefilterContext$a;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(Lcom/google/android/filament/Engine;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/IBLPrefilterContext;->nCreate(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/utils/IBLPrefilterContext;->a:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create IBLPrefilterContext"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static bridge synthetic a(J)J
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/utils/IBLPrefilterContext;->nCreateEquirectHelper(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(J)J
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/utils/IBLPrefilterContext;->nCreateSpecularFilter(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic c(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/utils/IBLPrefilterContext;->nDestroyEquirectHelper(J)V

    return-void
.end method

.method public static bridge synthetic d(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/utils/IBLPrefilterContext;->nDestroySpecularFilter(J)V

    return-void
.end method

.method public static bridge synthetic e(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/utils/IBLPrefilterContext;->nEquirectHelperRun(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic f(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/utils/IBLPrefilterContext;->nSpecularFilterRun(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static native nCreate(J)J
.end method

.method private static native nCreateEquirectHelper(J)J
.end method

.method private static native nCreateSpecularFilter(J)J
.end method

.method private static native nDestroy(J)V
.end method

.method private static native nDestroyEquirectHelper(J)V
.end method

.method private static native nDestroySpecularFilter(J)V
.end method

.method private static native nEquirectHelperRun(JJ)J
.end method

.method private static native nSpecularFilterRun(JJ)J
.end method


# virtual methods
.method public g()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/IBLPrefilterContext;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/IBLPrefilterContext;->nDestroy(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/utils/IBLPrefilterContext;->a:J

    return-void
.end method

.method public h()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/utils/IBLPrefilterContext;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed IBLPrefilterContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
