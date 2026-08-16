.class public final Lcom/android/tools/r8/internal/no0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/kB;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/internal/nJ;

.field public final e:Lcom/android/tools/r8/internal/oo0;

.field public final f:Lcom/android/tools/r8/internal/HE;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/no0;->a:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/kB;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/kB;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/no0;->b:Lcom/android/tools/r8/internal/kB;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/no0;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/no0;->d:Lcom/android/tools/r8/internal/nJ;

    new-instance v1, Lcom/android/tools/r8/internal/oo0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/oo0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/no0;->e:Lcom/android/tools/r8/internal/oo0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->v()Lcom/android/tools/r8/internal/HE;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/no0;->f:Lcom/android/tools/r8/internal/HE;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/no0;->e:Lcom/android/tools/r8/internal/oo0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/oo0;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/no0;->e:Lcom/android/tools/r8/internal/oo0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/oo0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/no0;->f:Lcom/android/tools/r8/internal/HE;

    .line 7
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/HE;->b:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/no0;->a:Lcom/android/tools/r8/graph/y;

    .line 9
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 10
    iget-object v3, p0, Lcom/android/tools/r8/internal/no0;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v2

    .line 11
    new-instance v3, Lcom/android/tools/r8/internal/Nr;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Nr;-><init>()V

    .line 12
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/Np;->e(I)V

    .line 13
    sget-object v4, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 14
    new-instance v4, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    const/16 v5, 0x1008

    .line 15
    invoke-static {v5, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v5

    .line 16
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v4

    .line 17
    iput-object v2, v4, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 18
    iput-object v2, v4, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 19
    sget-object v2, Lcom/android/tools/r8/internal/Ib;->g:Lcom/android/tools/r8/internal/Ib;

    .line 20
    iput-object v2, v4, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 21
    new-instance v2, Lcom/android/tools/r8/graph/J0;

    new-array v9, v0, [Lcom/android/tools/r8/internal/Np;

    aput-object v3, v9, v1

    .line 22
    sget-object v10, Lcom/android/tools/r8/graph/J0$a;->f:[Lcom/android/tools/r8/graph/J0$a;

    sget-object v11, Lcom/android/tools/r8/graph/J0$b;->d:[Lcom/android/tools/r8/graph/J0$b;

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcom/android/tools/r8/graph/J0;-><init>(III[Lcom/android/tools/r8/internal/Np;[Lcom/android/tools/r8/graph/J0$a;[Lcom/android/tools/r8/graph/J0$b;Lcom/android/tools/r8/graph/W0;)V

    .line 23
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/no0;->c:Lcom/android/tools/r8/graph/u1;

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/u1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    .line 26
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/j1;)V

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 27
    :goto_1
    new-instance v1, Lu/P0;

    invoke-direct {v1}, Lu/P0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/Hn1;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/Hn1;-><init>(Lcom/android/tools/r8/internal/no0;Z)V

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/no0;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/In1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/In1;-><init>(Lcom/android/tools/r8/internal/no0;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/no0;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-static {v2, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(ZLcom/android/tools/r8/graph/H5;)V
    .locals 10

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/no0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v0}, Lcom/android/tools/r8/internal/EW;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/internal/no0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v1

    .line 31
    iget-object v2, v1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 32
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    iput-object v2, v1, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 33
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    .line 34
    new-instance v3, Lcom/android/tools/r8/internal/NN0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/NN0;-><init>()V

    invoke-static {v3}, Lcom/android/tools/r8/internal/X60;->a(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v3

    .line 35
    invoke-interface {v2, v3}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 36
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 37
    iget-object v3, p0, Lcom/android/tools/r8/internal/no0;->f:Lcom/android/tools/r8/internal/HE;

    .line 38
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/HE;->b:Z

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 41
    iget-object v4, p0, Lcom/android/tools/r8/internal/no0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, p0, Lcom/android/tools/r8/internal/no0;->c:Lcom/android/tools/r8/graph/u1;

    .line 42
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->i0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 43
    invoke-interface {v2, v4, v0, v3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 44
    sget-boolean v4, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 45
    new-instance v4, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 46
    iget-object v5, p0, Lcom/android/tools/r8/internal/no0;->e:Lcom/android/tools/r8/internal/oo0;

    iget-object v5, v5, Lcom/android/tools/r8/internal/oo0;->d:Lcom/android/tools/r8/graph/A2;

    .line 47
    iput-object v5, v4, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 48
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/fK;

    .line 49
    sget-boolean v4, Lcom/android/tools/r8/internal/B60;->g:Z

    .line 50
    sget-object v4, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    .line 51
    iput-object v4, v3, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 52
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object v3

    .line 53
    invoke-interface {v2, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_7

    .line 54
    iget-object p1, p0, Lcom/android/tools/r8/internal/no0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/no0;->c:Lcom/android/tools/r8/graph/u1;

    .line 55
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/A2;->i0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 56
    invoke-interface {v2, p1, v0, v3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 57
    iget-object v3, p0, Lcom/android/tools/r8/internal/no0;->f:Lcom/android/tools/r8/internal/HE;

    .line 58
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/HE;->b:Z

    if-eqz v3, :cond_1

    .line 59
    sget-boolean v3, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 60
    new-instance v3, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 61
    iget-object v4, p0, Lcom/android/tools/r8/internal/no0;->e:Lcom/android/tools/r8/internal/oo0;

    iget-object v4, v4, Lcom/android/tools/r8/internal/oo0;->d:Lcom/android/tools/r8/graph/A2;

    .line 62
    iput-object v4, v3, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 63
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/fK;

    .line 64
    sget-boolean v4, Lcom/android/tools/r8/internal/B60;->g:Z

    .line 65
    sget-object v4, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    .line 66
    iput-object v4, v3, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 67
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object v3

    .line 68
    invoke-interface {v2, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/no0;->f:Lcom/android/tools/r8/internal/HE;

    .line 70
    iget-object v3, v3, Lcom/android/tools/r8/internal/HE;->a:Ljava/util/Set;

    .line 71
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 72
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 73
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 74
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 76
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 77
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 78
    sget-boolean v6, Lcom/android/tools/r8/internal/vh;->m:Z

    .line 79
    new-instance v6, Lcom/android/tools/r8/internal/uh;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/uh;-><init>()V

    .line 80
    iget-object v7, p0, Lcom/android/tools/r8/internal/no0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v8, p0, Lcom/android/tools/r8/internal/no0;->a:Lcom/android/tools/r8/graph/y;

    .line 81
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-static {v7, v9, v8}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    const/4 v8, 0x0

    .line 83
    invoke-interface {v0, v7, v8}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 84
    iput-object v7, v6, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 85
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v7

    .line 86
    iput-object v7, v6, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 87
    iget-object v7, p0, Lcom/android/tools/r8/internal/no0;->c:Lcom/android/tools/r8/graph/u1;

    .line 88
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/A2;->i0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 89
    iput-object v5, v6, Lcom/android/tools/r8/internal/uh;->d:Lcom/android/tools/r8/graph/L2;

    .line 90
    new-instance v5, Lcom/android/tools/r8/internal/vh;

    iget-object v7, v6, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object v8, v6, Lcom/android/tools/r8/internal/uh;->d:Lcom/android/tools/r8/graph/L2;

    invoke-direct {v5, v7, v8}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    .line 91
    iget-object v6, v6, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v6, :cond_3

    .line 92
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 93
    :cond_3
    sget-boolean v6, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 94
    new-instance v6, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 95
    iget-object v7, p0, Lcom/android/tools/r8/internal/no0;->e:Lcom/android/tools/r8/internal/oo0;

    iget-object v7, v7, Lcom/android/tools/r8/internal/oo0;->c:Lcom/android/tools/r8/graph/A2;

    .line 96
    iput-object v7, v6, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 97
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    filled-new-array {p1, v7}, [Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 98
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v6

    .line 99
    check-cast v6, Lcom/android/tools/r8/internal/fK;

    .line 100
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v7

    .line 101
    iput-object v7, v6, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 102
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object v6

    .line 103
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    iget-object v6, p0, Lcom/android/tools/r8/internal/no0;->d:Lcom/android/tools/r8/internal/nJ;

    .line 104
    invoke-interface {v2, v0, v1, v5, v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;

    move-result-object v2

    .line 105
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    .line 106
    sget-boolean v6, Lcom/android/tools/r8/internal/no0;->g:Z

    if-nez v6, :cond_2

    if-ne v5, v4, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 107
    :cond_5
    iget-object v4, v1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 108
    iget-object v2, v1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    iput-object v2, v1, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 109
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    .line 110
    :cond_6
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 111
    :cond_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 112
    iget-object p1, p0, Lcom/android/tools/r8/internal/no0;->b:Lcom/android/tools/r8/internal/kB;

    iget-object p1, p1, Lcom/android/tools/r8/internal/kB;->x:Lcom/android/tools/r8/ir/optimize/F;

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/ir/optimize/F;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    .line 113
    new-instance p1, Lcom/android/tools/r8/internal/tB;

    iget-object v1, p0, Lcom/android/tools/r8/internal/no0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/no0;->b:Lcom/android/tools/r8/internal/kB;

    iget-object v2, v2, Lcom/android/tools/r8/internal/kB;->x:Lcom/android/tools/r8/ir/optimize/F;

    invoke-direct {p1, v1, v2}, Lcom/android/tools/r8/internal/tB;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/F;)V

    .line 114
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object v1

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/lB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/J0;

    .line 115
    iget-object v0, p0, Lcom/android/tools/r8/internal/no0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final synthetic b(ZLcom/android/tools/r8/graph/H5;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/no0;->a(ZLcom/android/tools/r8/graph/H5;)V

    return-void
.end method
