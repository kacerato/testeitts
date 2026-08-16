.class public final Lcom/android/tools/r8/internal/b80;
.super Lcom/android/tools/r8/internal/i6;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/graph/c4;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/i6;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/b80;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/b80;->c:Lcom/android/tools/r8/graph/c4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/b80;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lcom/android/tools/r8/graph/H2;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/b80;->c:Lcom/android/tools/r8/graph/c4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/graph/c4;->a(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/b80;->c:Lcom/android/tools/r8/graph/c4;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/graph/c4;->b:Ljava/util/IdentityHashMap;

    .line 6
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 7
    invoke-interface {p2, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
