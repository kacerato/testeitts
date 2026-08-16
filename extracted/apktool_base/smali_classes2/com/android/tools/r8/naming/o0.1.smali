.class public abstract Lcom/android/tools/r8/naming/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Y5;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 3
    iget-object v1, v1, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 4
    new-instance v2, Lcom/android/tools/r8/naming/u3;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/naming/u3;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Set;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/t5;->a(Ljava/util/function/Consumer;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/naming/v3;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/naming/v3;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/function/Consumer;)V

    .line 7
    sget-object v1, Lcom/android/tools/r8/graph/Y5;->e:Lcom/android/tools/r8/internal/ef0;

    .line 8
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 10
    invoke-static {v0, v2, v1, p0}, Lcom/android/tools/r8/graph/Y5;->a(Ljava/lang/Iterable;Ljava/util/IdentityHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/graph/d1;)V

    .line 11
    new-instance v0, Lcom/android/tools/r8/graph/Y5;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/tools/r8/graph/Y5;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/graph/d1;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 12
    invoke-interface {p0, p2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 13
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
