.class public final Lcom/android/tools/r8/internal/tX;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tX;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;Ljava/util/List;)V
    .locals 0

    .line 10
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/O60;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Hz;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/H2;)Ljava/util/List;
    .locals 9

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v7, Lu/P0;

    invoke-direct {v7}, Lu/P0;-><init>()V

    new-instance v8, Lcom/android/tools/r8/internal/Jt1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/Jt1;-><init>(Lcom/android/tools/r8/internal/tX;Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/nJ;Ljava/util/List;)V

    invoke-virtual {p4, v8, v7}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-object v6
.end method

.method public final a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/nJ;Ljava/util/List;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 11
    iget-object p1, p1, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    .line 12
    sget-boolean p3, Lcom/android/tools/r8/internal/qU;->e:Z

    if-nez p3, :cond_2

    if-nez p3, :cond_1

    .line 13
    iget-object p3, p1, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    if-ne p3, p2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    .line 17
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/android/tools/r8/internal/tX;->a:Lcom/android/tools/r8/graph/y;

    .line 19
    invoke-virtual {p1, p5}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/android/tools/r8/shaking/I1;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    new-instance p1, Lcom/android/tools/r8/internal/sX;

    iget-object p2, p0, Lcom/android/tools/r8/internal/tX;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p1, p2, p5}, Lcom/android/tools/r8/internal/sX;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 21
    invoke-virtual {p5, p1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 22
    iget-object p1, p1, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 24
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/tX;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/tX;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/internal/tX;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/Kt1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/tools/r8/internal/Kt1;-><init>(Lcom/android/tools/r8/internal/tX;Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/nJ;)V

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v1

    .line 6
    invoke-static {v2, v3, v1, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object p2

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/Lt1;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/Lt1;-><init>(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
