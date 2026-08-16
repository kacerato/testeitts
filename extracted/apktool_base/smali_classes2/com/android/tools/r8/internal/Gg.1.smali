.class public final Lcom/android/tools/r8/internal/Gg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Gg;->a:Lcom/android/tools/r8/graph/y;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Gg;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;
    .locals 4

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/Dq;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/Gg;->a:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/internal/UF0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/UF0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/VF0;

    invoke-direct {v3, p0, v0}, Lcom/android/tools/r8/internal/VF0;-><init>(Lcom/android/tools/r8/internal/Gg;Lcom/android/tools/r8/internal/Dq;)V

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/WF0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/WF0;-><init>(Lcom/android/tools/r8/internal/Gg;Lcom/android/tools/r8/internal/Dq;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Consumer;)V

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Gg;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H0;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p2

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 6
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 12
    iget-object p2, p0, Lcom/android/tools/r8/internal/Gg;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Dq;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/Gg;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;

    move-result-object p2

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object p2, p2, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 16
    iget-object p1, p1, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
