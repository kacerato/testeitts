.class public final Lcom/android/tools/r8/internal/qU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Ljava/util/function/IntFunction;

.field public final b:Ljava/util/function/IntFunction;

.field public c:Lcom/android/tools/r8/internal/Hz;

.field public d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/qU;->a:Ljava/util/function/IntFunction;

    iput-object p3, p0, Lcom/android/tools/r8/internal/qU;->b:Ljava/util/function/IntFunction;

    const/4 p1, 0x2

    invoke-interface {p3, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/qU;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/qU;

    new-instance v1, Lcom/android/tools/r8/internal/Tq1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Tq1;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/Tm1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Tm1;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/internal/qU;-><init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/A2;)Z
    .locals 1

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    .line 23
    sget-boolean p0, Lcom/android/tools/r8/internal/qU;->e:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 24
    :cond_2
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/R00;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/qU;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/qU;

    new-instance v1, Lcom/android/tools/r8/internal/Tq1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Tq1;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/EZ0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/EZ0;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/internal/qU;-><init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/m80;
    .locals 6

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/qU;->a:Ljava/util/function/IntFunction;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/m80;

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v3, v4, v2}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 28
    iget-object v3, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v3}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    .line 30
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v4

    .line 31
    sget-boolean v5, Lcom/android/tools/r8/internal/qU;->e:Z

    if-nez v5, :cond_1

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 32
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance v2, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/qU;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/internal/Uq1;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/Uq1;-><init>(Lcom/android/tools/r8/graph/d1;Ljava/util/function/Predicate;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-object p0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/qU;
    .locals 1

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/Rq1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Rq1;-><init>(Lcom/android/tools/r8/internal/qU;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/internal/qU;->e:Z

    if-nez v0, :cond_1

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/qU;->e:Z

    if-nez v0, :cond_1

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Km;)V
    .locals 4

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    new-instance v1, Lcom/android/tools/r8/internal/eG0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/eG0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 37
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/tools/r8/internal/Km;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/qU;)V
    .locals 5

    .line 7
    iget-object v0, p1, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    if-ne v1, v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 10
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/qU;->e:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/qU;->d(Lcom/android/tools/r8/internal/Hz;)V

    .line 11
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    iget-object v4, p1, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v3, v4, v1}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/qU;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/qU;->b:Ljava/util/function/IntFunction;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    return-object p0
.end method

.method public final d(Lcom/android/tools/r8/internal/Hz;)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/qU;->e:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Hz;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Hz;->j()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Sq1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Sq1;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    iget-object p1, v0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Hz;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/R00;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/R00;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    return-void
.end method
