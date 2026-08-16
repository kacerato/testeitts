.class public final Lcom/android/tools/r8/internal/O60;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/qU;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/qU;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iget-object v0, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    .line 26
    invoke-static {p0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 27
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/O60;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qU;->c(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/qU;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fX;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/P60;
    .locals 3

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->z:Ljava/util/Set;

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/android/tools/r8/internal/kP0;

    invoke-direct {v2, p1, v1}, Lcom/android/tools/r8/internal/kP0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/m80;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/O60;->a(Lcom/android/tools/r8/internal/m80;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    .line 16
    sget-boolean v1, Lcom/android/tools/r8/internal/O60;->b:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Vn;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/lP0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/lP0;-><init>()V

    .line 18
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/android/tools/r8/internal/x8;->b:Z

    .line 21
    new-instance v1, Lcom/android/tools/r8/internal/z8;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/z8;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 22
    invoke-virtual {v1, p3, p4}, Lcom/android/tools/r8/internal/z8;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/x8;

    move-result-object p3

    .line 23
    new-instance p4, Lcom/android/tools/r8/internal/P60;

    invoke-direct {p4, p1, p3, p2, v0}, Lcom/android/tools/r8/internal/P60;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x8;Lcom/android/tools/r8/internal/fX;Lcom/android/tools/r8/internal/m80;)V

    return-object p4
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Nm;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/jP0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/jP0;-><init>(Lcom/android/tools/r8/internal/qU;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Nm;->a(Lcom/android/tools/r8/internal/Wr0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/m80;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/iP0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/iP0;-><init>(Lcom/android/tools/r8/internal/O60;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Hz;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/hP0;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/hP0;-><init>(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
