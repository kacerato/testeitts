.class public final Lcom/android/tools/r8/internal/Ko;
.super Lcom/android/tools/r8/internal/kr;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final g:I

.field public final h:J

.field public final i:[S


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IJ[S)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/tools/r8/internal/kr;-><init>()V

    .line 14
    iput p1, p0, Lcom/android/tools/r8/internal/Ko;->g:I

    .line 15
    iput-wide p2, p0, Lcom/android/tools/r8/internal/Ko;->h:J

    .line 16
    iput-object p4, p0, Lcom/android/tools/r8/internal/Ko;->i:[S

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Op;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/kr;-><init>(Lcom/android/tools/r8/internal/Op;)V

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-char v0, v0

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/Ko;->g:I

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result v2

    and-int/2addr v2, v1

    int-to-char v2, v2

    int-to-long v2, v2

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result v4

    and-int/2addr v1, v4

    int-to-char v1, v1

    int-to-long v4, v1

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    const/16 v1, 0x10

    shl-long/2addr v4, v1

    and-long v1, v2, v6

    or-long/2addr v1, v4

    .line 6
    iput-wide v1, p0, Lcom/android/tools/r8/internal/Ko;->h:J

    .line 7
    sget-boolean v3, Lcom/android/tools/r8/internal/Ko;->j:Z

    if-nez v3, :cond_1

    int-to-long v3, v0

    mul-long/2addr v3, v1

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    int-to-long v3, v0

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 8
    div-int/lit8 v0, v0, 0x2

    .line 9
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ko;->i:[S

    const/4 v0, 0x0

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ko;->i:[S

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result v2

    int-to-short v2, v2

    .line 12
    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Ko;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/android/tools/r8/internal/Ko;->g:I

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/dL0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dL0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/eL0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eL0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToLongFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/fL0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fL0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->k(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Ko;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/tools/r8/internal/Ko;->h:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/Ko;)[S
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/Ko;->i:[S

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 4
    check-cast p1, Lcom/android/tools/r8/internal/Ko;

    new-instance v0, Lcom/android/tools/r8/internal/cL0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cL0;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 13

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "    .array-data "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget v0, p0, Lcom/android/tools/r8/internal/Ko;->g:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v0, "  # "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v2, p0, Lcom/android/tools/r8/internal/Ko;->g:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v3, p0, Lcom/android/tools/r8/internal/Ko;->g:I

    const-string v4, "      "

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v3, v1, :cond_2

    move v1, v5

    .line 17
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ko;->i:[S

    array-length v3, v3

    if-ge v1, v3, :cond_6

    move v3, v5

    :goto_1
    if-ge v3, v6, :cond_1

    .line 18
    iget-object v7, p0, Lcom/android/tools/r8/internal/Ko;->i:[S

    aget-short v7, v7, v1

    mul-int/lit8 v8, v3, 0x8

    shr-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v3

    int-to-long v8, v8

    .line 19
    iget-wide v10, p0, Lcom/android/tools/r8/internal/Ko;->h:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/internal/Ko;->j:Z

    if-nez v1, :cond_4

    if-eq v3, v6, :cond_4

    const/4 v1, 0x4

    if-eq v3, v1, :cond_4

    const/16 v1, 0x8

    if-ne v3, v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    const-wide/16 v7, 0x0

    :goto_3
    move-wide v9, v7

    .line 26
    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ko;->i:[S

    array-length v3, v1

    if-ge v5, v3, :cond_6

    .line 27
    aget-short v1, v1, v5

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedLong(S)J

    move-result-wide v11

    iget v1, p0, Lcom/android/tools/r8/internal/Ko;->g:I

    div-int/lit8 v3, v1, 0x2

    rem-int v3, v5, v3

    mul-int/lit8 v3, v3, 0x10

    shl-long/2addr v11, v3

    or-long/2addr v9, v11

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v3, v5, 0x2

    .line 28
    rem-int/2addr v3, v1

    if-nez v3, :cond_5

    .line 29
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v1, p0, Lcom/android/tools/r8/internal/Ko;->g:I

    mul-int/2addr v1, v6

    .line 31
    invoke-static {v1, v9, v10}, Lcom/android/tools/r8/internal/zq0;->a(IJ)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 36
    :cond_6
    const-string v0, "    .end array-data"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 5
    invoke-static {p1, p2, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    .line 6
    iget p1, p0, Lcom/android/tools/r8/internal/Ko;->g:I

    int-to-short p1, p1

    .line 7
    invoke-virtual {p6, p1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 8
    iget-wide p3, p0, Lcom/android/tools/r8/internal/Ko;->h:J

    invoke-static {p3, p4, p6}, Lcom/android/tools/r8/internal/Np;->a(JLjava/nio/ShortBuffer;)V

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ko;->i:[S

    array-length p3, p1

    :goto_0
    if-ge p2, p3, :cond_0

    aget-short p4, p1, p2

    int-to-short p4, p4

    .line 10
    invoke-virtual {p6, p4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 4

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/Ko;->g:I

    iget-wide v1, p0, Lcom/android/tools/r8/internal/Ko;->h:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[FillArrayPayload], width: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size:  "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/cL0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cL0;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/Ko;->g:I

    const v1, 0x103f657

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/tools/r8/internal/Ko;->h:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ko;->i:[S

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([S)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final y()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ko;->i:[S

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
