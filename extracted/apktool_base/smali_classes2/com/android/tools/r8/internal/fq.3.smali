.class public final Lcom/android/tools/r8/internal/fq;
.super Lcom/android/tools/r8/internal/wn;
.source "SourceFile"


# static fields
.field public static final synthetic n:Z = true


# instance fields
.field public final f:B

.field public final g:B

.field public final h:B

.field public final i:B

.field public final j:B

.field public final k:B

.field public final l:Lcom/android/tools/r8/graph/A2;

.field public final m:Lcom/android/tools/r8/graph/I2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;IIIII)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wn;-><init>()V

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/internal/fq;->n:Z

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

    if-ltz p4, :cond_2

    if-gt p4, v1, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-ltz p5, :cond_4

    if-gt p5, v1, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    if-ltz p6, :cond_6

    if-gt p6, v1, :cond_6

    goto :goto_3

    .line 21
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    if-ltz p7, :cond_8

    if-gt p7, v1, :cond_8

    goto :goto_4

    .line 22
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    if-nez v0, :cond_b

    if-ltz p8, :cond_a

    if-gt p8, v1, :cond_a

    goto :goto_5

    .line 23
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_5
    int-to-byte p1, p1

    .line 24
    iput-byte p1, p0, Lcom/android/tools/r8/internal/fq;->f:B

    .line 25
    iput-object p2, p0, Lcom/android/tools/r8/internal/fq;->l:Lcom/android/tools/r8/graph/A2;

    .line 26
    iput-object p3, p0, Lcom/android/tools/r8/internal/fq;->m:Lcom/android/tools/r8/graph/I2;

    int-to-byte p1, p4

    .line 27
    iput-byte p1, p0, Lcom/android/tools/r8/internal/fq;->g:B

    int-to-byte p1, p5

    .line 28
    iput-byte p1, p0, Lcom/android/tools/r8/internal/fq;->h:B

    int-to-byte p1, p6

    .line 29
    iput-byte p1, p0, Lcom/android/tools/r8/internal/fq;->i:B

    int-to-byte p1, p7

    .line 30
    iput-byte p1, p0, Lcom/android/tools/r8/internal/fq;->j:B

    int-to-byte p1, p8

    .line 31
    iput-byte p1, p0, Lcom/android/tools/r8/internal/fq;->k:B

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/x5;->b()[Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 2
    sget-boolean v1, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v1, :cond_1

    iget-object v1, p3, Lcom/android/tools/r8/graph/x5;->c:[Lcom/android/tools/r8/graph/I2;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object p3, p3, Lcom/android/tools/r8/graph/x5;->c:[Lcom/android/tools/r8/graph/I2;

    .line 4
    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/wn;-><init>(Lcom/android/tools/r8/internal/Op;)V

    and-int/lit8 v1, p1, 0xf

    int-to-byte v1, v1

    .line 5
    iput-byte v1, p0, Lcom/android/tools/r8/internal/fq;->k:B

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    .line 6
    iput-byte p1, p0, Lcom/android/tools/r8/internal/fq;->f:B

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p1

    const v1, 0xffff

    and-int/2addr p1, v1

    int-to-char p1, p1

    .line 8
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/fq;->l:Lcom/android/tools/r8/graph/A2;

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->a()I

    move-result p1

    int-to-short p1, p1

    and-int/lit8 v0, p1, 0xf

    int-to-byte v0, v0

    .line 10
    iput-byte v0, p0, Lcom/android/tools/r8/internal/fq;->i:B

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    .line 11
    iput-byte p1, p0, Lcom/android/tools/r8/internal/fq;->j:B

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->a()I

    move-result p1

    int-to-short p1, p1

    and-int/lit8 v0, p1, 0xf

    int-to-byte v0, v0

    .line 13
    iput-byte v0, p0, Lcom/android/tools/r8/internal/fq;->g:B

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    .line 14
    iput-byte p1, p0, Lcom/android/tools/r8/internal/fq;->h:B

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p1

    and-int/2addr p1, v1

    int-to-char p1, p1

    .line 16
    aget-object p1, p3, p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/fq;->m:Lcom/android/tools/r8/graph/I2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/fq;)I
    .locals 0

    .line 6
    iget-byte p0, p0, Lcom/android/tools/r8/internal/fq;->f:B

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/db1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/db1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/eb1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eb1;-><init>()V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/fb1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fb1;-><init>()V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/gb1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gb1;-><init>()V

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/hb1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hb1;-><init>()V

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/ib1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ib1;-><init>()V

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/jb1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jb1;-><init>()V

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/kb1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kb1;-><init>()V

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/fq;)I
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/android/tools/r8/internal/fq;->g:B

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/fq;)I
    .locals 0

    iget-byte p0, p0, Lcom/android/tools/r8/internal/fq;->h:B

    return p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/internal/fq;)I
    .locals 0

    iget-byte p0, p0, Lcom/android/tools/r8/internal/fq;->i:B

    return p0
