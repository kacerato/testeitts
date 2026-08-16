.class public final Lcom/android/tools/r8/ir/optimize/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/b;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/b;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/b;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/I5;->d(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->C:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/tZ;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    .line 78
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/CE;->c(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/H5;
    .locals 7

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/b;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 46
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->u3:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/b;->a:Lcom/android/tools/r8/graph/y;

    .line 49
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 50
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 51
    new-instance v3, Lv/i0;

    invoke-direct {v3}, Lv/i0;-><init>()V

    .line 52
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/ir/optimize/b;->a:Lcom/android/tools/r8/graph/y;

    new-instance v6, Lv/j0;

    invoke-direct {v6, p0, v1, v0}, Lv/j0;-><init>(Lcom/android/tools/r8/ir/optimize/b;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/u1;)V

    .line 53
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/b;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/ir/optimize/b;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->u3:Lcom/android/tools/r8/graph/M2;

    .line 55
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {v3, v4, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v3

    .line 58
    sget-boolean v4, Lcom/android/tools/r8/internal/xt;->a:Z

    .line 59
    new-instance v4, Lcom/android/tools/r8/internal/kv;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/kv;-><init>(Lcom/android/tools/r8/internal/de;)V

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 62
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/xt;)V

    .line 63
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/dX;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 64
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dX;->d()Lcom/android/tools/r8/internal/fX;

    move-result-object p1

    .line 65
    iget-object p2, p2, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 66
    invoke-interface {p1, v0, p2}, Lcom/android/tools/r8/ir/optimize/c;->e(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/synthesis/N;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/b;->a:Lcom/android/tools/r8/graph/y;

    .line 69
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 70
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 71
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 p1, 0x1009

    const/4 v0, 0x0

    .line 72
    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    .line 73
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 74
    new-instance p1, Lv/g0;

    invoke-direct {p1, p2}, Lv/g0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 75
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/b;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p2, Lcom/android/tools/r8/internal/P60;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/b;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    sget-object v1, Lcom/android/tools/r8/internal/C2;->u:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 6
    :cond_2
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v1

    .line 8
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 9
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 10
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 13
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 14
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 15
    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/b;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->N4:Lcom/android/tools/r8/graph/z1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/z1;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 16
    sget-boolean v5, Lcom/android/tools/r8/ir/optimize/b;->d:Z

    const/4 v6, 0x3

    if-nez v5, :cond_5

    .line 17
    iget-object v5, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_5
    :goto_3
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 20
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v7

    .line 21
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_2

    .line 22
    :cond_6
    sget-boolean v8, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 23
    new-instance v8, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 24
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/ir/optimize/b;->a(Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/H5;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/A2;

    .line 25
    iput-object v9, v8, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 26
    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/b;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v9, v9, Lcom/android/tools/r8/graph/u1;->u3:Lcom/android/tools/r8/graph/M2;

    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/b;->a:Lcom/android/tools/r8/graph/y;

    .line 27
    invoke-virtual {v9, v10}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v9

    const/4 v10, 0x0

    .line 28
    invoke-interface {p1, v9, v10}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    .line 29
    iput-object v9, v8, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 30
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v9

    .line 31
    iput-object v9, v8, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 32
    iget-object v4, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v9, 0x1

    .line 33
    invoke-virtual {v4, v9, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/fK;

    .line 34
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object v4

    .line 35
    invoke-interface {v2, v4, v10}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 36
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v5, v4, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 37
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 38
    :cond_7
    new-instance v2, Lv/h0;

    invoke-direct {v2}, Lv/h0;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    .line 39
    :cond_8
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/b;->a:Lcom/android/tools/r8/graph/y;

    .line 40
    iget-object p3, v0, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    .line 41
    new-instance p3, Lcom/android/tools/r8/internal/lu0;

    const/4 v1, 0x0

    .line 42
    invoke-direct {p3, p2, p1, v1}, Lcom/android/tools/r8/internal/lu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V

    const/4 p2, 0x2

    .line 43
    invoke-virtual {p3, v0, p2}, Lcom/android/tools/r8/internal/lu0;->a(Ljava/lang/Iterable;I)V

    .line 44
    :cond_9
    sget-boolean p2, Lcom/android/tools/r8/ir/optimize/b;->d:Z

    if-nez p2, :cond_b

    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/b;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_4
    return-void
.end method
