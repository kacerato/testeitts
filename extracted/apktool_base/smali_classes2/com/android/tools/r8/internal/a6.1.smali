.class public abstract Lcom/android/tools/r8/internal/a6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/nJ;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-instance v1, Lcom/android/tools/r8/internal/Z5;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Z5;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    const/4 p0, 0x0

    move v0, p0

    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Z5;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    new-instance v3, Lcom/android/tools/r8/internal/jS;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v4

    invoke-direct {v3, v2, v4}, Lcom/android/tools/r8/internal/jS;-><init>(Lcom/android/tools/r8/internal/W5;I)V

    :goto_1
    move v4, p0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/b6;

    invoke-interface {v6, v3}, Lcom/android/tools/r8/internal/b6;->a(Lcom/android/tools/r8/internal/jS;)Z

    move-result v6

    or-int/2addr v4, v6

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/jS;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p2, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget v5, v5, Lcom/android/tools/r8/internal/nJ$p;->x0:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    if-gt v0, v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/If;

    const-string p1, "Too many iterations in BasicBlockMuncher"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_4
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/jS;->previous()Lcom/android/tools/r8/internal/zE;

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    new-instance v3, Lcom/android/tools/r8/internal/jS;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v4

    invoke-direct {v3, v2, v4}, Lcom/android/tools/r8/internal/jS;-><init>(Lcom/android/tools/r8/internal/W5;I)V

    goto :goto_1

    :cond_5
    new-instance v2, Lcom/android/tools/r8/internal/B41;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/B41;-><init>(Lcom/android/tools/r8/internal/jS;)V

    invoke-static {v2}, Lcom/android/tools/r8/internal/X60;->a(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/xK;->b(Lcom/android/tools/r8/internal/Z5;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Z5;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_6
    return-void
.end method
