.class public final Lcom/android/tools/r8/internal/yA;
.super Lcom/android/tools/r8/internal/t60;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/t60;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/wY;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 2

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 22
    new-instance v1, Lcom/android/tools/r8/internal/Gz1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Gz1;-><init>(Lcom/android/tools/r8/internal/wY;Ljava/util/LinkedList;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/xY;Ljava/util/LinkedList;Ljava/util/concurrent/ExecutorService;)Ljava/util/LinkedList;
    .locals 2

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/xY;->a(Ljava/util/LinkedList;Ljava/util/concurrent/ExecutorService;)Ljava/lang/Object;

    move-result-object p2

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 33
    new-instance v1, Lcom/android/tools/r8/internal/Fz1;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/tools/r8/internal/Fz1;-><init>(Lcom/android/tools/r8/internal/xY;Ljava/lang/Object;Ljava/util/LinkedList;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/internal/AA;)V
    .locals 0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/wY;Ljava/util/LinkedList;Lcom/android/tools/r8/internal/AA;)V
    .locals 4

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/AA;->j()Z

    move-result v0

    .line 24
    iget-object v1, p2, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 25
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/wY;->a(Lcom/android/tools/r8/internal/AA;)Ljava/util/Collection;

    move-result-object v2

    .line 26
    new-instance v3, Lcom/android/tools/r8/internal/Dz1;

    invoke-direct {v3, p2}, Lcom/android/tools/r8/internal/Dz1;-><init>(Lcom/android/tools/r8/internal/AA;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 27
    sget-boolean p2, Lcom/android/tools/r8/internal/yA;->b:Z

    if-nez p2, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/tools/r8/internal/s60;->a(ZILjava/util/Collection;)V

    .line 28
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xY;Ljava/lang/Object;Ljava/util/LinkedList;Lcom/android/tools/r8/internal/AA;)V
    .locals 3

    .line 34
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/AA;->j()Z

    move-result v0

    .line 35
    iget-object v1, p3, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 36
    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/internal/xY;->a(Lcom/android/tools/r8/internal/AA;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    .line 37
    new-instance v2, Lcom/android/tools/r8/internal/Ez1;

    invoke-direct {v2, p3}, Lcom/android/tools/r8/internal/Ez1;-><init>(Lcom/android/tools/r8/internal/AA;)V

    invoke-interface {p1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 38
    sget-boolean p3, Lcom/android/tools/r8/internal/yA;->b:Z

    if-nez p3, :cond_0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/tools/r8/internal/s60;->a(ZILjava/util/Collection;)V

    .line 39
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/zm0;Ljava/util/LinkedList;)V
    .locals 4

    .line 8
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/AA;

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/AA;->j()Z

    move-result v1

    .line 12
    iget-object v2, v0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 13
    new-instance v3, Lcom/android/tools/r8/internal/Cz1;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/Cz1;-><init>(Lcom/android/tools/r8/internal/zm0;)V

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/AA;->removeIf(Ljava/util/function/Predicate;)Z

    .line 14
    sget-boolean v3, Lcom/android/tools/r8/internal/yA;->b:Z

    if-nez v3, :cond_1

    .line 15
    sget v3, Lcom/android/tools/r8/internal/hC;->c:I

    .line 16
    new-instance v3, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/tools/r8/internal/s60;->a(ZILjava/util/Collection;)V

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/AA;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/zm0;Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zm0;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/internal/AA;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/s60;Ljava/util/LinkedList;Ljava/util/concurrent/ExecutorService;)Ljava/util/LinkedList;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/s60;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/s60;->c()Lcom/android/tools/r8/internal/zm0;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/yA;->a(Lcom/android/tools/r8/internal/zm0;Ljava/util/LinkedList;)V

    return-object p2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/s60;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/s60;->a()Lcom/android/tools/r8/internal/wY;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/yA;->a(Lcom/android/tools/r8/internal/wY;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/yA;->b:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/s60;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/s60;->b()Lcom/android/tools/r8/internal/xY;

    move-result-object p1

    .line 7
    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/yA;->a(Lcom/android/tools/r8/internal/xY;Ljava/util/LinkedList;Ljava/util/concurrent/ExecutorService;)Ljava/util/LinkedList;

    move-result-object p1

    return-object p1
.end method
