.class public abstract Lcom/android/tools/r8/internal/np;
.super Lcom/android/tools/r8/internal/Np;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final f:S

.field public final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Np;-><init>()V

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/np;->h:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    int-to-short p1, p1

    .line 3
    iput-short p1, p0, Lcom/android/tools/r8/internal/np;->f:S

    .line 4
    iput-wide p2, p0, Lcom/android/tools/r8/internal/np;->g:J

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;)V
    .locals 9

    .line 5
    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/Np;-><init>(Lcom/android/tools/r8/internal/w8;)V

    int-to-short p1, p1

    .line 6
    iput-short p1, p0, Lcom/android/tools/r8/internal/np;->f:S

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    int-to-char p1, p1

    int-to-long v1, p1

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p1

    and-int/2addr p1, v0

    int-to-char p1, p1

    int-to-long v3, p1

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    const/16 p1, 0x10

    shl-long/2addr v3, p1

    and-long/2addr v1, v5

    or-long/2addr v1, v3

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result v3

    and-int/2addr v3, v0

    int-to-char v3, v3

    int-to-long v3, v3

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p2

    and-int/2addr p2, v0

    int-to-char p2, p2

    int-to-long v7, p2

    and-long/2addr v7, v5

    shl-long p1, v7, p1

    and-long/2addr v3, v5

    or-long/2addr p1, v3

    const/16 v0, 0x20

    shl-long/2addr p1, v0

    or-long/2addr p1, v1

    .line 11
    iput-wide p1, p0, Lcom/android/tools/r8/internal/np;->g:J

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/np;)I
    .locals 0

    .line 2
    iget-short p0, p0, Lcom/android/tools/r8/internal/np;->f:S

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Kn1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Kn1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/Ln1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ln1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToLongFunction;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/np;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/tools/r8/internal/np;->g:J

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 9
    check-cast p1, Lcom/android/tools/r8/internal/np;

    new-instance v0, Lcom/android/tools/r8/internal/Jn1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jn1;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 4
    iget-short p1, p0, Lcom/android/tools/r8/internal/np;->f:S

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result p2

    invoke-static {p1, p2, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    .line 6
    iget-wide p1, p0, Lcom/android/tools/r8/internal/np;->g:J

    .line 7
    invoke-static {p1, p2, p6}, Lcom/android/tools/r8/internal/Np;->a(JLjava/nio/ShortBuffer;)V

    const/16 p3, 0x20

    shr-long/2addr p1, p3

    .line 8
    invoke-static {p1, p2, p6}, Lcom/android/tools/r8/internal/Np;->a(JLjava/nio/ShortBuffer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Jn1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jn1;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/np;->g:J

    long-to-int v0, v0

    shl-int/lit8 v0, v0, 0x8

    iget-short v1, p0, Lcom/android/tools/r8/internal/np;->f:S

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
