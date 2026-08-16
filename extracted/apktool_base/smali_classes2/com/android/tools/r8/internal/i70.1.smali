.class public final Lcom/android/tools/r8/internal/i70;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/AA;

.field public final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/AA;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/AA;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/i70;->a:Lcom/android/tools/r8/internal/AA;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/i70;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/Qd1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Qd1;-><init>(Lcom/android/tools/r8/internal/i70;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/android/tools/r8/internal/i70;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/h70;

    .line 5
    new-instance v5, Lcom/android/tools/r8/internal/h70;

    .line 6
    iget-object v6, p2, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 7
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    .line 8
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object v6

    .line 9
    iget-boolean v6, v6, Lcom/android/tools/r8/internal/F4;->c:Z

    .line 10
    invoke-direct {v5, v2, v6}, Lcom/android/tools/r8/internal/h70;-><init>(Lcom/android/tools/r8/graph/j1;Z)V

    if-nez v4, :cond_1

    .line 11
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/h70;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/i70;->b:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 14
    iget-object p2, p0, Lcom/android/tools/r8/internal/i70;->a:Lcom/android/tools/r8/internal/AA;

    .line 15
    iget-object p2, p2, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 16
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
