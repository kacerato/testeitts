.class public abstract Lcom/android/tools/r8/internal/lp;
.super Lcom/android/tools/r8/internal/vn;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final f:B

.field public final g:B

.field public final h:B

.field public final i:B

.field public final j:B

.field public final k:B

.field public final l:Lcom/android/tools/r8/graph/d4;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/d4;IIIII)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/android/tools/r8/internal/vn;-><init>()V

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/internal/lp;->m:Z

    const/16 v1, 0xf

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-ltz p3, :cond_2

    if-gt p3, v1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-ltz p4, :cond_4

    if-gt p4, v1, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    if-ltz p5, :cond_6

    if-gt p5, v1, :cond_6

    goto :goto_3

    .line 16
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    if-ltz p6, :cond_8

    if-gt p6, v1, :cond_8

    goto :goto_4

    .line 17
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    if-nez v0, :cond_b

    if-ltz p7, :cond_a

    if-gt p7, v1, :cond_a

    goto :goto_5

    .line 18
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_5
    int-to-byte p1, p1

    .line 19
    iput-byte p1, p0, Lcom/android/tools/r8/internal/lp;->f:B

    .line 20
    iput-object p2, p0, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    int-to-byte p1, p3

    .line 21
    iput-byte p1, p0, Lcom/android/tools/r8/internal/lp;->g:B

    int-to-byte p1, p4

    .line 22
    iput-byte p1, p0, Lcom/android/tools/r8/internal/lp;->h:B

    int-to-byte p1, p5

    .line 23
    iput-byte p1, p0, Lcom/android/tools/r8/internal/lp;->i:B

    int-to-byte p1, p6

    .line 24
    iput-byte p1, p0, Lcom/android/tools/r8/internal/lp;->j:B

    int-to-byte p1, p7

    .line 25
    iput-byte p1, p0, Lcom/android/tools/r8/internal/lp;->k:B

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;[Lcom/android/tools/r8/graph/d4;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/vn;-><init>(Lcom/android/tools/r8/internal/Op;)V

    and-int/lit8 v0, p1, 0xf

    int-to-byte v0, v0

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/lp;->k:B

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    .line 3
    iput-byte p1, p0, Lcom/android/tools/r8/internal/lp;->f:B

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    int-to-char p1, p1

    .line 5
    aget-object p1, p3, p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->a()I

    move-result p1

    int-to-short p1, p1

    and-int/lit8 p3, p1, 0xf

    int-to-byte p3, p3

    .line 7
    iput-byte p3, p0, Lcom/android/tools/r8/internal/lp;->i:B

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Lcom/android/tools/r8/internal/lp;->j:B

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->a()I

    move-result p1

    int-to-short p1, p1

    and-int/lit8 p2, p1, 0xf

    int-to-byte p2, p2

    .line 10
    iput-byte p2, p0, Lcom/android/tools/r8/internal/lp;->g:B

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    .line 11
    iput-byte p1, p0, Lcom/android/tools/r8/internal/lp;->h:B

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/lp;)I
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/android/tools/r8/internal/lp;->f:B

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/bj1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bj1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/cj1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cj1;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/dj1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dj1;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/ej1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ej1;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/fj1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fj1;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/gj1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gj1;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/hj1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hj1;-><init>()V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/lp;)I
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/android/tools/r8/internal/lp;->g:B

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/lp;)I
    .locals 0

    iget-byte p0, p0, Lcom/android/tools/r8/internal/lp;->h:B

    return p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/internal/lp;)I
    .locals 0

    iget-byte p0, p0, Lcom/android/tools/r8/internal/lp;->i:B

    return p0
.end method

.method public static synthetic e(Lcom/android/tools/r8/internal/lp;)I
    .locals 0

    iget-byte p0, p0, Lcom/android/tools/r8/internal/lp;->j:B

    return p0
.end method

.method public static synthetic f(Lcom/android/tools/r8/internal/lp;)I
    .locals 0

    iget-byte p0, p0, Lcom/android/tools/r8/internal/lp;->k:B

    return p0
.end method

.method public static synthetic g(Lcom/android/tools/r8/internal/lp;)Lcom/android/tools/r8/graph/d4;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 9
    check-cast p1, Lcom/android/tools/r8/internal/lp;

    new-instance v0, Lcom/android/tools/r8/internal/ij1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ij1;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 5

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "{ "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-byte v0, p0, Lcom/android/tools/r8/internal/lp;->g:B

    iget-byte v1, p0, Lcom/android/tools/r8/internal/lp;->h:B

    iget-byte v2, p0, Lcom/android/tools/r8/internal/lp;->i:B

    iget-byte v3, p0, Lcom/android/tools/r8/internal/lp;->j:B

    iget-byte v4, p0, Lcom/android/tools/r8/internal/lp;->k:B

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-byte v2, p0, Lcom/android/tools/r8/internal/lp;->f:B

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    .line 13
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_0
    const-string v2, "v"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_1
    const-string v0, " }, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/n1;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 6

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    iget-byte v1, p0, Lcom/android/tools/r8/internal/lp;->g:B

    iget-byte v2, p0, Lcom/android/tools/r8/internal/lp;->h:B

    iget-byte v3, p0, Lcom/android/tools/r8/internal/lp;->i:B

    iget-byte v4, p0, Lcom/android/tools/r8/internal/lp;->j:B

    iget-byte v5, p0, Lcom/android/tools/r8/internal/lp;->k:B

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-byte v3, p0, Lcom/android/tools/r8/internal/lp;->f:B

    if-ge v2, v3, :cond_1

    if-eqz v2, :cond_0

    .line 7
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    const-string v3, "v"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    const-string v1, " } "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/vk0;->a(Lcom/android/tools/r8/graph/d4;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/ij1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ij1;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-byte v1, p0, Lcom/android/tools/r8/internal/lp;->f:B

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/tools/r8/internal/lp;->g:B

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/tools/r8/internal/lp;->h:B

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/tools/r8/internal/lp;->i:B

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/tools/r8/internal/lp;->j:B

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/tools/r8/internal/lp;->k:B

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
