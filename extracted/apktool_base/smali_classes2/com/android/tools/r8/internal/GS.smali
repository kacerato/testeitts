.class public final Lcom/android/tools/r8/internal/GS;
.super Lcom/android/tools/r8/internal/iT;
.source "SourceFile"


# static fields
.field public static final synthetic s:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/y;

.field public final d:Lcom/android/tools/r8/internal/WS;

.field public final e:Lcom/android/tools/r8/graph/A2;

.field public final f:Lcom/android/tools/r8/internal/aT;

.field public final g:Lcom/android/tools/r8/internal/z10;

.field public final h:Lcom/android/tools/r8/graph/proto/j;

.field public final i:Lcom/android/tools/r8/internal/dH;

.field public final j:Lcom/android/tools/r8/internal/mB;

.field public k:Lcom/android/tools/r8/internal/W5;

.field public l:I

.field public final m:Lcom/android/tools/r8/internal/B60;

.field public n:Lcom/android/tools/r8/internal/B60;

.field public o:Lcom/android/tools/r8/internal/SS;

.field public p:I

.field public final q:[Lcom/android/tools/r8/internal/SS;

.field public final r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/aT;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/iT;-><init>(Lcom/android/tools/r8/internal/WS;)V

    new-instance v0, Lcom/android/tools/r8/internal/z10;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/z10;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/GS;->g:Lcom/android/tools/r8/internal/z10;

    new-instance v0, Lcom/android/tools/r8/internal/dH;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/GS;->i:Lcom/android/tools/r8/internal/dH;

    new-instance v0, Lcom/android/tools/r8/internal/mB;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mB;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/GS;->j:Lcom/android/tools/r8/internal/mB;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/tools/r8/internal/GS;->l:I

    iput-object v0, p0, Lcom/android/tools/r8/internal/GS;->o:Lcom/android/tools/r8/internal/SS;

    iput v1, p0, Lcom/android/tools/r8/internal/GS;->p:I

    iput-object p4, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    iput-object p1, p0, Lcom/android/tools/r8/internal/GS;->d:Lcom/android/tools/r8/internal/WS;

    iput-object p2, p0, Lcom/android/tools/r8/internal/GS;->e:Lcom/android/tools/r8/graph/A2;

    iput-object p5, p0, Lcom/android/tools/r8/internal/GS;->f:Lcom/android/tools/r8/internal/aT;

    iput-object p7, p0, Lcom/android/tools/r8/internal/GS;->h:Lcom/android/tools/r8/graph/proto/j;

    sget-boolean p4, Lcom/android/tools/r8/internal/GS;->s:Z

    if-nez p4, :cond_1

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p6, :cond_3

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/GS;->r:Z

    iget-object p1, p1, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    iput-object p1, p0, Lcom/android/tools/r8/internal/GS;->q:[Lcom/android/tools/r8/internal/SS;

    array-length p4, p1

    if-lez p4, :cond_2

    aget-object p1, p1, v1

    iget p4, p1, Lcom/android/tools/r8/internal/SS;->b:I

    if-nez p4, :cond_2

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/SS;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/B60$c$a;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/B60$c$a;

    iput-boolean p3, p1, Lcom/android/tools/r8/internal/B60$a;->e:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$c$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/B60$c$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/GS;->n:Lcom/android/tools/r8/internal/B60;

    goto :goto_2

    :cond_3
    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/GS;->r:Z

    new-instance p4, Lcom/android/tools/r8/internal/HF0;

    invoke-direct {p4, p0}, Lcom/android/tools/r8/internal/HF0;-><init>(Lcom/android/tools/r8/internal/GS;)V

    invoke-virtual {p1, p6, p2, p3, p4}, Lcom/android/tools/r8/internal/WS;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/A2;ZLjava/util/function/Consumer;)[Lcom/android/tools/r8/internal/SS;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/GS;->q:[Lcom/android/tools/r8/internal/SS;

    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/GS;->n:Lcom/android/tools/r8/internal/B60;

    iput-object p1, p0, Lcom/android/tools/r8/internal/GS;->m:Lcom/android/tools/r8/internal/B60;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 9
    iget v0, p0, Lcom/android/tools/r8/internal/GS;->l:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->d:Lcom/android/tools/r8/internal/WS;

    .line 10
    iget v1, v1, Lcom/android/tools/r8/internal/WS;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(II)Lcom/android/tools/r8/internal/W5;
    .locals 0

    if-lt p2, p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/GS;->i()V

    .line 93
    iget-object p1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    return-object p1

    .line 94
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/GS;->s:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/GS;->i:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/dH;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 95
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->e(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Integer;)Lcom/android/tools/r8/internal/W5;
    .locals 1

    .line 37
    new-instance p1, Lcom/android/tools/r8/internal/W5;

    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->j:Lcom/android/tools/r8/internal/mB;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->g:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/W5;->d(I)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/z7;)Lcom/android/tools/r8/internal/f60;
    .locals 8

    .line 74
    iget v0, p0, Lcom/android/tools/r8/internal/GS;->l:I

    .line 75
    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->d:Lcom/android/tools/r8/internal/WS;

    .line 76
    iget v1, v1, Lcom/android/tools/r8/internal/WS;->i:I

    add-int v3, v0, v1

    .line 77
    iget-object v2, p0, Lcom/android/tools/r8/internal/GS;->f:Lcom/android/tools/r8/internal/aT;

    new-instance v4, Lcom/android/tools/r8/internal/IF0;

    invoke-direct {v4, p0, v0}, Lcom/android/tools/r8/internal/IF0;-><init>(Lcom/android/tools/r8/internal/GS;I)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->d:Lcom/android/tools/r8/internal/WS;

    .line 78
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/tools/r8/internal/DF0;

    invoke-direct {v6, v0}, Lcom/android/tools/r8/internal/DF0;-><init>(Lcom/android/tools/r8/internal/WS;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->d:Lcom/android/tools/r8/internal/WS;

    .line 79
    iget-object v7, v0, Lcom/android/tools/r8/internal/WS;->e:Lcom/android/tools/r8/internal/uT;

    move-object v5, p1

    .line 80
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/aT;->a(ILjava/util/function/IntFunction;Lcom/android/tools/r8/internal/z7;Ljava/util/function/Function;Lcom/android/tools/r8/internal/uT;)Lcom/android/tools/r8/internal/f60;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->o:Lcom/android/tools/r8/internal/SS;

    if-eqz v0, :cond_1

    .line 82
    iget v1, v0, Lcom/android/tools/r8/internal/SS;->b:I

    .line 83
    iget v2, p0, Lcom/android/tools/r8/internal/GS;->l:I

    if-gt v1, v2, :cond_1

    .line 84
    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->e:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/GS;->m:Lcom/android/tools/r8/internal/B60;

    .line 85
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B60;->h()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    .line 86
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/B60;->f:Z

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/SS;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/GS;->n:Lcom/android/tools/r8/internal/B60;

    .line 88
    iget v0, p0, Lcom/android/tools/r8/internal/GS;->p:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->q:[Lcom/android/tools/r8/internal/SS;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 89
    iput v2, p0, Lcom/android/tools/r8/internal/GS;->p:I

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 90
    :goto_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/GS;->o:Lcom/android/tools/r8/internal/SS;

    .line 91
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/GS;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/GS;->l:I

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 10

    .line 15
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/CH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->i:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dH;->keySet()Lcom/android/tools/r8/internal/nI;

    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/tools/r8/internal/YG;

    .line 18
    iget-object v2, v1, Lcom/android/tools/r8/internal/YG;->b:Lcom/android/tools/r8/internal/dH;

    .line 19
    iget v2, v2, Lcom/android/tools/r8/internal/dH;->h:I

    .line 20
    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 21
    new-instance v2, Lcom/android/tools/r8/internal/XG;

    iget-object v1, v1, Lcom/android/tools/r8/internal/YG;->b:Lcom/android/tools/r8/internal/dH;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/XG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 22
    iget-object v1, v0, Lcom/android/tools/r8/internal/CH;->b:[I

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/SH;->a(Lcom/android/tools/r8/internal/PH;[I)I

    move-result v1

    iput v1, v0, Lcom/android/tools/r8/internal/CH;->c:I

    .line 23
    new-instance v1, Lcom/android/tools/r8/internal/GF0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/GF0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 24
    :goto_0
    iget v2, v0, Lcom/android/tools/r8/internal/CH;->c:I

    if-ge v1, v2, :cond_2

    .line 25
    iget-object v2, p0, Lcom/android/tools/r8/internal/GS;->i:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    const/4 v3, 0x1

    .line 26
    iput-boolean v3, v2, Lcom/android/tools/r8/internal/W5;->i:Z

    .line 27
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 29
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 30
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->N1()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 31
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 32
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_2
    new-instance v9, Lcom/android/tools/r8/internal/fB;

    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v3, p0, Lcom/android/tools/r8/internal/GS;->m:Lcom/android/tools/r8/internal/B60;

    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->f:Lcom/android/tools/r8/internal/aT;

    .line 35
    iget-object v5, v0, Lcom/android/tools/r8/internal/aT;->b:Lcom/android/tools/r8/internal/z10;

    .line 36
    iget-object v6, p0, Lcom/android/tools/r8/internal/GS;->g:Lcom/android/tools/r8/internal/z10;

    iget-object v7, p0, Lcom/android/tools/r8/internal/GS;->j:Lcom/android/tools/r8/internal/mB;

    move-object v0, v9

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/internal/fB;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;Ljava/util/LinkedList;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/mB;Lcom/android/tools/r8/internal/EW$a;)V

    return-object v9
.end method

.method public final a(ZLcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/k3;
    .locals 2

    .line 96
    sget-boolean v0, Lcom/android/tools/r8/internal/GS;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 97
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/k3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    .line 98
    iget-object v1, v1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 99
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v1

    .line 100
    invoke-direct {v0, p2, v1, p1}, Lcom/android/tools/r8/internal/k3;-><init>(Lcom/android/tools/r8/internal/xw0;IZ)V

    .line 101
    iget-object p1, p0, Lcom/android/tools/r8/internal/GS;->n:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 102
    iget-object p1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p1

    const/4 p2, 0x0

    .line 103
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;
    .locals 4

    .line 68
    iget v0, p0, Lcom/android/tools/r8/internal/GS;->l:I

    .line 69
    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->d:Lcom/android/tools/r8/internal/WS;

    .line 70
    iget v2, v1, Lcom/android/tools/r8/internal/WS;->i:I

    add-int/2addr v0, v2

    .line 71
    iget-object v2, p0, Lcom/android/tools/r8/internal/GS;->f:Lcom/android/tools/r8/internal/aT;

    .line 72
    new-instance v3, Lcom/android/tools/r8/internal/DF0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/DF0;-><init>(Lcom/android/tools/r8/internal/WS;)V

    .line 73
    invoke-virtual {v2, v0, p1, v3}, Lcom/android/tools/r8/internal/aT;->a(ILcom/android/tools/r8/internal/pu0;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Object;[I[ILjava/lang/Integer;)Lcom/android/tools/r8/internal/zE;
    .locals 1

    .line 158
    new-instance v0, Lcom/android/tools/r8/internal/tI;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/tI;-><init>(Lcom/android/tools/r8/internal/xw0;[I[II)V

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;[Lcom/android/tools/r8/graph/L2;[ILjava/lang/Integer;)Lcom/android/tools/r8/internal/zE;
    .locals 1

    .line 166
    new-instance v0, Lcom/android/tools/r8/internal/lq0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/lq0;-><init>(Lcom/android/tools/r8/internal/xw0;[Lcom/android/tools/r8/graph/L2;[II)V

    return-object v0
.end method

.method public final a(I)V
    .locals 4

    .line 104
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->j()Lcom/android/tools/r8/internal/Fx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/android/tools/r8/internal/qh;

    int-to-long v2, p1

    invoke-direct {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(IJ[SLjava/lang/Object;)V
    .locals 7

    .line 234
    new-instance v6, Lcom/android/tools/r8/internal/rZ;

    invoke-virtual {p0, p5}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    move-object v0, v6

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/rZ;-><init>(Lcom/android/tools/r8/internal/xw0;IJ[S)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(ILcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 253
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    invoke-static {p2, v0, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 255
    new-instance v1, Lcom/android/tools/r8/internal/vZ;

    invoke-direct {v1, p2, p1, v0}, Lcom/android/tools/r8/internal/vZ;-><init>(Lcom/android/tools/r8/graph/M2;ILcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    packed-switch p1, :pswitch_data_0

    .line 235
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected cmp opcode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    .line 236
    :pswitch_0
    sget-object p1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    .line 237
    sget-object v0, Lcom/android/tools/r8/internal/re;->c:Lcom/android/tools/r8/internal/re;

    :goto_0
    move-object v2, p1

    move-object v3, v0

    goto :goto_1

    .line 238
    :pswitch_1
    sget-object p1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    .line 239
    sget-object v0, Lcom/android/tools/r8/internal/re;->d:Lcom/android/tools/r8/internal/re;

    goto :goto_0

    .line 240
    :pswitch_2
    sget-object p1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    .line 241
    sget-object v0, Lcom/android/tools/r8/internal/re;->c:Lcom/android/tools/r8/internal/re;

    goto :goto_0

    .line 242
    :pswitch_3
    sget-object p1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    .line 243
    sget-object v0, Lcom/android/tools/r8/internal/re;->d:Lcom/android/tools/r8/internal/re;

    goto :goto_0

    .line 244
    :pswitch_4
    sget-object p1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    .line 245
    sget-object v0, Lcom/android/tools/r8/internal/re;->b:Lcom/android/tools/r8/internal/re;

    goto :goto_0

    .line 246
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 247
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 248
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 249
    new-instance p1, Lcom/android/tools/r8/internal/se;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/se;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/re;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x94
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(J)V
    .locals 2

    .line 106
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->i()Lcom/android/tools/r8/internal/kt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/android/tools/r8/internal/qh;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Ljava/util/ArrayList;)V
    .locals 2

    .line 190
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->b(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 191
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p3

    .line 192
    new-instance v1, Lcom/android/tools/r8/internal/YJ;

    invoke-direct {v1, p1, p2, v0, p3}, Lcom/android/tools/r8/internal/YJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 193
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;)V
    .locals 2

    .line 198
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->b(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 199
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 200
    new-instance v1, Lcom/android/tools/r8/internal/TJ;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/tools/r8/internal/TJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 201
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Z)V
    .locals 2

    .line 194
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->b(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 195
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 196
    new-instance v1, Lcom/android/tools/r8/internal/QJ;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/QJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V

    .line 197
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/C2;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 130
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->O2:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 131
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/android/tools/r8/internal/mh;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/mh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/C2;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;Ljava/util/ArrayList;)V
    .locals 2

    .line 186
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 187
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 188
    new-instance v1, Lcom/android/tools/r8/internal/OJ;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/tools/r8/internal/OJ;-><init>(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/internal/xw0;Ljava/util/ArrayList;)V

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 135
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->R2:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 136
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/android/tools/r8/internal/nh;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/nh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/I2;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 121
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/android/tools/r8/internal/uq;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/tools/r8/internal/uq;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 117
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/android/tools/r8/internal/vh;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 256
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 257
    new-instance v1, Lcom/android/tools/r8/internal/sD;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/sD;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)V
    .locals 2

    .line 222
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 223
    new-instance v1, Lcom/android/tools/r8/internal/mE;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-direct {v1, v0, p2, p1}, Lcom/android/tools/r8/internal/mE;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;Z)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->a()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 221
    new-instance v1, Lcom/android/tools/r8/internal/jc;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-direct {v1, v0, p2, p1, p3}, Lcom/android/tools/r8/internal/jc;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Z)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/ArrayList;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 230
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 233
    new-instance v1, Lcom/android/tools/r8/internal/XJ;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Lcom/android/tools/r8/internal/XJ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Z)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 125
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    sget-boolean v2, Lcom/android/tools/r8/internal/pu0;->a:Z

    .line 126
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v2, v1, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/android/tools/r8/internal/jh;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/tools/r8/internal/jh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Z)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 203
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 204
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/android/tools/r8/internal/Mo0;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/Mo0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Ljava/lang/Object;)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 208
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 209
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 211
    new-instance v1, Lcom/android/tools/r8/internal/bE;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-direct {v1, v0, p2, p1}, Lcom/android/tools/r8/internal/bE;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 212
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 213
    new-instance v0, Lcom/android/tools/r8/internal/rE;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/tools/r8/internal/rE;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Z)V

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y5;Ljava/lang/Object;)V
    .locals 2

    .line 263
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 264
    new-instance v1, Lcom/android/tools/r8/internal/F40;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Lcom/android/tools/r8/internal/F40;-><init>(Lcom/android/tools/r8/graph/y5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/B60;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/android/tools/r8/internal/GS;->n:Lcom/android/tools/r8/internal/B60;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NB;ILjava/lang/Object;)V
    .locals 1

    .line 143
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->e(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    .line 144
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 145
    new-instance v0, Lcom/android/tools/r8/internal/EB;

    invoke-direct {v0, p1, p3}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 146
    iget-object p1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 147
    iget-object p1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    iget p2, p0, Lcom/android/tools/r8/internal/GS;->l:I

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->e(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NB;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 149
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->e(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    .line 150
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 151
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 152
    new-instance v0, Lcom/android/tools/r8/internal/EB;

    invoke-static {p3, p4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 153
    iget-object p1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 154
    iget-object p1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    iget p2, p0, Lcom/android/tools/r8/internal/GS;->l:I

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->e(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    const/4 p1, 0x0

    .line 155
    iput-object p1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 140
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/android/tools/r8/internal/w10;

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-direct {v1, p1, p2, v0, p3}, Lcom/android/tools/r8/internal/w10;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;)V
    .locals 2

    .line 113
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/android/tools/r8/internal/fZ;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Lcom/android/tools/r8/internal/fZ;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 108
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 110
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 111
    new-instance v1, Lcom/android/tools/r8/internal/d2;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/d2;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/YV;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/internal/YV;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 6
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/N3;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/N3;-><init>(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/YV;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 250
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 251
    new-instance v0, Lcom/android/tools/r8/internal/T3;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/T3;-><init>(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)V
    .locals 6

    .line 39
    iget v0, p0, Lcom/android/tools/r8/internal/GS;->l:I

    .line 40
    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->d:Lcom/android/tools/r8/internal/WS;

    .line 41
    iget v1, v1, Lcom/android/tools/r8/internal/WS;->i:I

    add-int/2addr v0, v1

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/GS;->i()V

    .line 43
    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->o:Lcom/android/tools/r8/internal/SS;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 44
    iget v3, v1, Lcom/android/tools/r8/internal/SS;->b:I

    .line 45
    iget v4, p0, Lcom/android/tools/r8/internal/GS;->l:I

    if-gt v3, v4, :cond_1

    .line 46
    iget-object v3, p0, Lcom/android/tools/r8/internal/GS;->e:Lcom/android/tools/r8/graph/A2;

    iget-object v4, p0, Lcom/android/tools/r8/internal/GS;->m:Lcom/android/tools/r8/internal/B60;

    .line 47
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/B60;->h()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    .line 48
    iget-boolean v4, v4, Lcom/android/tools/r8/internal/B60;->f:Z

    .line 49
    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/SS;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/GS;->n:Lcom/android/tools/r8/internal/B60;

    .line 50
    iget v1, p0, Lcom/android/tools/r8/internal/GS;->p:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/GS;->q:[Lcom/android/tools/r8/internal/SS;

    array-length v4, v3

    if-ge v1, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 51
    iput v4, p0, Lcom/android/tools/r8/internal/GS;->p:I

    aget-object v1, v3, v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 52
    :goto_0
    iput-object v1, p0, Lcom/android/tools/r8/internal/GS;->o:Lcom/android/tools/r8/internal/SS;

    .line 53
    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/GS;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/GS;->l:I

    .line 54
    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->n:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 55
    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    .line 56
    invoke-virtual {v1, p1, v2}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    .line 57
    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->d:Lcom/android/tools/r8/internal/WS;

    .line 58
    iget-object v1, v1, Lcom/android/tools/r8/internal/WS;->m:Lcom/android/tools/r8/internal/QS;

    if-nez v1, :cond_2

    goto :goto_1

    .line 59
    :cond_2
    iget-object v1, v1, Lcom/android/tools/r8/internal/QS;->c:Lcom/android/tools/r8/internal/dH;

    if-nez v1, :cond_3

    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [I

    :goto_1
    if-eqz v2, :cond_4

    .line 61
    array-length v1, v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    aget v4, v2, v3

    .line 62
    iget-object v5, p0, Lcom/android/tools/r8/internal/GS;->d:Lcom/android/tools/r8/internal/WS;

    .line 63
    iget-object v5, v5, Lcom/android/tools/r8/internal/WS;->e:Lcom/android/tools/r8/internal/uT;

    .line 64
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/uT;->a()Lcom/android/tools/r8/internal/mT;

    move-result-object v5

    .line 65
    invoke-virtual {v5, v4, v0}, Lcom/android/tools/r8/internal/mT;->a(II)Ljava/lang/Object;

    move-result-object v4

    .line 66
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 67
    invoke-virtual {v4, p1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/zE;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 215
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 217
    new-instance v1, Lcom/android/tools/r8/internal/P3;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/P3;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/android/tools/r8/graph/j0;)V
    .locals 1

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/j0;)V

    .line 14
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/GS;->s:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object p1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/LS;)V
    .locals 2

    .line 156
    iget-object v0, p2, Lcom/android/tools/r8/internal/LS;->b:[I

    .line 157
    iget-object p2, p2, Lcom/android/tools/r8/internal/LS;->c:[I

    new-instance v1, Lcom/android/tools/r8/internal/LF0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/r8/internal/LF0;-><init>(Lcom/android/tools/r8/internal/GS;Ljava/lang/Object;[I)V

    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/internal/GS;->a([ILjava/util/function/BiFunction;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/OS;)V
    .locals 5

    .line 159
    iget-object v0, p2, Lcom/android/tools/r8/internal/OS;->b:[I

    array-length v0, v0

    .line 160
    new-array v1, v0, [Lcom/android/tools/r8/graph/L2;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/tools/r8/internal/GS;->d:Lcom/android/tools/r8/internal/WS;

    iget-object v4, p2, Lcom/android/tools/r8/internal/OS;->b:[I

    aget v4, v4, v2

    .line 162
    iget-object v3, v3, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    .line 163
    aget-object v3, v3, v4

    .line 164
    check-cast v3, Lcom/android/tools/r8/graph/L2;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_0
    iget-object p2, p2, Lcom/android/tools/r8/internal/OS;->c:[I

    new-instance v0, Lcom/android/tools/r8/internal/EF0;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/internal/EF0;-><init>(Lcom/android/tools/r8/internal/GS;Ljava/lang/Object;[Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/internal/GS;->a([ILjava/util/function/BiFunction;)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 5

    .line 224
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/z7;)Lcom/android/tools/r8/internal/f60;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 226
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 227
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/f60;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public final a([ILjava/util/function/BiFunction;)V
    .locals 6

    .line 167
    array-length v0, p1

    .line 168
    new-array v1, v0, [I

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    new-instance v3, Lcom/android/tools/r8/internal/hF;

    .line 171
    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/hF;-><init>(I)V

    const/4 v0, 0x0

    .line 172
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 173
    aget v4, p1, v0

    .line 174
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/hF;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v4

    aput v4, v1, v0

    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 177
    aput v5, v1, v0

    .line 178
    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/internal/hF;->b(II)I

    .line 179
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/GS;->e(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 182
    sget-boolean p1, Lcom/android/tools/r8/internal/GS;->s:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 183
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/tools/r8/internal/KF0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/KF0;-><init>(Lcom/android/tools/r8/internal/W5;)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 184
    iget-object p1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    iget p2, p0, Lcom/android/tools/r8/internal/GS;->l:I

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->e(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    return-void
.end method

.method public final a([Lcom/android/tools/r8/graph/l1;Ljava/util/ArrayList;)V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 259
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 260
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 261
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 262
    new-instance v1, Lcom/android/tools/r8/internal/rc0;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Lcom/android/tools/r8/internal/rc0;-><init>([Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/internal/xw0;
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b()V
    .locals 4

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/qh;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(I)V
    .locals 4

    .line 11
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/android/tools/r8/internal/qh;

    int-to-long v2, p1

    invoke-direct {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(ILcom/android/tools/r8/graph/M2;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->f:Lcom/android/tools/r8/internal/aT;

    iget-object v2, p0, Lcom/android/tools/r8/internal/GS;->d:Lcom/android/tools/r8/internal/WS;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/DF0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/DF0;-><init>(Lcom/android/tools/r8/internal/WS;)V

    .line 7
    invoke-virtual {v1, p1, v0, v3}, Lcom/android/tools/r8/internal/aT;->a(ILcom/android/tools/r8/internal/pu0;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/GS;->a(ZLcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/k3;

    return-void
.end method

.method public final b(J)V
    .locals 2

    .line 13
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->l()Lcom/android/tools/r8/internal/tU;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/qh;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Z)V
    .locals 2

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->b(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 24
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 25
    new-instance v1, Lcom/android/tools/r8/internal/gK;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/gK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 37
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/android/tools/r8/internal/bY;

    iget-object v2, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/android/tools/r8/internal/bY;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/nJ;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 32
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/android/tools/r8/internal/oZ;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-direct {v1, v0, p2, p1}, Lcom/android/tools/r8/internal/oZ;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Ljava/util/ArrayList;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    .line 44
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/android/tools/r8/internal/qZ;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Lcom/android/tools/r8/internal/qZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;Ljava/lang/Object;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/android/tools/r8/internal/No0;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/No0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;)V
    .locals 2

    .line 20
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/android/tools/r8/internal/e10;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Lcom/android/tools/r8/internal/e10;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 15
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 17
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 18
    new-instance v1, Lcom/android/tools/r8/internal/t2;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/t2;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    .line 41
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/android/tools/r8/internal/ej;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/ej;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/Pf0;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/Pf0;-><init>(Lcom/android/tools/r8/internal/xw0;I)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;)V
    .locals 2

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->b(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 11
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 12
    new-instance v1, Lcom/android/tools/r8/internal/mK;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Z)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->b(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 7
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/hK;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/hK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 14
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/android/tools/r8/internal/tZ;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/tZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->a()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/android/tools/r8/internal/Qk0;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-direct {v1, v0, p2, p1}, Lcom/android/tools/r8/internal/Qk0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/Ws;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/Ws;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    .line 21
    new-instance v0, Lcom/android/tools/r8/internal/WX;

    sget-object v1, Lcom/android/tools/r8/internal/XX;->b:Lcom/android/tools/r8/internal/XX;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/WX;-><init>(Lcom/android/tools/r8/internal/XX;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/cj;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cj;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/GS;->e(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 21
    new-instance v0, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/GS;->r:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->f:Lcom/android/tools/r8/internal/aT;

    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->d:Lcom/android/tools/r8/internal/WS;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/DF0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/DF0;-><init>(Lcom/android/tools/r8/internal/WS;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/tools/r8/internal/aT;->a(ILcom/android/tools/r8/internal/pu0;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 7
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/GS;->a(ZLcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/k3;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 12
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-nez v0, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p1, Lcom/android/tools/r8/internal/xw0;->j:Z

    return-void
.end method

.method public final d(Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 15
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 17
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 18
    new-instance v1, Lcom/android/tools/r8/internal/gY;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/gY;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 2

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/WX;

    sget-object v1, Lcom/android/tools/r8/internal/XX;->c:Lcom/android/tools/r8/internal/XX;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/WX;-><init>(Lcom/android/tools/r8/internal/XX;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final e(I)Lcom/android/tools/r8/internal/W5;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->i:Lcom/android/tools/r8/internal/dH;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/FF0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/FF0;-><init>(Lcom/android/tools/r8/internal/GS;)V

    .line 3
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    return-object p1
.end method

.method public final e()V
    .locals 1

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/hj;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hj;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 4
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/A40;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/A40;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->h:Lcom/android/tools/r8/graph/proto/j;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/graph/proto/k;->d:Lcom/android/tools/r8/graph/M2;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/GS;->h()V

    return-void

    .line 14
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/yk0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/yk0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/GS;->l:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->d(I)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 3
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/if0;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/if0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/So0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/So0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/av0;

    const-string v1, "Missing IR conversion"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/Ol0;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/Ol0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/Or0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Or0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    return-void
.end method

.method public final h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->f:Lcom/android/tools/r8/internal/aT;

    iget-object v1, p0, Lcom/android/tools/r8/internal/GS;->d:Lcom/android/tools/r8/internal/WS;

    .line 2
    iget-object v1, v1, Lcom/android/tools/r8/internal/WS;->e:Lcom/android/tools/r8/internal/uT;

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/aT;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/uT;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method

.method public final h()V
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/yk0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/yk0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    return-void
.end method

.method public final h(Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 4
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/Sl0;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/Sl0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final i()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    if-nez v0, :cond_2

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/GS;->l:I

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->e(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->d:Lcom/android/tools/r8/internal/WS;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    if-eqz v0, :cond_4

    .line 5
    iget v1, p0, Lcom/android/tools/r8/internal/GS;->l:I

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/VS;->b:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/N8;

    if-eqz v0, :cond_4

    .line 7
    iget-object v1, v0, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 8
    new-instance v2, Lcom/android/tools/r8/internal/MF0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/MF0;-><init>(Lcom/android/tools/r8/internal/GS;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/KF0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/KF0;-><init>(Lcom/android/tools/r8/internal/W5;)V

    invoke-interface {v1, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 15
    iget-object v5, v2, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_0

    .line 16
    iget-object v5, v2, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 17
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 18
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/N8;

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/N8;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v1, v2, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    return-void

    .line 20
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/GS;->s:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->i:Lcom/android/tools/r8/internal/dH;

    iget v1, p0, Lcom/android/tools/r8/internal/GS;->l:I

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/dH;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public final i(Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 21
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/android/tools/r8/internal/Qq0;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/Qq0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/GS;->d:Lcom/android/tools/r8/internal/WS;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/WS;->m:Lcom/android/tools/r8/internal/QS;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/JF0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/JF0;-><init>(Lcom/android/tools/r8/internal/GS;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/QS;->a(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final j(Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/mw0;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/mw0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final k(Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/GS;->h(Ljava/lang/Object;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    new-instance v1, Lcom/android/tools/r8/internal/fy0;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/fy0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method
