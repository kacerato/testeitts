.class public Lcom/android/tools/r8/internal/J70;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MethodRule::",
        "Lcom/android/tools/r8/internal/q1;",
        "MethodRuleBuilder::",
        "Lcom/android/tools/r8/internal/p1;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/J70;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/J70;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Yx0;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/A2;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/A2;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/graph/A2;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 23
    new-instance v2, Lcom/android/tools/r8/internal/Yx0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 24
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 25
    new-instance p1, Lcom/android/tools/r8/internal/jJ0;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/tools/r8/internal/jJ0;-><init>(Lcom/android/tools/r8/internal/J70;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/Yx0;)V

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/util/function/Consumer;)V

    .line 26
    sget-boolean p1, Lcom/android/tools/r8/internal/J70;->c:Z

    if-nez p1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yx0;->a()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/J70;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/iJ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/iJ0;-><init>()V

    .line 2
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/J70;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/iJ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/iJ0;-><init>()V

    .line 5
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 6
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/A2;",
            "TMethodRuleBuilder;>;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/J70;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 9
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/lJ0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/lJ0;-><init>(Lcom/android/tools/r8/internal/J70;Ljava/util/Map;)V

    .line 11
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/internal/Yx0;

    return-void
.end method

.method public final synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Yx0;)V
    .locals 4

    .line 12
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/p1;

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/J70;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v1, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 14
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/p1;

    .line 15
    new-instance v3, Lcom/android/tools/r8/internal/kJ0;

    invoke-direct {v3, p3, v1}, Lcom/android/tools/r8/internal/kJ0;-><init>(Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/A2;)V

    invoke-interface {v2, v0, v3}, Lcom/android/tools/r8/internal/p1;->a(Lcom/android/tools/r8/internal/p1;Ljava/lang/Runnable;)Lcom/android/tools/r8/internal/p1;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 28
    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 29
    invoke-interface {p2, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p1, p3, Lcom/android/tools/r8/internal/Yx0;->a:Ljava/util/ArrayDeque;

    .line 31
    invoke-virtual {p1, p4}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 32
    iget-object p1, p0, Lcom/android/tools/r8/internal/J70;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {p1, p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    .line 33
    sget-boolean v0, Lcom/android/tools/r8/internal/J70;->c:Z

    if-nez v0, :cond_1

    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Found a cycle"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 34
    :cond_1
    :goto_1
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_2
    invoke-interface {p2, p4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 36
    sget-boolean p2, Lcom/android/tools/r8/internal/J70;->c:Z

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public a()Z
    .locals 4

    .line 17
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/J70;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 19
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/J70;->a(Lcom/android/tools/r8/graph/A2;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
