.class public Lcb/r;
.super Ljava/util/Random;
.source "SourceFile"


# static fields
.field public static final d:D = 1.1102230246251565E-16

.field public static final e:D = 5.960464477539063E-8


# instance fields
.field public b:J

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcb/r;->setSeed(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seed"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcb/r;->setSeed(J)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed0",
            "seed1"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcb/r;->c(JJ)V

    return-void
.end method

.method public static final b(J)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0xae502812aa7333L

    mul-long/2addr p0, v1

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public a(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seed"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcb/r;->b:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcb/r;->c:J

    :goto_0
    return-wide v0
.end method

.method public c(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "seed0",
            "seed1"
        }
    .end annotation

    iput-wide p1, p0, Lcb/r;->b:J

    iput-wide p3, p0, Lcb/r;->c:J

    return-void
.end method

.method public final next(I)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bits"
        }
    .end annotation

    invoke-virtual {p0}, Lcb/r;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    long-to-int p1, v0

    return p1
.end method

.method public nextBoolean()Z
    .locals 4

    invoke-virtual {p0}, Lcb/r;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextBytes([B)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bytes"
        }
    .end annotation

    array-length v0, p1

    :cond_0
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcb/r;->nextLong()J

    move-result-wide v3

    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    long-to-int v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    shr-long/2addr v3, v1

    move v2, v5

    goto :goto_1

    :cond_2
    return-void
.end method

.method public nextDouble()D
    .locals 4

    invoke-virtual {p0}, Lcb/r;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public nextFloat()F
    .locals 4

    invoke-virtual {p0}, Lcb/r;->nextLong()J

    move-result-wide v0

    const/16 v2, 0x28

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3e70000000000000L    # 5.960464477539063E-8

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public nextInt()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcb/r;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public nextInt(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "n"
        }
    .end annotation

    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcb/r;->nextLong(J)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public nextLong()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lcb/r;->b:J

    .line 2
    iget-wide v2, p0, Lcb/r;->c:J

    .line 3
    iput-wide v2, p0, Lcb/r;->b:J

    const/16 v4, 0x17

    shl-long v4, v0, v4

    xor-long/2addr v0, v4

    xor-long v4, v0, v2

    const/16 v6, 0x11

    ushr-long/2addr v0, v6

    xor-long/2addr v0, v4

    const/16 v4, 0x1a

    ushr-long v4, v2, v4

    xor-long/2addr v0, v4

    .line 4
    iput-wide v0, p0, Lcb/r;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public nextLong(J)J
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "n"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcb/r;->nextLong()J

    move-result-wide v2

    const/4 v4, 0x1

    ushr-long/2addr v2, v4

    .line 6
    rem-long v4, v2, p1

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x1

    sub-long v6, p1, v6

    add-long/2addr v2, v6

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    return-wide v4

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSeed(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "seed"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide/high16 p1, -0x8000000000000000L

    :cond_0
    invoke-static {p1, p2}, Lcb/r;->b(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcb/r;->b(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcb/r;->c(JJ)V

    return-void
.end method
