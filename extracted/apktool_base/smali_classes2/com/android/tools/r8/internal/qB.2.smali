.class public abstract Lcom/android/tools/r8/internal/qB;
.super Lcom/android/tools/r8/internal/A8;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/A8;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/E00;
    .locals 1

    .line 35
    new-instance v0, Lcom/android/tools/r8/internal/D00;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/D00;-><init>(Lcom/android/tools/r8/graph/H5;)V

    return-object v0
.end method

.method public a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/x8;
    .locals 4

    .line 1
    const-string v0, "Build IR processing order constraints"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    const-string v0, "Build call graph"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/qB;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 4
    sget-boolean p1, Lcom/android/tools/r8/internal/qB;->d:Z

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/A8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/D00;

    .line 6
    iget-object v1, v0, Lcom/android/tools/r8/internal/D00;->f:Ljava/util/TreeSet;

    .line 7
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/D00;

    .line 8
    sget-boolean v3, Lcom/android/tools/r8/internal/qB;->d:Z

    if-nez v3, :cond_1

    .line 9
    iget-object v3, v0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 12
    sget-boolean p1, Lcom/android/tools/r8/internal/qB;->d:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qB;->a()V

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/A8;->a:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/internal/uq1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/uq1;-><init>(Lcom/android/tools/r8/internal/qB;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Wr0;)V

    .line 14
    const-string v0, "Cycle elimination"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/A8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 16
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 17
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/zi;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zi;-><init>()V

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zi;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/zi$a;

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    if-nez p1, :cond_6

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zi;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/zi$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zi$a;->a()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_6
    :goto_1
    new-instance p1, Lcom/android/tools/r8/internal/x8;

    iget-object p2, p0, Lcom/android/tools/r8/internal/A8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/x8;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public abstract a()V
.end method

.method public final a(Lcom/android/tools/r8/internal/bz;)V
    .locals 6

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/A8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    iget-object v1, p1, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    .line 26
    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->s:Lcom/android/tools/r8/internal/Ha0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Ha0;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/D00;

    if-eqz v0, :cond_2

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v2, v0, Lcom/android/tools/r8/internal/D00;->d:Ljava/util/TreeSet;

    .line 29
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/D00;

    .line 30
    iget-object v4, p1, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/E00;->b()Lcom/android/tools/r8/graph/j1;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/La0;->b(Lcom/android/tools/r8/graph/A2;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/D00;

    .line 34
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/D00;->c(Lcom/android/tools/r8/internal/D00;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public abstract a(Ljava/util/concurrent/ExecutorService;)V
.end method
