.class public final Lcom/android/tools/r8/internal/C9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/hi;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Lcom/android/tools/r8/graph/G;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/graph/G;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/C9;->a:Ljava/util/IdentityHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/C9;->b:Lcom/android/tools/r8/graph/G;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/f9;Lcom/android/tools/r8/internal/gt0;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 22
    iget-object p0, p0, Lcom/android/tools/r8/internal/f9;->f:Ljava/util/LinkedHashMap;

    .line 23
    new-instance v0, Lcom/android/tools/r8/internal/kB0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/kB0;-><init>(Lcom/android/tools/r8/internal/gt0;)V

    .line 24
    new-instance p1, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 27
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ys0;->f()Ljava/lang/Object;

    move-result-object p1

    .line 29
    invoke-interface {v0, v1, p2, p1}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Zs0;

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    :cond_1
    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/gt0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/f9;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 38
    invoke-interface {p0, p2, p1, p3}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Zs0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/f9;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/C9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    iget v1, p1, Lcom/android/tools/r8/internal/f9;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    .line 33
    iget-object v1, p0, Lcom/android/tools/r8/internal/C9;->b:Lcom/android/tools/r8/graph/G;

    .line 34
    iget p1, p1, Lcom/android/tools/r8/internal/f9;->c:I

    add-int/lit8 p1, p1, 0x1

    .line 35
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_0

    .line 36
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W9;

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 37
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/jB0;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/jB0;-><init>(Lcom/android/tools/r8/internal/C9;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/tools/r8/internal/W9;->a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/H9;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/android/tools/r8/internal/gt0;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 4
    check-cast p1, Lcom/android/tools/r8/internal/f9;

    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/C9;->a(Lcom/android/tools/r8/internal/f9;Lcom/android/tools/r8/internal/gt0;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/f9;

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/f9;->e:Ljava/util/ArrayList;

    .line 3
    invoke-static {p2, p1, p3}, Lcom/android/tools/r8/internal/at0;->a(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/f9;

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    .line 7
    iget p3, p1, Lcom/android/tools/r8/internal/f9;->a:I

    .line 8
    :goto_0
    iget v1, p1, Lcom/android/tools/r8/internal/f9;->c:I

    if-gt p3, v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/C9;->b:Lcom/android/tools/r8/graph/G;

    .line 10
    iget-object v1, v1, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    .line 11
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ys0;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Zs0;

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/W9;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/internal/C9;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/C9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/C9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/f9;

    .line 16
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Zs0;

    return-object p1
.end method

.method public final a()Ljava/lang/Object;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/C9;->b:Lcom/android/tools/r8/graph/G;

    const/4 v1, 0x0

    .line 18
    iget-object v0, v0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    .line 20
    sget-boolean v1, Lcom/android/tools/r8/internal/C9;->c:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/C9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/C9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/f9;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/f9;

    iget-object p1, p1, Lcom/android/tools/r8/internal/f9;->d:Ljava/util/LinkedHashSet;

    invoke-static {p2, p1, p3}, Lcom/android/tools/r8/internal/at0;->a(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/f9;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/C9;->a(Lcom/android/tools/r8/internal/f9;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
