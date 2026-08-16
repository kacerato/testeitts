.class public final Lcom/android/tools/r8/internal/mb0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashSet;

.field public final b:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/mb0;->a:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/mb0;->b:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/g3;)Lcom/android/tools/r8/internal/mb0;
    .locals 10

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/mb0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mb0;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->D1:Lcom/android/tools/r8/internal/hb0;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 4
    iget-object v4, v1, Lcom/android/tools/r8/internal/hb0;->b:Lcom/android/tools/r8/internal/kb0;

    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 7
    iget-object v4, v4, Lcom/android/tools/r8/internal/kb0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :cond_0
    if-ge v8, v6, :cond_3

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/tools/r8/internal/jb0;

    .line 8
    invoke-interface {v9, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 9
    iget-object v4, v1, Lcom/android/tools/r8/internal/hb0;->c:Lcom/android/tools/r8/internal/kb0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 11
    iget-object v4, v4, Lcom/android/tools/r8/internal/kb0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_1
    if-ge v7, v6, :cond_2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/internal/jb0;

    .line 12
    invoke-interface {v8, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 13
    :cond_2
    iget-object v4, v0, Lcom/android/tools/r8/internal/mb0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_3
    :goto_1
    iget-object v4, v0, Lcom/android/tools/r8/internal/mb0;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_4
    iget-object v1, v0, Lcom/android/tools/r8/internal/mb0;->a:Ljava/util/LinkedHashSet;

    .line 16
    new-instance v2, Lcom/android/tools/r8/internal/Yx0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 17
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 18
    new-instance v1, Lcom/android/tools/r8/internal/Ik1;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/tools/r8/internal/Ik1;-><init>(Lcom/android/tools/r8/graph/g3;Lcom/android/tools/r8/internal/mb0;Lcom/android/tools/r8/internal/Yx0;)V

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/g3;Lcom/android/tools/r8/internal/mb0;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/E0;)V
    .locals 2

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/Jk1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jk1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Kk1;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/Kk1;-><init>(Lcom/android/tools/r8/internal/mb0;Lcom/android/tools/r8/internal/Yx0;)V

    invoke-virtual {p3, p0, v0, v1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/mb0;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 21
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/internal/mb0;->b:Ljava/util/LinkedHashSet;

    .line 22
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 23
    iget-object p0, p0, Lcom/android/tools/r8/internal/mb0;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
