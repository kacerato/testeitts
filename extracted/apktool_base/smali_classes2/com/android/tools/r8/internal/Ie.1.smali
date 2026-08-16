.class public abstract Lcom/android/tools/r8/internal/Ie;
.super Lcom/android/tools/r8/internal/a8;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/tools/r8/internal/Ie;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    sget-boolean v0, Lcom/android/tools/r8/internal/bw0;->e:Z

    sput-boolean v0, Lcom/android/tools/r8/internal/Ie;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/a8;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 10
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static a(II)I
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result p0

    if-ltz p1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    add-int/2addr p0, p1

    return p0
.end method

.method public static a(ILcom/android/tools/r8/internal/kW;)I
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result p0

    .line 8
    invoke-interface {p1}, Lcom/android/tools/r8/internal/kW;->getSerializedSize()I

    move-result p1

    .line 9
    invoke-static {p1, p1, p0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result p0

    return p0
.end method

.method public static a(ILcom/android/tools/r8/internal/m8;)I
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result p0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/m8;->size()I

    move-result p1

    .line 6
    invoke-static {p1, p1, p0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result p0

    return p0
.end method

.method public static a(J)I
    .locals 6

    .line 1
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v4, -0x800000000L

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v4, 0xe

    ushr-long/2addr p0, v4

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .line 11
    :try_start_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/tw0;->a(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/android/tools/r8/internal/qw0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    sget-object v0, Lcom/android/tools/r8/internal/YI;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 13
    array-length p0, p0

    .line 14
    :goto_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result p0

    return p0
.end method

.method public static b(J)J
    .locals 3

    .line 1
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static c(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static d(I)I
    .locals 1

    .line 1
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract a(B)V
.end method

.method public abstract a(IJ)V
.end method

.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(IZ)V
.end method

.method public abstract a(I[B)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/kW;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/m8;)V
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/internal/qw0;)V
    .locals 3

    .line 15
    sget-object v0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    sget-object p2, Lcom/android/tools/r8/internal/YI;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 17
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ie;->g(I)V

    .line 18
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/a8;->a([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/internal/Fe; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 19
    :goto_0
    throw p1

    .line 20
    :goto_1
    new-instance p2, Lcom/android/tools/r8/internal/Fe;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Fe;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public abstract b(II)V
.end method

.method public abstract b(IJ)V
.end method

.method public abstract b(ILcom/android/tools/r8/internal/kW;)V
.end method

.method public abstract b(ILcom/android/tools/r8/internal/m8;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract c(II)V
.end method

.method public abstract c(ILcom/android/tools/r8/internal/kW;)V
.end method

.method public abstract c(ILcom/android/tools/r8/internal/m8;)V
.end method

.method public abstract c(J)V
.end method

.method public abstract d(II)V
.end method

.method public abstract d(J)V
.end method

.method public abstract e(I)V
.end method

.method public abstract e(II)V
.end method

.method public abstract f(I)V
.end method

.method public abstract g(I)V
.end method
