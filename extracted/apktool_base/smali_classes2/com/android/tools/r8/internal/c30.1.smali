.class public final Lcom/android/tools/r8/internal/c30;
.super Lcom/android/tools/r8/internal/a1;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Z

.field public final e:Z

.field public transient f:Lcom/android/tools/r8/internal/V20;

.field public transient g:Lcom/android/tools/r8/internal/X20;

.field public transient h:Lcom/android/tools/r8/internal/W20;

.field public final synthetic i:Lcom/android/tools/r8/internal/f30;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/f30;Ljava/lang/Object;ZLjava/lang/Object;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/a1;-><init>()V

    if-nez p3, :cond_1

    if-nez p5, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p2

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Start key ("

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") is larger than end key ("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/c30;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/c30;->d:Z

    iput-object p4, p0, Lcom/android/tools/r8/internal/c30;->c:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/c30;->e:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/a1;
    .locals 8

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/c30;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/c30;->d:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/c30;

    iget-object v3, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/c30;-><init>(Lcom/android/tools/r8/internal/f30;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v0

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/c30;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p2

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/c30;->c:Ljava/lang/Object;

    :cond_2
    :goto_0
    move-object v4, p2

    iget-boolean p2, p0, Lcom/android/tools/r8/internal/c30;->d:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p2, p1

    check-cast p2, Ljava/lang/Comparable;

    invoke-interface {p2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/c30;->b:Ljava/lang/Object;

    :cond_4
    :goto_1
    move-object v2, p1

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/c30;->e:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/c30;->d:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/tools/r8/internal/c30;->b:Ljava/lang/Object;

    if-ne v2, p1, :cond_5

    iget-object p1, p0, Lcom/android/tools/r8/internal/c30;->c:Ljava/lang/Object;

    if-ne v4, p1, :cond_5

    return-object p0

    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/c30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/c30;-><init>(Lcom/android/tools/r8/internal/f30;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/a1;
    .locals 7

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/c30;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/c30;

    iget-object v2, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v3, p0, Lcom/android/tools/r8/internal/c30;->b:Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/c30;->d:Z

    const/4 v6, 0x0

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/c30;-><init>(Lcom/android/tools/r8/internal/f30;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/c30;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/c30;

    iget-object v2, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v3, p0, Lcom/android/tools/r8/internal/c30;->b:Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/c30;->d:Z

    const/4 v6, 0x0

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/c30;-><init>(Lcom/android/tools/r8/internal/f30;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Lcom/android/tools/r8/internal/a1;
    .locals 7

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/c30;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/c30;

    iget-object v2, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v5, p0, Lcom/android/tools/r8/internal/c30;->c:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/c30;->e:Z

    const/4 v4, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/c30;-><init>(Lcom/android/tools/r8/internal/f30;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/c30;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/c30;

    iget-object v2, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v5, p0, Lcom/android/tools/r8/internal/c30;->c:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/c30;->e:Z

    const/4 v4, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/c30;-><init>(Lcom/android/tools/r8/internal/f30;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public final clear()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Z20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Z20;-><init>(Lcom/android/tools/r8/internal/c30;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/d30;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/d30;->a()Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/d30;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/c30;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/f30;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Z20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Z20;-><init>(Lcom/android/tools/r8/internal/c30;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/d30;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/d30;->a()Lcom/android/tools/r8/internal/R20;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/R20;->c:Ljava/lang/Object;

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/c30;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/c30;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/c30;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/c30;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final e()Lcom/android/tools/r8/internal/M30;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->g:Lcom/android/tools/r8/internal/X20;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/X20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/X20;-><init>(Lcom/android/tools/r8/internal/c30;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/c30;->g:Lcom/android/tools/r8/internal/X20;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->g:Lcom/android/tools/r8/internal/X20;

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/c30;->j()Lcom/android/tools/r8/internal/R20;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/c30;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/f30;->d(Ljava/lang/Object;)Lcom/android/tools/r8/internal/R20;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/tools/r8/internal/R20;->c:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i()Lcom/android/tools/r8/internal/M30;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->f:Lcom/android/tools/r8/internal/V20;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/V20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/V20;-><init>(Lcom/android/tools/r8/internal/c30;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/c30;->f:Lcom/android/tools/r8/internal/V20;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->f:Lcom/android/tools/r8/internal/V20;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v0, v0, Lcom/android/tools/r8/internal/f30;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/c30;->j()Lcom/android/tools/r8/internal/R20;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final j()Lcom/android/tools/r8/internal/R20;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v1, v0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-boolean v3, p0, Lcom/android/tools/r8/internal/c30;->d:Z

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/f30;->d:Lcom/android/tools/r8/internal/R20;

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v1

    :goto_0
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Comparable;

    invoke-interface {v5, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_5

    if-gez v4, :cond_3

    iget v3, v1, Lcom/android/tools/r8/internal/R20;->f:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v3, v5

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    goto :goto_2

    :cond_3
    iget v3, v1, Lcom/android/tools/r8/internal/R20;->f:I

    const/high16 v5, -0x80000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_4

    :goto_1
    move-object v3, v2

    goto :goto_2

    :cond_4
    iget-object v3, v1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    :goto_2
    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v3

    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v3, v0, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/tools/r8/internal/c30;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_7

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/R20;->c()Lcom/android/tools/r8/internal/R20;

    move-result-object v0

    :cond_7
    :goto_4
    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/c30;->e:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v3, v0, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/tools/r8/internal/c30;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_8

    goto :goto_5

    :cond_8
    return-object v0

    :cond_9
    :goto_5
    return-object v2
.end method

.method public final k()Lcom/android/tools/r8/internal/R20;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v1, v0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-boolean v3, p0, Lcom/android/tools/r8/internal/c30;->e:Z

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/f30;->e:Lcom/android/tools/r8/internal/R20;

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->c:Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v1

    :goto_0
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Comparable;

    invoke-interface {v5, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_5

    if-gez v4, :cond_3

    iget v3, v1, Lcom/android/tools/r8/internal/R20;->f:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v3, v5

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    goto :goto_2

    :cond_3
    iget v3, v1, Lcom/android/tools/r8/internal/R20;->f:I

    const/high16 v5, -0x80000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_4

    :goto_1
    move-object v3, v2

    goto :goto_2

    :cond_4
    iget-object v3, v1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    :goto_2
    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v3

    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v3, v0, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/tools/r8/internal/c30;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_7

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/R20;->e()Lcom/android/tools/r8/internal/R20;

    move-result-object v0

    :cond_7
    :goto_4
    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/c30;->d:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v3, v0, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/tools/r8/internal/c30;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_8

    goto :goto_5

    :cond_8
    return-object v0

    :cond_9
    :goto_5
    return-object v2
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/c30;->k()Lcom/android/tools/r8/internal/R20;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/f30;->i:Z

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/c30;->d(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") out of range ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/c30;->d:Z

    const-string v1, "-"

    if-eqz p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/c30;->b:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/c30;->e:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/c30;->c:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/f30;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/f30;->i:Z

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    :cond_3
    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/f30;->i:Z

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/c30;->d(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/f30;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/f30;->i:Z

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public final size()I
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Z20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Z20;-><init>(Lcom/android/tools/r8/internal/c30;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/d30;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/d30;->a()Lcom/android/tools/r8/internal/R20;

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->h:Lcom/android/tools/r8/internal/W20;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/W20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/W20;-><init>(Lcom/android/tools/r8/internal/c30;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/c30;->h:Lcom/android/tools/r8/internal/W20;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/c30;->h:Lcom/android/tools/r8/internal/W20;

    return-object v0
.end method
