.class public final Lcom/android/tools/r8/internal/x70;
.super Lcom/android/tools/r8/internal/gX;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/y;

.field public final d:Lcom/android/tools/r8/internal/E8;

.field public final e:Lcom/android/tools/r8/internal/fX;

.field public final f:Ljava/util/ArrayDeque;

.field public g:Lcom/android/tools/r8/internal/Ef;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x8;Lcom/android/tools/r8/internal/fX;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/gX;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/x70;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/tools/r8/internal/C8;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/tools/r8/internal/C8;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x8;Lcom/android/tools/r8/internal/gX;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/D8;->a:Lcom/android/tools/r8/internal/D8;

    :goto_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/x70;->d:Lcom/android/tools/r8/internal/E8;

    iput-object p3, p0, Lcom/android/tools/r8/internal/x70;->e:Lcom/android/tools/r8/internal/fX;

    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/y8;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/x8;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ$p;->G:Ljava/util/function/Consumer;

    invoke-interface {p1, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/x70;->f:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/internal/u70;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/ns0;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/x70;->g:Lcom/android/tools/r8/internal/Ef;

    .line 26
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Df;

    move-result-object v0

    .line 27
    invoke-interface {p1, p2, v0}, Lcom/android/tools/r8/internal/u70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/u70;Lcom/android/tools/r8/internal/w70;Lcom/android/tools/r8/internal/v70;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p5}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/concurrent/ExecutorService;)I

    move-result v0

    const-string v1, "primary-processor"

    invoke-virtual {p4, v0, v1}, Lcom/android/tools/r8/internal/ns0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/ls0;

    move-result-object p4

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/x70;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/x70;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/m80;

    iput-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    .line 5
    sget-boolean v1, Lcom/android/tools/r8/internal/x70;->h:Z

    if-nez v1, :cond_1

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_1
    if-nez v1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->b:Lcom/android/tools/r8/internal/j80;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/x70;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/x70;->g:Lcom/android/tools/r8/internal/Ef;

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/w70;->a(Lcom/android/tools/r8/internal/m80;)V

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    new-instance v1, Lcom/android/tools/r8/internal/oy1;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/oy1;-><init>(Lcom/android/tools/r8/internal/x70;Lcom/android/tools/r8/internal/u70;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/x70;->c:Lcom/android/tools/r8/graph/y;

    .line 16
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 17
    invoke-static {v0, v1, v2, p5}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object v0

    .line 18
    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/ls0;->a(Ljava/util/Collection;)V

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    invoke-interface {p3, v0, p5}, Lcom/android/tools/r8/internal/v70;->a(Lcom/android/tools/r8/internal/m80;Ljava/util/concurrent/ExecutorService;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gX;->g()V

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    .line 22
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 23
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 24
    :cond_4
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ls0;->a()V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/x70;
    .locals 0

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/E8;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/x70;->d:Lcom/android/tools/r8/internal/E8;

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/x70;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->o1()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final d()Lcom/android/tools/r8/internal/fX;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/x70;->e:Lcom/android/tools/r8/internal/fX;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
