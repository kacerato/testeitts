.class public final Lcom/android/tools/r8/ir/optimize/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/androidapi/a;

.field public final c:Lcom/android/tools/r8/synthesis/J;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/v0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/v0;->b:Lcom/android/tools/r8/androidapi/a;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/v0;->c:Lcom/android/tools/r8/synthesis/J;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->U:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->V:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;)Ljava/util/Set;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/v0;->c:Lcom/android/tools/r8/synthesis/J;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v2, Lv/y1;

    invoke-direct {v2}, Lv/y1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/v0;->c:Lcom/android/tools/r8/synthesis/J;

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v2, Lv/z1;

    invoke-direct {v2}, Lv/z1;-><init>()V

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p1

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/v0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v4, p2, :cond_2

    .line 8
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/v0;->b:Lcom/android/tools/r8/androidapi/a;

    .line 12
    sget v0, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v0, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    invoke-virtual {p2, v4, v0}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p2

    .line 13
    invoke-interface {p2}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p1

    .line 15
    :cond_4
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v5

    .line 16
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p2

    .line 17
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/fB;->f()Ljava/util/List;

    move-result-object p3

    new-instance v0, Lv/A1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lv/A1;-><init>(Lcom/android/tools/r8/ir/optimize/v0;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Ljava/util/Set;)V

    .line 18
    invoke-interface {p3, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p2

    .line 19
    :cond_5
    :goto_0
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p1

    .line 20
    :cond_6
    :goto_1
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Ljava/util/Set;)V
    .locals 7

    .line 51
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_2

    .line 52
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object p3

    .line 53
    :goto_0
    iget-object v0, p3, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 54
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    iget-object v0, p3, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    iput-object v0, p3, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    .line 59
    new-instance v2, Lcom/android/tools/r8/internal/dR0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/dR0;-><init>()V

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 60
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/v0;->a:Lcom/android/tools/r8/graph/y;

    .line 61
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 62
    invoke-interface {v0, p2, p3, v2, v3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 63
    :cond_2
    iget-object v2, v0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 64
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 65
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 67
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 68
    sget-boolean v5, Lcom/android/tools/r8/internal/jc;->m:Z

    .line 69
    new-instance v5, Lcom/android/tools/r8/internal/ic;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ic;-><init>()V

    .line 70
    iput-object v4, v5, Lcom/android/tools/r8/internal/ic;->e:Lcom/android/tools/r8/internal/xw0;

    .line 71
    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/v0;->a:Lcom/android/tools/r8/graph/y;

    .line 72
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-static {v2, v4, v6}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    .line 74
    invoke-interface {p2, v4, v3}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 75
    iput-object v3, v5, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 76
    iput-object v2, v5, Lcom/android/tools/r8/internal/ic;->d:Lcom/android/tools/r8/graph/M2;

    .line 77
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    .line 78
    iput-object v1, v5, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 79
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ic;->c()Lcom/android/tools/r8/internal/jc;

    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 81
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 82
    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/v0;->d:Z

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 83
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    goto/16 :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W5;)V
    .locals 4

    .line 22
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object p5

    .line 23
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/Yx0;-><init>(Ljava/util/Set;)V

    .line 25
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 27
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/xw0;

    .line 28
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 30
    :cond_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    .line 31
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-nez v0, :cond_3

    .line 32
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/v0;->d:Z

    if-nez v0, :cond_0

    .line 33
    instance-of v0, p3, Lcom/android/tools/r8/internal/Zd0;

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_3
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 36
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 38
    :cond_4
    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 39
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/v0;->b:Lcom/android/tools/r8/androidapi/a;

    .line 40
    sget v2, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v2, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 41
    invoke-virtual {v0, p3, v2}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p3

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/v0;->a:Lcom/android/tools/r8/graph/y;

    .line 43
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 44
    invoke-interface {p3}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    invoke-interface {p3}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 46
    invoke-interface {p3}, Lcom/android/tools/r8/androidapi/f;->F()Lcom/android/tools/r8/androidapi/f$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/androidapi/f$a;->a()Lcom/android/tools/r8/internal/C2;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/internal/C2;->k:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v2, v3}, Lcom/android/tools/r8/internal/C40;->e(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_0

    .line 47
    :cond_6
    invoke-interface {p3, v0}, Lcom/android/tools/r8/androidapi/f;->b(Lcom/android/tools/r8/androidapi/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    sget-object v2, Lcom/android/tools/r8/internal/C2;->v:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v0, v2}, Lcom/android/tools/r8/androidapi/f;->b(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    move p3, v2

    goto :goto_1

    .line 49
    :cond_7
    sget-object v0, Lcom/android/tools/r8/internal/C2;->F:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p3, v0}, Lcom/android/tools/r8/androidapi/f;->a(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/t40;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result p3

    :goto_1
    if-eqz p3, :cond_0

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_9

    .line 50
    invoke-interface {p4, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method
