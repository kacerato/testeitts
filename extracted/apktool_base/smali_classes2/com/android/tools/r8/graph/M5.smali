.class public Lcom/android/tools/r8/graph/M5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/graph/x0;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Set;

.field public e:Ljava/util/Set;

.field public final f:Ljava/util/Set;

.field public g:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M5;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/M5;->b:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M5;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/M5;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M5;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/M5;->d:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M5;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/M5;->e:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M5;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/M5;->f:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M5;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Lcom/android/tools/r8/graph/M5;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/graph/M5;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/graph/M5;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/graph/O5;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/M5;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/M5;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 5
    invoke-virtual {v0, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 7
    iget-object v4, p0, Lcom/android/tools/r8/graph/M5;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H5;

    if-nez v4, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    filled-new-array {v3, v2}, [Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 10
    invoke-static {v3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 11
    :goto_1
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 12
    iget-object v5, p0, Lcom/android/tools/r8/graph/M5;->c:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H5;

    if-nez v5, :cond_5

    .line 13
    sget-boolean v2, Lcom/android/tools/r8/graph/M5;->h:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14
    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 15
    invoke-virtual {v0, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object v4, v5

    goto :goto_1

    .line 17
    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/graph/M5;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 18
    :cond_7
    new-instance v0, Lcom/android/tools/r8/graph/O5;

    iget-object v3, p0, Lcom/android/tools/r8/graph/M5;->a:Lcom/android/tools/r8/graph/x0;

    iget-object v4, p0, Lcom/android/tools/r8/graph/M5;->b:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/tools/r8/graph/M5;->c:Ljava/util/Map;

    iget-object v6, p0, Lcom/android/tools/r8/graph/M5;->d:Ljava/util/Set;

    iget-object v7, p0, Lcom/android/tools/r8/graph/M5;->e:Ljava/util/Set;

    iget-object v8, p0, Lcom/android/tools/r8/graph/M5;->f:Ljava/util/Set;

    iget-object v9, p0, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/tools/r8/graph/O5;-><init>(Lcom/android/tools/r8/graph/x0;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
