.class public Lcom/android/tools/r8/internal/gq;
.super Lcom/android/tools/r8/internal/wn;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final f:S

.field public final g:C

.field public final h:Lcom/android/tools/r8/graph/A2;

.field public final i:Lcom/android/tools/r8/graph/I2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wn;-><init>()V

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/internal/gq;->j:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const v1, 0xffff

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-ltz p2, :cond_2

    const/16 v0, 0xff

    if-gt p2, v0, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    int-to-char p1, p1

    .line 15
    iput-char p1, p0, Lcom/android/tools/r8/internal/gq;->g:C

    int-to-short p1, p2

    .line 16
    iput-short p1, p0, Lcom/android/tools/r8/internal/gq;->f:S

    .line 17
    iput-object p3, p0, Lcom/android/tools/r8/internal/gq;->h:Lcom/android/tools/r8/graph/A2;

    .line 18
    iput-object p4, p0, Lcom/android/tools/r8/internal/gq;->i:Lcom/android/tools/r8/graph/I2;

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

    int-to-short p1, p1

    .line 5
    iput-short p1, p0, Lcom/android/tools/r8/internal/gq;->f:S

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p1

    const v1, 0xffff

    and-int/2addr p1, v1

    int-to-char p1, p1

    .line 7
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/gq;->h:Lcom/android/tools/r8/graph/A2;

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p1

    and-int/2addr p1, v1

    int-to-char p1, p1

    .line 9
    iput-char p1, p0, Lcom/android/tools/r8/internal/gq;->g:C

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p1

    and-int/2addr p1, v1

    int-to-char p1, p1

    .line 11
    aget-object p1, p3, p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/gq;->i:Lcom/android/tools/r8/graph/I2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/gq;)I
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/android/tools/r8/internal/gq;->f:S

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/kc1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kc1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/lc1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lc1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/mc1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mc1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/nc1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nc1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/gq;)I
    .locals 0

    .line 1
    iget-char p0, p0, Lcom/android/tools/r8/internal/gq;->g:C

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/gq;)Lcom/android/tools/r8/graph/A2;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/gq;->h:Lcom/android/tools/r8/graph/A2;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/internal/gq;)Lcom/android/tools/r8/graph/I2;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/gq;->i:Lcom/android/tools/r8/graph/I2;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 29
    check-cast p1, Lcom/android/tools/r8/internal/gq;

    new-instance v0, Lcom/android/tools/r8/internal/jc1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jc1;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "{ v"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-char v0, p0, Lcom/android/tools/r8/internal/gq;->g:C

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    iget-short v1, p0, Lcom/android/tools/r8/internal/gq;->f:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 34
    const-string v1, " .. v"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/tools/r8/internal/gq;->f:S

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    :cond_0
    const-string v0, " }, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/gq;->h:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/gq;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {}, Lcom/android/tools/r8/naming/r0;->a()Lcom/android/tools/r8/naming/r0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/gq;->h:Lcom/android/tools/r8/graph/A2;

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 7

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/gq;->j:Z

    if-nez v0, :cond_1

    .line 10
    iget-object v1, p5, Lcom/android/tools/r8/internal/RR;->a:Lcom/android/tools/r8/graph/d1;

    invoke-interface {v1}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->b5:Lcom/android/tools/r8/graph/k2;

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/gq;->h:Lcom/android/tools/r8/graph/A2;

    .line 13
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

    .line 14
    iget-object v6, p0, Lcom/android/tools/r8/internal/gq;->h:Lcom/android/tools/r8/graph/A2;

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    sget-object v3, Lcom/android/tools/r8/internal/kK;->k:Lcom/android/tools/r8/internal/kK;

    .line 16
    sget-object v5, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v0, p3

    move-object v1, v6

    move-object v4, p4

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p2

    .line 18
    iget-object p2, p2, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    if-ne v6, p2, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/gq;->i:Lcom/android/tools/r8/graph/I2;

    .line 21
    invoke-virtual {p5, p2}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    .line 22
    iget-short p3, p0, Lcom/android/tools/r8/internal/gq;->f:S

    const/16 p4, 0xfb

    .line 23
    invoke-static {p3, p4, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    .line 24
    iget-object p3, p0, Lcom/android/tools/r8/internal/gq;->h:Lcom/android/tools/r8/graph/A2;

    .line 25
    invoke-static {p3, p6, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V

    .line 26
    iget-char p3, p0, Lcom/android/tools/r8/internal/gq;->g:C

    int-to-short p3, p3

    .line 27
    invoke-virtual {p6, p3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 28
    invoke-static {p2, p6, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 6

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/tools/r8/internal/gq;->h:Lcom/android/tools/r8/graph/A2;

    .line 44
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    sget-object p4, Lcom/android/tools/r8/internal/kK;->k:Lcom/android/tools/r8/internal/kK;

    .line 45
    sget-object v5, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v3, p4

    move-object v4, p2

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p2

    .line 47
    sget-boolean v0, Lcom/android/tools/r8/internal/gq;->j:Z

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p2, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    if-ne v0, p4, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_1
    :goto_0
    iget-object p2, p2, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 51
    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 52
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-interface {p3, p2}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/L2;)Z

    .line 55
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/gq;->i:Lcom/android/tools/r8/graph/I2;

    .line 56
    invoke-virtual {p5, p2}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-interface {p3, p2}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/I2;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 59
    iget-object p4, p2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p4, p1, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 60
    iget-object p2, p2, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 6

    .line 5
    sget-object v1, Lcom/android/tools/r8/internal/kK;->k:Lcom/android/tools/r8/internal/kK;

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/internal/gq;->h:Lcom/android/tools/r8/graph/A2;

    .line 7
    iget-object v3, p0, Lcom/android/tools/r8/internal/gq;->i:Lcom/android/tools/r8/graph/I2;

    .line 8
    iget-short v4, p0, Lcom/android/tools/r8/internal/gq;->f:S

    iget-char v5, p0, Lcom/android/tools/r8/internal/gq;->g:C

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;II)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/gq;->h:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-char v1, p0, Lcom/android/tools/r8/internal/gq;->g:C

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    iget-short v2, p0, Lcom/android/tools/r8/internal/gq;->f:S

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 9
    const-string v2, " .. v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/tools/r8/internal/gq;->f:S

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    :cond_0
    const-string v1, " } "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/gq;->h:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/vk0;->b(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/gq;->i:Lcom/android/tools/r8/graph/I2;

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

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/jc1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jc1;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-char v0, p0, Lcom/android/tools/r8/internal/gq;->g:C

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/android/tools/r8/internal/gq;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/internal/gq;->h:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-short v1, p0, Lcom/android/tools/r8/internal/gq;->f:S

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

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

    const-string v0, "InvokePolymorphicRange"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0xfb

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "invoke-polymorphic/range"

    return-object v0
.end method