.end method

.method public static synthetic e(Lcom/android/tools/r8/internal/fq;)I
    .locals 0

    iget-byte p0, p0, Lcom/android/tools/r8/internal/fq;->j:B

    return p0
.end method

.method public static synthetic f(Lcom/android/tools/r8/internal/fq;)I
    .locals 0

    iget-byte p0, p0, Lcom/android/tools/r8/internal/fq;->k:B

    return p0
.end method

.method public static synthetic g(Lcom/android/tools/r8/internal/fq;)Lcom/android/tools/r8/graph/A2;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/fq;->l:Lcom/android/tools/r8/graph/A2;

    return-object p0
.end method

.method public static synthetic h(Lcom/android/tools/r8/internal/fq;)Lcom/android/tools/r8/graph/I2;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/fq;->m:Lcom/android/tools/r8/graph/I2;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 15
    check-cast p1, Lcom/android/tools/r8/internal/fq;

    new-instance v0, Lcom/android/tools/r8/internal/lb1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lb1;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 5

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "{ "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    iget-byte v0, p0, Lcom/android/tools/r8/internal/fq;->g:B

    iget-byte v1, p0, Lcom/android/tools/r8/internal/fq;->h:B

    iget-byte v2, p0, Lcom/android/tools/r8/internal/fq;->i:B

    iget-byte v3, p0, Lcom/android/tools/r8/internal/fq;->j:B

    iget-byte v4, p0, Lcom/android/tools/r8/internal/fq;->k:B

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    :goto_0
    iget-byte v2, p0, Lcom/android/tools/r8/internal/fq;->f:B

    const-string v3, ", "

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_0
    const-string v2, "v"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_1
    const-string v0, " }, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v0, p0, Lcom/android/tools/r8/internal/fq;->l:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v0, p0, Lcom/android/tools/r8/internal/fq;->m:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-static {}, Lcom/android/tools/r8/naming/r0;->a()Lcom/android/tools/r8/naming/r0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 7

    .line 35
    sget-boolean v0, Lcom/android/tools/r8/internal/fq;->n:Z

    if-nez v0, :cond_1

    .line 36
    iget-object v1, p5, Lcom/android/tools/r8/internal/RR;->a:Lcom/android/tools/r8/graph/d1;

    invoke-interface {v1}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 37
    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->b5:Lcom/android/tools/r8/graph/k2;

    .line 38
    iget-object v2, p0, Lcom/android/tools/r8/internal/fq;->l:Lcom/android/tools/r8/graph/A2;

    .line 39
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/k2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 40
    iget-object v6, p0, Lcom/android/tools/r8/internal/fq;->l:Lcom/android/tools/r8/graph/A2;

    .line 41
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    sget-object v3, Lcom/android/tools/r8/internal/kK;->k:Lcom/android/tools/r8/internal/kK;

    .line 42
    sget-object v5, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v0, p3

    move-object v1, v6

    move-object v4, p4

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p2

    .line 44
    iget-object p2, p2, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    if-ne v6, p2, :cond_2

    goto :goto_1

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 46
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/fq;->m:Lcom/android/tools/r8/graph/I2;

    .line 47
    invoke-virtual {p5, p2}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    .line 48
    iget-byte p3, p0, Lcom/android/tools/r8/internal/fq;->f:B

    iget-byte p4, p0, Lcom/android/tools/r8/internal/fq;->k:B

    const/16 p5, 0xfa

    .line 49
    invoke-static {p3, p4, p6, p5}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;I)V

    .line 50
    iget-object p3, p0, Lcom/android/tools/r8/internal/fq;->l:Lcom/android/tools/r8/graph/A2;

    .line 51
    invoke-static {p3, p6, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V

    .line 52
    iget-byte p3, p0, Lcom/android/tools/r8/internal/fq;->j:B

    iget-byte p4, p0, Lcom/android/tools/r8/internal/fq;->i:B

    invoke-static {p3, p4}, Lcom/android/tools/r8/internal/Np;->e(II)I

    move-result p3

    iget-byte p4, p0, Lcom/android/tools/r8/internal/fq;->h:B

    iget-byte p5, p0, Lcom/android/tools/r8/internal/fq;->g:B

    invoke-static {p4, p5}, Lcom/android/tools/r8/internal/Np;->e(II)I

    move-result p4

    invoke-static {p3, p4}, Lcom/android/tools/r8/internal/Np;->d(II)S

    move-result p3

    int-to-short p3, p3

    .line 53
    invoke-virtual {p6, p3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 54
    invoke-static {p2, p6, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 6

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/internal/fq;->l:Lcom/android/tools/r8/graph/A2;

    .line 18
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    sget-object p4, Lcom/android/tools/r8/internal/kK;->k:Lcom/android/tools/r8/internal/kK;

    .line 19
    sget-object v5, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v3, p4

    move-object v4, p2

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p2

    .line 21
    sget-boolean v0, Lcom/android/tools/r8/internal/fq;->n:Z

    if-nez v0, :cond_1

    .line 22
    iget-object v0, p2, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    if-ne v0, p4, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_1
    :goto_0
    iget-object p2, p2, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 25
    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 26
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-interface {p3, p2}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/L2;)Z

    .line 29
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/fq;->m:Lcom/android/tools/r8/graph/I2;

    .line 30
    invoke-virtual {p5, p2}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-interface {p3, p2}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/I2;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 33
    iget-object p4, p2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p4, p1, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 34
    iget-object p2, p2, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 9

    .line 1
    sget-object v1, Lcom/android/tools/r8/internal/kK;->k:Lcom/android/tools/r8/internal/kK;

    .line 2
    iget-object v2, p0, Lcom/android/tools/r8/internal/fq;->l:Lcom/android/tools/r8/graph/A2;

    .line 3
    iget-object v3, p0, Lcom/android/tools/r8/internal/fq;->m:Lcom/android/tools/r8/graph/I2;

    .line 4
    iget-byte v4, p0, Lcom/android/tools/r8/internal/fq;->f:B

    iget-byte v0, p0, Lcom/android/tools/r8/internal/fq;->g:B

    iget-byte v5, p0, Lcom/android/tools/r8/internal/fq;->h:B

    iget-byte v6, p0, Lcom/android/tools/r8/internal/fq;->i:B

    iget-byte v7, p0, Lcom/android/tools/r8/internal/fq;->j:B

    iget-byte v8, p0, Lcom/android/tools/r8/internal/fq;->k:B

    filled-new-array {v0, v5, v6, v7, v8}, [I

    move-result-object v5

    move-object v0, p1

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;I[I)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/fq;->l:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 6

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    iget-byte v1, p0, Lcom/android/tools/r8/internal/fq;->g:B

    iget-byte v2, p0, Lcom/android/tools/r8/internal/fq;->h:B

    iget-byte v3, p0, Lcom/android/tools/r8/internal/fq;->i:B

    iget-byte v4, p0, Lcom/android/tools/r8/internal/fq;->j:B

    iget-byte v5, p0, Lcom/android/tools/r8/internal/fq;->k:B

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-byte v3, p0, Lcom/android/tools/r8/internal/fq;->f:B

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
    iget-object v1, p0, Lcom/android/tools/r8/internal/fq;->l:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/vk0;->b(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/fq;->m:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/vk0;->a(Lcom/android/tools/r8/graph/d4;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/lb1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lb1;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/fq;->m:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1c

    iget-object v1, p0, Lcom/android/tools/r8/internal/fq;->l:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/tools/r8/internal/fq;->f:B

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/tools/r8/internal/fq;->g:B

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/tools/r8/internal/fq;->h:B

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/tools/r8/internal/fq;->i:B

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/tools/r8/internal/fq;->j:B

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/tools/r8/internal/fq;->k:B

    or-int/2addr v0, v1

    const-class v1, Lcom/android/tools/r8/internal/fq;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "InvokePolymorphic"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "invoke-polymorphic"

    return-object v0
.end method
