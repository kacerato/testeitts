.class public final Lcom/android/tools/r8/internal/p00;
.super Lcom/android/tools/r8/internal/ex0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/nJ;

.field public final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ex0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/p00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/p00;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/p00;->m()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/p00;->d:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/J2;Ljava/util/Set;)V
    .locals 3

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/p00;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    .line 19
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/pp1;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/pp1;-><init>(Lcom/android/tools/r8/internal/p00;Ljava/util/Set;)V

    new-instance v2, Lcom/android/tools/r8/internal/qp1;

    invoke-direct {v2, p0, p2}, Lcom/android/tools/r8/internal/qp1;-><init>(Lcom/android/tools/r8/internal/p00;Ljava/util/Set;)V

    .line 20
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/p00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/p00;->b:Lcom/android/tools/r8/graph/y;

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/p00;->b:Lcom/android/tools/r8/graph/y;

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/android/tools/r8/internal/p00;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->u0()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/p00;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/p00;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/Set;Lcom/android/tools/r8/internal/q4;)V
    .locals 3

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/q4;->e()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/p00;->b:Lcom/android/tools/r8/graph/y;

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/q4;->e()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/p00;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/lx0;)Z
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/p00;->b:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/p00;->c:Lcom/android/tools/r8/internal/nJ;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/l1;->q:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/p00;->d:Ljava/util/Set;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoKeptClassesPolicy"

    return-object v0
.end method

.method public final m()Ljava/util/Set;
    .locals 5

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/internal/p00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v2

    new-instance v3, Lu/I0;

    invoke-direct {v3, v1}, Lu/I0;-><init>(Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/tools/r8/internal/p00;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/shaking/y1;->c(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    new-instance v3, Lcom/android/tools/r8/internal/lp1;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/lp1;-><init>(Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/tools/r8/internal/p00;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/shaking/y1;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    new-instance v3, Lcom/android/tools/r8/internal/mp1;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/mp1;-><init>(Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/tools/r8/internal/p00;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/shaking/y1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/J2;

    invoke-virtual {p0, v4, v0}, Lcom/android/tools/r8/internal/p00;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/p00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/np1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/np1;-><init>()V

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/p00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/i;->q:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/internal/p00;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/p00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/i;->n:Ljava/util/Set;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/J2;

    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/internal/p00;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/Set;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/p00;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/c4;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->c()Lcom/android/tools/r8/internal/Wr0;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/op1;

    invoke-direct {v4, p0, v0}, Lcom/android/tools/r8/internal/op1;-><init>(Lcom/android/tools/r8/internal/p00;Ljava/util/Set;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/internal/c4;->a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/internal/Wr0;)V

    goto :goto_4

    :cond_5
    return-object v0
.end method
