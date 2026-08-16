.class public abstract Lcom/android/tools/r8/internal/Me0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/util/TreeSet;)Lcom/android/tools/r8/internal/QF;
    .locals 3

    .line 34
    new-instance v0, Lcom/android/tools/r8/internal/QF;

    const/16 v1, 0x10

    .line 35
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/QF;-><init>(I)V

    .line 36
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ke0;

    .line 37
    new-instance v2, Lcom/android/tools/r8/internal/OM0;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/OM0;-><init>(Lcom/android/tools/r8/internal/FF;Lcom/android/tools/r8/internal/Ke0;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ke0;->b(Ljava/util/function/IntConsumer;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/FF;Lcom/android/tools/r8/internal/Ke0;I)V
    .locals 1

    .line 38
    invoke-interface {p0, p2}, Lcom/android/tools/r8/internal/DF;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {p0, p2}, Lcom/android/tools/r8/internal/DF;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-interface {p0, p2, v0}, Lcom/android/tools/r8/internal/DF;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Ke0;Ljava/util/HashSet;Lcom/android/tools/r8/internal/QF;Ljava/util/ArrayDeque;Ljava/util/TreeSet;Ljava/util/ArrayList;)V
    .locals 10

    .line 1
    invoke-virtual {p3, p0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p4, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 3
    sget-boolean v1, Lcom/android/tools/r8/internal/Me0;->a:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/QF;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 6
    iget v1, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/QF;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeSet;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 7
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 8
    invoke-virtual {v3, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    move-object v0, v3

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 10
    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/tools/r8/internal/Ke0;

    .line 11
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v3, p0, :cond_6

    goto :goto_3

    .line 13
    :cond_6
    invoke-virtual {p4, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 14
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 15
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Ke0;

    if-ne v3, v4, :cond_b

    .line 16
    invoke-virtual {p3, v1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 17
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 18
    new-instance v1, Lcom/android/tools/r8/internal/Le0;

    .line 19
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Ke0;

    const/4 v6, 0x0

    move v7, v6

    .line 20
    :goto_5
    iget-object v8, v5, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 21
    iget v8, v5, Lcom/android/tools/r8/internal/Ke0;->c:I

    add-int/2addr v8, v7

    invoke-virtual {p2, v8}, Lcom/android/tools/r8/internal/QF;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/TreeSet;

    if-eqz v8, :cond_9

    .line 22
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/Ke0;

    .line 23
    invoke-virtual {v3, v9}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_6

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    move v6, v2

    .line 24
    :goto_6
    invoke-direct {v1, v3, v6}, Lcom/android/tools/r8/internal/Le0;-><init>(Ljava/util/TreeSet;Z)V

    .line 25
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 26
    :cond_b
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Ke0;

    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 27
    invoke-static/range {v3 .. v8}, Lcom/android/tools/r8/internal/Me0;->a(Lcom/android/tools/r8/internal/Ke0;Ljava/util/HashSet;Lcom/android/tools/r8/internal/QF;Ljava/util/ArrayDeque;Ljava/util/TreeSet;Ljava/util/ArrayList;)V

    goto/16 :goto_3

    .line 28
    :cond_d
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Ke0;

    .line 29
    sget-boolean p3, Lcom/android/tools/r8/internal/Me0;->a:Z

    if-nez p3, :cond_f

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p2, p0, :cond_e

    goto :goto_7

    :cond_e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 30
    :cond_f
    :goto_7
    invoke-virtual {p4, p0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p3, :cond_11

    if-eqz p2, :cond_10

    goto :goto_8

    .line 31
    :cond_10
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 32
    :cond_11
    :goto_8
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    if-nez p3, :cond_13

    if-eqz p0, :cond_12

    goto :goto_9

    .line 33
    :cond_12
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_13
    :goto_9
    return-void
.end method
