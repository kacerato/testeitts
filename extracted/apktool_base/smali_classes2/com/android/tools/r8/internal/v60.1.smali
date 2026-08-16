.class public final Lcom/android/tools/r8/internal/v60;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/internal/zE;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean v0, Lcom/android/tools/r8/internal/v60;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->Q()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/sD;Lcom/android/tools/r8/internal/sD;)Z
    .locals 0

    .line 12
    invoke-virtual {p1, p2, p0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final C0()Lcom/android/tools/r8/internal/v60;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/E;
    .locals 0

    .line 25
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->b:Lcom/android/tools/r8/ir/optimize/C;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 26
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 1

    .line 20
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "This classfile-specific IR should not be inserted in the Dex backend."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 1

    .line 24
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "This IR must not be inserted before load and store insertion."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 1

    .line 19
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "This classfile-specific IR should not be used in LIR."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/android/tools/r8/internal/kb;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/kb$a;->d:Lcom/android/tools/r8/internal/kb$a;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    :goto_0
    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    .line 23
    invoke-virtual {p1, v1, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/v60;Ljava/util/function/BiPredicate;)Z
    .locals 3

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/rE0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/rE0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->W()Lcom/android/tools/r8/internal/sD;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/rE0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/rE0;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->W()Lcom/android/tools/r8/internal/sD;

    move-result-object p1

    .line 17
    invoke-interface {p2, v0, p1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/rE0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/rE0;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;)Z
    .locals 3

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/v60;->k:Z

    if-nez v0, :cond_1

    .line 4
    instance-of v1, p1, Lcom/android/tools/r8/internal/v60;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->C0()Lcom/android/tools/r8/internal/v60;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/Mv1;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/Mv1;-><init>(Lcom/android/tools/r8/internal/Je0;)V

    .line 7
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/v60;->a(Lcom/android/tools/r8/internal/v60;Ljava/util/function/BiPredicate;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/v60;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p2}, Lcom/android/tools/r8/internal/Je0;->e()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    return p1

    .line 10
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/xw0;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v0, p1, Lcom/android/tools/r8/internal/v60;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->C0()Lcom/android/tools/r8/internal/v60;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/Nv1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Nv1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/v60;->a(Lcom/android/tools/r8/internal/v60;Ljava/util/function/BiPredicate;)Z

    move-result p1

    return p1
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final q2()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method
