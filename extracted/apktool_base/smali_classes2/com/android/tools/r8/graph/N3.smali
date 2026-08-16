.class public final Lcom/android/tools/r8/graph/N3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/N3;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/android/tools/r8/graph/N3;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Lcom/android/tools/r8/graph/F9;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/F9;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 3
    new-instance p0, Lcom/android/tools/r8/graph/N3;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/graph/N3;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/graph/H3$f;)V
    .locals 2

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$f;->b:Lcom/android/tools/r8/graph/H3$e;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H3$e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$f;->b:Lcom/android/tools/r8/graph/H3$e;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H3$e;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$f;->a:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/graph/H3$f;->b:Lcom/android/tools/r8/graph/H3$e;

    .line 10
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$f;->c:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$f;->c:Ljava/util/List;

    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H3$e;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H3$e;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$f;->a:Ljava/lang/String;

    .line 16
    iget-object p1, p1, Lcom/android/tools/r8/graph/H3$f;->c:Ljava/util/List;

    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H3$e;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 18
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/H3$f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
