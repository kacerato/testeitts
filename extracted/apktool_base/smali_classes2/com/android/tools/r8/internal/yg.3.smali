.class public abstract Lcom/android/tools/r8/internal/yg;
.super Lcom/android/tools/r8/internal/Q00;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public b:Ljava/util/Set;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Q00;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/Q00;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p0

    .line 5
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {p1, p0, v0}, Lcom/android/tools/r8/internal/lg;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/yg;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 7
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/ug;->a(Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/yg;
.end method

.method public final a(Lcom/android/tools/r8/internal/yg;)Z
    .locals 2

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/yg;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result p5

    if-eqz p5, :cond_0

    return-object p0

    .line 2
    :cond_0
    instance-of p5, p2, Lcom/android/tools/r8/internal/zv0;

    if-eqz p5, :cond_1

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->n()Z

    move-result p5

    const/4 v0, 0x1

    if-eqz p5, :cond_4

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->h()Lcom/android/tools/r8/internal/iw0;

    move-result-object p1

    .line 6
    sget-boolean p2, Lcom/android/tools/r8/internal/yg;->d:Z

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/yg;->c:Z

    return-object p0

    .line 8
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object p2

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Iw0;->l()Z

    move-result p5

    if-eqz p5, :cond_7

    .line 10
    sget-boolean p5, Lcom/android/tools/r8/internal/yg;->d:Z

    if-nez p5, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->l()Z

    move-result p5

    if-eqz p5, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Iw0;->g()Lcom/android/tools/r8/internal/xg;

    move-result-object v0

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->g()Lcom/android/tools/r8/internal/xg;

    move-result-object v2

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/xg;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xg;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1

    .line 14
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Iw0;->e()Lcom/android/tools/r8/internal/ug;

    move-result-object p3

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->e()Lcom/android/tools/r8/internal/ug;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    sget-boolean p5, Lcom/android/tools/r8/internal/ug;->f:Z

    if-nez p5, :cond_9

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p5

    if-eqz p5, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_9
    :goto_2
    iget-object p5, p2, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    .line 18
    iget-object v1, p3, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    .line 19
    iget-object v2, p1, Lcom/android/tools/r8/graph/y;->w:Lcom/android/tools/r8/internal/J1;

    .line 20
    iget-object v3, v2, Lcom/android/tools/r8/internal/K1;->a:Lcom/android/tools/r8/graph/y;

    .line 21
    invoke-virtual {p4, v3}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p4

    .line 22
    invoke-virtual {v2, v1, p5, p4}, Lcom/android/tools/r8/internal/K1;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v3

    .line 23
    sget-boolean v4, Lcom/android/tools/r8/internal/J1;->c:Z

    if-nez v4, :cond_b

    invoke-virtual {v2, p5, v1, p4}, Lcom/android/tools/r8/internal/K1;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p4

    invoke-virtual {v3, p4}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_b
    :goto_3
    iput-object v3, p3, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    .line 25
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result p4

    .line 26
    iget-object p5, p3, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result p5

    if-eqz p5, :cond_c

    .line 27
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    .line 28
    :cond_c
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/yg;->a(Lcom/android/tools/r8/internal/yg;)Z

    move-result p5

    .line 29
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/yg;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 30
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    .line 31
    :cond_d
    iget-boolean p1, p3, Lcom/android/tools/r8/internal/yg;->c:Z

    if-nez p1, :cond_e

    iget-boolean p1, p2, Lcom/android/tools/r8/internal/yg;->c:Z

    if-eqz p1, :cond_e

    .line 32
    iput-boolean v0, p3, Lcom/android/tools/r8/internal/yg;->c:Z

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    :goto_4
    if-eqz p4, :cond_10

    if-nez p5, :cond_10

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    return-object p3

    .line 33
    :cond_10
    :goto_5
    invoke-interface {p6}, Lcom/android/tools/r8/internal/b2;->a()V

    return-object p3
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->c()Lcom/android/tools/r8/internal/nJ$b;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0xa

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()Lcom/android/tools/r8/internal/yg;
    .locals 0

    return-object p0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic o()Lcom/android/tools/r8/internal/Iw0;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->x()Lcom/android/tools/r8/internal/yg;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/tools/r8/internal/yg;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public abstract q()Lcom/android/tools/r8/internal/B7;
.end method

.method public abstract r()Lcom/android/tools/r8/internal/iw0;
.end method

.method public final s()Ljava/util/Set;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/yg;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    instance-of v0, v0, Ljava/util/HashSet;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    return-object v0
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final u()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/yg;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract v()Z
.end method

.method public abstract w()Z
.end method

.method public final x()Lcom/android/tools/r8/internal/yg;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/gB1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/gB1;-><init>(Lcom/android/tools/r8/internal/yg;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yg;->a(Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/yg;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lcom/android/tools/r8/internal/Iw0;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->q()Lcom/android/tools/r8/internal/B7;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/fB1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fB1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yg;->a(Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/yg;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/internal/yg;->d:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yg;->u()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method
