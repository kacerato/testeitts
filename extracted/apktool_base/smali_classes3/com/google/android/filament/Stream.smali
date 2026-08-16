.class public Lcom/google/android/filament/Stream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Stream$b;,
        Lcom/google/android/filament/Stream$a;
    }
.end annotation


# static fields
.field public static final c:[Lcom/google/android/filament/Stream$b;


# instance fields
.field public a:J

.field public b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/filament/Stream$b;->values()[Lcom/google/android/filament/Stream$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Stream;->c:[Lcom/google/android/filament/Stream$b;

    return-void
.end method

.method public constructor <init>(JLcom/google/android/filament/Engine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/Stream;->a:J

    invoke-virtual {p3}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/filament/Stream;->b:J

    return-void
.end method

.method public static bridge synthetic a(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Stream;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Stream;->nBuilderHeight(JI)V

    return-void
.end method

.method public static bridge synthetic c(JLjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Stream;->nBuilderStreamSource(JLjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic d(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Stream;->nBuilderWidth(JI)V

    return-void
.end method

.method public static bridge synthetic e()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/Stream;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic f(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/Stream;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderHeight(JI)V
.end method

.method private static native nBuilderStreamSource(JLjava/lang/Object;)V
.end method

.method private static native nBuilderWidth(JI)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetStreamType(J)I
.end method

.method private static native nGetTimestamp(J)J
.end method

.method private static native nReadPixels(JJIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nSetAcquiredImage(JJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;)V
.end method

.method private static native nSetDimensions(JII)V
.end method


# virtual methods
.method public g()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/Stream;->a:J

    return-void
.end method

.method public h()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Stream;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed Stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Lcom/google/android/filament/Stream$b;
    .locals 3

    sget-object v0, Lcom/google/android/filament/Stream;->c:[Lcom/google/android/filament/Stream$b;

    invoke-virtual {p0}, Lcom/google/android/filament/Stream;->h()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Stream;->nGetStreamType(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public j()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Stream;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Stream;->nGetTimestamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/filament/Stream;->h()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/filament/Stream;->b:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/Stream;->nSetAcquiredImage(JJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public l(II)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Stream;->h()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/Stream;->nSetDimensions(JII)V

    return-void
.end method
