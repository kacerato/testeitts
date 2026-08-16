.class public abstract Lcom/android/tools/r8/internal/Be;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lcom/android/tools/r8/internal/Ce;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/io/InputStream;)I
    .locals 4

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    return p0

    :cond_0
    and-int/lit8 p0, p0, 0x7f

    const/4 v0, 0x7

    :goto_0
    const/16 v1, 0x20

    const-string v2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    const/4 v3, -0x1

    if-ge v0, v1, :cond_3

    .line 8
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v3, :cond_2

    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 9
    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p0, v2}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 10
    throw p0

    :cond_3
    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_6

    .line 11
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v3, :cond_5

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_4

    return p0

    :cond_4
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 12
    :cond_5
    new-instance p0, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p0, v2}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 13
    throw p0

    .line 14
    :cond_6
    new-instance p0, Lcom/android/tools/r8/internal/MJ;

    const-string p1, "CodedInputStream encountered a malformed varint."

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0
.end method

.method public static a(J)J
    .locals 4

    .line 1
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static a([BIIZ)Lcom/android/tools/r8/internal/xe;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/xe;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/xe;-><init>([BIIZ)V

    .line 3
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/xe;->d(I)I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static b(I)I
    .locals 1

    .line 1
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;
.end method

.method public final a()V
    .locals 2

    .line 5
    iget v0, p0, Lcom/android/tools/r8/internal/Be;->a:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/MJ;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 7
    throw v0
.end method

.method public abstract a(I)V
.end method

.method public abstract a(ILcom/android/tools/r8/internal/jW;Lcom/android/tools/r8/internal/zv;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/eW;Lcom/android/tools/r8/internal/zv;)V
.end method

.method public abstract b()I
.end method

.method public abstract c(I)V
.end method

.method public abstract c()Z
.end method

.method public abstract d(I)I
.end method

.method public abstract d()Lcom/android/tools/r8/internal/i8;
.end method

.method public abstract e()D
.end method

.method public abstract e(I)Z
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()J
.end method

.method public abstract i()F
.end method

.method public abstract j()I
.end method

.method public abstract k()J
.end method

.method public abstract l()I
.end method

.method public abstract m()I
.end method

.method public abstract n()J
.end method

.method public abstract o()I
.end method

.method public abstract p()J
.end method

.method public abstract q()Ljava/lang/String;
.end method

.method public abstract r()Ljava/lang/String;
.end method

.method public abstract s()I
.end method

.method public abstract t()I
.end method

.method public abstract u()J
.end method
