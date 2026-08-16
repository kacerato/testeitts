.class public final Lcom/android/tools/r8/internal/fx0;
.super Lcom/android/tools/r8/internal/t60;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/c4;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/t60;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/fx0;->b:Lcom/android/tools/r8/graph/c4;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/lx0;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/hx0;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hx0;->a(Ljava/util/LinkedList;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    new-instance v1, Lcom/android/tools/r8/internal/Jb1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Jb1;-><init>(Lcom/android/tools/r8/internal/hx0;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/internal/hx0;Ljava/lang/Object;Lcom/android/tools/r8/internal/lx0;)Z
    .locals 1

    .line 18
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/hx0;->a(Lcom/android/tools/r8/internal/lx0;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 19
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/fx0;->c:Z

    if-nez p1, :cond_1

    .line 20
    iget-object p1, p2, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v0, 0x2

    .line 22
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/s60;->a(ZILjava/util/Collection;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 5

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/fx0;->b:Lcom/android/tools/r8/graph/c4;

    .line 6
    iget-object v2, v2, Lcom/android/tools/r8/graph/c4;->b:Ljava/util/IdentityHashMap;

    .line 7
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 9
    new-instance v3, Lcom/android/tools/r8/internal/lx0;

    invoke-static {v2}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    invoke-direct {v3, v1, v2}, Lcom/android/tools/r8/internal/lx0;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/Kb1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Kb1;-><init>()V

    .line 11
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 12
    sget-boolean v1, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/s60;Ljava/util/LinkedList;Ljava/util/concurrent/ExecutorService;)Ljava/util/LinkedList;
    .locals 0

    .line 14
    sget-boolean p3, Lcom/android/tools/r8/internal/fx0;->c:Z

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/s60;->k()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/s60;->d()Lcom/android/tools/r8/internal/hx0;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/fx0;->a(Lcom/android/tools/r8/internal/hx0;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object p1

    return-object p1
.end method
