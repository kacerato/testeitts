.class public abstract Lcom/android/tools/r8/internal/mt0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/A11;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/A11;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/QJ;

    .line 3
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 4
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v3

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v5

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v6

    .line 10
    invoke-static {v3, v5, v6}, Lcom/android/tools/r8/internal/mt0;->a(Lcom/android/tools/r8/internal/f60;Ljava/util/Set;Ljava/util/Set;)V

    .line 11
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 12
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 13
    iget-object v6, v3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 14
    iget-object v3, v3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/mt0;->a(Lcom/android/tools/r8/internal/xw0;)V

    .line 16
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v4

    if-nez v4, :cond_1

    .line 17
    iput-boolean v2, v3, Lcom/android/tools/r8/internal/tZ;->l:Z

    move v3, v5

    goto :goto_0

    .line 18
    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/If;

    const-string p1, "Failed to remove trivial phis between new-instance and <init>"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/If;

    const-string p1, "Invalid defining value for call to <init>"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/If;

    const-string p1, "Failed to identify unique new-instance for <init>"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_4
    sget-boolean v0, Lcom/android/tools/r8/internal/mt0;->a:Z

    if-nez v0, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    :goto_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/f60;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 23
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-nez v1, :cond_1

    .line 24
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_1
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v0

    .line 26
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/mt0;->a(Lcom/android/tools/r8/internal/f60;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;)V
    .locals 9

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/Ok0;

    new-instance v1, Lcom/android/tools/r8/internal/Ul1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Ul1;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Ok0;-><init>(Ljava/util/function/Function;)V

    .line 29
    sget-boolean v1, Lcom/android/tools/r8/internal/Ok0;->h:Z

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/tools/r8/internal/Ok0;->a:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Ok0;->a(Ljava/lang/Object;)V

    .line 31
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ok0;->f:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_8

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 34
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_2

    goto/16 :goto_5

    .line 35
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v4

    .line 36
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    .line 37
    invoke-interface {v6}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v6

    .line 38
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    if-eq v8, p0, :cond_3

    .line 39
    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    .line 40
    :cond_4
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 41
    :cond_5
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/f60;

    .line 42
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    .line 43
    iget-object v8, v6, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    .line 44
    invoke-virtual {v8, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 45
    iput-object v7, v6, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    goto :goto_4

    .line 46
    :cond_6
    invoke-virtual {v4, p0}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 47
    iget-object v5, v4, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 48
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v6

    invoke-virtual {v5, v4, v7, v6}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    :cond_8
    return-void
.end method
