.class public Lcom/android/tools/r8/internal/WS;
.super Lcom/android/tools/r8/graph/i0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EV:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/tools/r8/graph/i0;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/internal/WS<",
        "TEV;>;>;",
        "Ljava/lang/Iterable<",
        "Lcom/android/tools/r8/internal/dT;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic o:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/uT;

.field public final f:Z

.field public final g:[Lcom/android/tools/r8/internal/YS;

.field public final h:[Lcom/android/tools/r8/internal/SS;

.field public final i:I

.field public final j:[B

.field public final k:I

.field public final l:Lcom/android/tools/r8/internal/VS;

.field public final m:Lcom/android/tools/r8/internal/QS;

.field public n:Lcom/android/tools/r8/internal/dH;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/WS;)V
    .locals 11

    .line 1
    iget-object v1, p1, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    iget-object v2, p1, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    iget v3, p1, Lcom/android/tools/r8/internal/WS;->i:I

    iget-object v4, p1, Lcom/android/tools/r8/internal/WS;->j:[B

    iget v5, p1, Lcom/android/tools/r8/internal/WS;->k:I

    iget-object v6, p1, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    iget-object v7, p1, Lcom/android/tools/r8/internal/WS;->m:Lcom/android/tools/r8/internal/QS;

    iget-object v8, p1, Lcom/android/tools/r8/internal/WS;->e:Lcom/android/tools/r8/internal/uT;

    iget-boolean v9, p1, Lcom/android/tools/r8/internal/WS;->f:Z

    iget-object v10, p1, Lcom/android/tools/r8/internal/WS;->n:Lcom/android/tools/r8/internal/dH;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/tools/r8/internal/WS;-><init>([Lcom/android/tools/r8/internal/YS;[Lcom/android/tools/r8/internal/SS;I[BILcom/android/tools/r8/internal/VS;Lcom/android/tools/r8/internal/QS;Lcom/android/tools/r8/internal/uT;ZLcom/android/tools/r8/internal/dH;)V

    return-void
.end method

.method public constructor <init>([Lcom/android/tools/r8/internal/YS;[Lcom/android/tools/r8/internal/SS;I[BILcom/android/tools/r8/internal/VS;Lcom/android/tools/r8/internal/QS;Lcom/android/tools/r8/internal/uT;ZLcom/android/tools/r8/internal/dH;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/graph/i0;-><init>()V

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/WS;->o:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    .line 5
    iput-object p2, p0, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    .line 6
    iput p3, p0, Lcom/android/tools/r8/internal/WS;->i:I

    .line 7
    iput-object p4, p0, Lcom/android/tools/r8/internal/WS;->j:[B

    .line 8
    iput p5, p0, Lcom/android/tools/r8/internal/WS;->k:I

    .line 9
    iput-object p6, p0, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    .line 10
    iput-object p7, p0, Lcom/android/tools/r8/internal/WS;->m:Lcom/android/tools/r8/internal/QS;

    .line 11
    iput-object p8, p0, Lcom/android/tools/r8/internal/WS;->e:Lcom/android/tools/r8/internal/uT;

    .line 12
    iput-boolean p9, p0, Lcom/android/tools/r8/internal/WS;->f:Z

    .line 13
    iput-object p10, p0, Lcom/android/tools/r8/internal/WS;->n:Lcom/android/tools/r8/internal/dH;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/bT;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/PS;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "EV:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/tools/r8/graph/A2;",
            "Z",
            "Lcom/android/tools/r8/internal/bT<",
            "TV;TEV;>;",
            "Lcom/android/tools/r8/internal/nJ;",
            ")",
            "Lcom/android/tools/r8/internal/PS<",
            "TV;TEV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/PS;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/PS;-><init>(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/bT;Lcom/android/tools/r8/internal/nJ;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/B60;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/A01;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/A01;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->b(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/B01;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/B01;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->f(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/C01;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C01;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/D01;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/D01;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/E01;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/E01;-><init>()V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/F01;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/F01;-><init>()V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/G01;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/G01;-><init>()V

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/H01;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/H01;-><init>()V

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/WS;)[Lcom/android/tools/r8/internal/YS;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/WS;)[Lcom/android/tools/r8/internal/SS;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/WS;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/tools/r8/internal/WS;->i:I

    return p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/internal/WS;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/internal/WS;->j:[B

    return-object p0
.end method

.method public static synthetic e(Lcom/android/tools/r8/internal/WS;)I
    .locals 0

    iget p0, p0, Lcom/android/tools/r8/internal/WS;->k:I

    return p0
.end method

.method public static synthetic f(Lcom/android/tools/r8/internal/WS;)Lcom/android/tools/r8/internal/VS;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    return-object p0
.end method

.method public static synthetic g(Lcom/android/tools/r8/internal/WS;)Lcom/android/tools/r8/internal/QS;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/WS;->m:Lcom/android/tools/r8/internal/QS;

    return-object p0
.end method

.method public static synthetic h(Lcom/android/tools/r8/internal/WS;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/WS;->n:Lcom/android/tools/r8/internal/dH;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public E0()Lcom/android/tools/r8/internal/eT;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/eT;

    new-instance v1, Lcom/android/tools/r8/internal/W7;

    iget-object v2, p0, Lcom/android/tools/r8/internal/WS;->j:[B

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/W7;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/eT;-><init>(Lcom/android/tools/r8/internal/W7;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/i0;
    .locals 14

    move-object v0, p0

    .line 84
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/B60$c$a;

    move-object v2, p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/B60$c$a;

    const/4 v2, 0x1

    .line 85
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/B60$a;->e:Z

    .line 86
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object v1

    .line 87
    new-instance v2, Lcom/android/tools/r8/internal/z01;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/z01;-><init>()V

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 88
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/tools/r8/internal/WS;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/A2;ZLjava/util/function/Consumer;)[Lcom/android/tools/r8/internal/SS;

    move-result-object v5

    .line 89
    iget-object v1, v0, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 90
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/WS;

    iget-object v4, v0, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    iget v6, v0, Lcom/android/tools/r8/internal/WS;->i:I

    iget-object v7, v0, Lcom/android/tools/r8/internal/WS;->j:[B

    iget v8, v0, Lcom/android/tools/r8/internal/WS;->k:I

    iget-object v9, v0, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    iget-object v10, v0, Lcom/android/tools/r8/internal/WS;->m:Lcom/android/tools/r8/internal/QS;

    iget-object v11, v0, Lcom/android/tools/r8/internal/WS;->e:Lcom/android/tools/r8/internal/uT;

    iget-boolean v12, v0, Lcom/android/tools/r8/internal/WS;->f:Z

    iget-object v13, v0, Lcom/android/tools/r8/internal/WS;->n:Lcom/android/tools/r8/internal/dH;

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lcom/android/tools/r8/internal/WS;-><init>([Lcom/android/tools/r8/internal/YS;[Lcom/android/tools/r8/internal/SS;I[BILcom/android/tools/r8/internal/VS;Lcom/android/tools/r8/internal/QS;Lcom/android/tools/r8/internal/uT;ZLcom/android/tools/r8/internal/dH;)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/SG;
    .locals 0

    .line 56
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/fB;
    .locals 7

    .line 19
    sget-boolean p1, Lcom/android/tools/r8/internal/WS;->o:Z

    if-nez p1, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    if-eqz p6, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez p1, :cond_5

    if-eqz p7, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object v6

    .line 23
    new-instance v2, Lcom/android/tools/r8/internal/h60;

    invoke-direct {v2, p0, p5}, Lcom/android/tools/r8/internal/h60;-><init>(Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/internal/z10;)V

    move-object v0, p2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    .line 24
    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/internal/HS;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/internal/aT;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 10

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v8

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/z10;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/z10;-><init>()V

    .line 17
    new-instance v5, Lcom/android/tools/r8/internal/h60;

    invoke-direct {v5, p0, v0}, Lcom/android/tools/r8/internal/h60;-><init>(Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/internal/z10;)V

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p0

    move-object v6, p2

    move-object v9, p3

    .line 18
    invoke-static/range {v3 .. v9}, Lcom/android/tools/r8/internal/HS;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/internal/aT;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Ka;)Lcom/android/tools/r8/internal/s8;
    .locals 0

    .line 12
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 0

    .line 57
    new-instance p1, Lcom/android/tools/r8/internal/jT;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/jT;-><init>(Lcom/android/tools/r8/internal/WS;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/jT;->j()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;ZLjava/util/function/Consumer;)V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 92
    invoke-virtual {v3, p1, p2}, Lcom/android/tools/r8/internal/SS;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f6;)V
    .locals 6

    .line 25
    sget-boolean v0, Lcom/android/tools/r8/internal/WS;->o:Z

    if-nez v0, :cond_1

    .line 26
    iget-object v0, p2, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 30
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/SS;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v5

    .line 32
    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/internal/SS;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    .line 33
    invoke-virtual {p2, v3}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/internal/B60;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 34
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/vT;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/vT;-><init>(Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/graph/f6;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WS;->E0()Lcom/android/tools/r8/internal/eT;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/dT;

    .line 36
    iget-object v2, p0, Lcom/android/tools/r8/internal/WS;->n:Lcom/android/tools/r8/internal/dH;

    if-eqz v2, :cond_5

    .line 37
    invoke-interface {v1}, Lcom/android/tools/r8/internal/dT;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/s8;

    .line 38
    iput-object v2, p1, Lcom/android/tools/r8/internal/vT;->d:Lcom/android/tools/r8/internal/s8;

    .line 39
    :cond_5
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/iT;->a(Lcom/android/tools/r8/internal/dT;)V

    .line 40
    iget-object v1, p2, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 41
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 42
    :cond_6
    iget-object p1, p0, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    if-eqz p1, :cond_9

    .line 43
    iget-object p1, p1, Lcom/android/tools/r8/internal/VS;->b:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dH;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/VG;

    .line 44
    new-instance v0, Lcom/android/tools/r8/internal/cH;

    .line 45
    iget-object p1, p1, Lcom/android/tools/r8/internal/VG;->b:Lcom/android/tools/r8/internal/dH;

    .line 46
    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/cH;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 47
    :cond_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 48
    iget-object p1, v0, Lcom/android/tools/r8/internal/cH;->h:Lcom/android/tools/r8/internal/dH;

    iget-object p1, p1, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/bH;->a()I

    move-result v1

    aget-object p1, p1, v1

    .line 49
    check-cast p1, Lcom/android/tools/r8/internal/N8;

    .line 50
    iget-object p1, p1, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 52
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 53
    iget-object v1, p2, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 54
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_9
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/Mi;)V
    .locals 0

    .line 55
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/A2;ZLjava/util/function/Consumer;)[Lcom/android/tools/r8/internal/SS;
    .locals 9

    if-eqz p3, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 59
    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 60
    sget-object p1, Lcom/android/tools/r8/internal/SS;->c:[Lcom/android/tools/r8/internal/SS;

    return-object p1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    aget-object v0, v0, v2

    iget v1, v0, Lcom/android/tools/r8/internal/SS;->b:I

    if-nez v1, :cond_1

    .line 62
    invoke-virtual {v0, p2, p3}, Lcom/android/tools/r8/internal/SS;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    :goto_0
    move-object v8, v0

    goto :goto_1

    .line 63
    :cond_1
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$c$a;

    .line 65
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$c$a;

    .line 66
    iput-boolean p3, v0, Lcom/android/tools/r8/internal/B60$a;->e:Z

    .line 67
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$c$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    .line 68
    check-cast v0, Lcom/android/tools/r8/internal/B60$c$a;

    .line 69
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object v0

    goto :goto_0

    .line 70
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/J8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    array-length v5, v1

    move-object v3, v0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/internal/J8;-><init>(Lcom/android/tools/r8/internal/B60;ILcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/B60;)V

    .line 71
    iget-object p1, p0, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    array-length v1, p1

    if-nez v1, :cond_2

    .line 72
    new-instance p1, Lcom/android/tools/r8/internal/TS;

    .line 73
    iget-object p2, v0, Lcom/android/tools/r8/internal/J8;->c:Lcom/android/tools/r8/internal/B60;

    .line 74
    invoke-direct {p1, v2, p2}, Lcom/android/tools/r8/internal/TS;-><init>(ILcom/android/tools/r8/internal/B60;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/android/tools/r8/internal/SS;

    aput-object p1, p2, v2

    goto :goto_3

    .line 75
    :cond_2
    array-length p1, p1

    new-array p1, p1, [Lcom/android/tools/r8/internal/SS;

    .line 76
    :goto_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 77
    aget-object v1, v1, v2

    .line 78
    invoke-virtual {v1, p2, p3}, Lcom/android/tools/r8/internal/SS;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    .line 79
    new-instance v4, Lcom/android/tools/r8/internal/TS;

    .line 80
    iget v1, v1, Lcom/android/tools/r8/internal/SS;->b:I

    .line 81
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/J8;->b(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    invoke-direct {v4, v1, v3}, Lcom/android/tools/r8/internal/TS;-><init>(ILcom/android/tools/r8/internal/B60;)V

    aput-object v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move-object p2, p1

    .line 82
    :goto_3
    iget-object p1, v0, Lcom/android/tools/r8/internal/J8;->c:Lcom/android/tools/r8/internal/B60;

    .line 83
    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "LIR code should not be subject to equality checks."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljava/lang/Object;)Lcom/android/tools/r8/graph/j0;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/WS;->m:Lcom/android/tools/r8/internal/QS;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/QS;->b:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j0;

    return-object p1
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WS;->E0()Lcom/android/tools/r8/internal/eT;

    move-result-object v0

    return-object v0
.end method

.method public final k(I)I
    .locals 4

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/WS;->f:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/tools/r8/internal/kT;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/kT;-><init>(Lcom/android/tools/r8/internal/WS;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WS;->E0()Lcom/android/tools/r8/internal/eT;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dT;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/kT;->a(Lcom/android/tools/r8/internal/dT;)V

    iget v3, v0, Lcom/android/tools/r8/internal/kT;->c:I

    if-le v3, p1, :cond_0

    return v1

    :cond_1
    iget p1, v0, Lcom/android/tools/r8/internal/kT;->c:I

    return p1

    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/WS;->k:I

    if-gt v0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final k0()I
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "LIR code should not be subject to hashing."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/y01;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/y01;-><init>()V

    return-object v0
.end method

.method public final o0()Lcom/android/tools/r8/internal/WS;
    .locals 0

    return-object p0
.end method

.method public final p0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/WS;->n:Lcom/android/tools/r8/internal/dH;

    return-void
.end method

.method public final q0()I
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/kT;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/kT;-><init>(Lcom/android/tools/r8/internal/WS;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WS;->E0()Lcom/android/tools/r8/internal/eT;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/dT;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/kT;->a(Lcom/android/tools/r8/internal/dT;)V

    iget v2, v0, Lcom/android/tools/r8/internal/kT;->c:I

    const v3, 0x7fffffff

    if-le v2, v3, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_1
    iget v0, v0, Lcom/android/tools/r8/internal/kT;->c:I

    return v0
.end method

.method public final s0()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WS;->E0()Lcom/android/tools/r8/internal/eT;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/dT;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/dT;->a()I

    move-result v1

    const/16 v2, 0xc2

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc3

    if-ne v1, v2, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/jT;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/jT;-><init>(Lcom/android/tools/r8/internal/WS;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jT;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x0()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WS;->E0()Lcom/android/tools/r8/internal/eT;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/dT;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/dT;->a()I

    move-result v1

    const/16 v2, 0xb1

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
