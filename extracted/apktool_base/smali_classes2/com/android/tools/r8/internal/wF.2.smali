.class public final Lcom/android/tools/r8/internal/wF;
.super Lcom/android/tools/r8/internal/P;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public transient f:Lcom/android/tools/r8/internal/pF;

.field public transient g:Lcom/android/tools/r8/internal/rF;

.field public transient h:Lcom/android/tools/r8/internal/qF;

.field public final synthetic i:Lcom/android/tools/r8/internal/zF;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/zF;IZIZ)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/P;-><init>()V

    if-nez p3, :cond_1

    if-nez p5, :cond_1

    invoke-virtual {p1, p2, p4}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Start key ("

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") is larger than end key ("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p2, p0, Lcom/android/tools/r8/internal/wF;->b:I

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/wF;->d:Z

    iput p4, p0, Lcom/android/tools/r8/internal/wF;->c:I

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/wF;->e:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wF;->i()Lcom/android/tools/r8/internal/lF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    iget v0, v0, Lcom/android/tools/r8/internal/M;->b:I

    return v0

    .line 15
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final a(II)Lcom/android/tools/r8/internal/jG;
    .locals 8

    .line 8
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/wF;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/wF;->d:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/wF;

    iget-object v3, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move v4, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/wF;-><init>(Lcom/android/tools/r8/internal/zF;IZIZ)V

    return-object v0

    :cond_0
    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v1, p0, Lcom/android/tools/r8/internal/wF;->c:I

    invoke-virtual {v0, p2, v1}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/android/tools/r8/internal/wF;->c:I

    :cond_2
    :goto_0
    move v4, p2

    .line 10
    iget-boolean p2, p0, Lcom/android/tools/r8/internal/wF;->d:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v0, p0, Lcom/android/tools/r8/internal/wF;->b:I

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result p2

    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/android/tools/r8/internal/wF;->b:I

    :cond_4
    :goto_1
    move v2, p1

    .line 11
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/wF;->e:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/wF;->d:Z

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/tools/r8/internal/wF;->b:I

    if-ne v2, p1, :cond_5

    iget p1, p0, Lcom/android/tools/r8/internal/wF;->c:I

    if-ne v4, p1, :cond_5

    return-object p0

    .line 12
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/wF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/wF;-><init>(Lcom/android/tools/r8/internal/zF;IZIZ)V

    return-object p1
.end method

.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/zF;->i:Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/wF;->d(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 4
    const-string v0, "Key ("

    const-string v1, ") out of range ["

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/wF;->d:Z

    const-string v1, "-"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/wF;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/wF;->e:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/wF;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/zF;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/zF;->i:Z

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    :cond_3
    return-object p1
.end method

.method public final a(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/wF;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zF;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lcom/android/tools/r8/internal/M30;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->f:Lcom/android/tools/r8/internal/pF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/pF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/pF;-><init>(Lcom/android/tools/r8/internal/wF;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/wF;->f:Lcom/android/tools/r8/internal/pF;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->f:Lcom/android/tools/r8/internal/pF;

    return-object v0
.end method

.method public final b(I)Lcom/android/tools/r8/internal/jG;
    .locals 7

    .line 3
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/wF;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/wF;

    iget-object v2, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v5, p0, Lcom/android/tools/r8/internal/wF;->c:I

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/wF;->e:Z

    const/4 v4, 0x0

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/wF;-><init>(Lcom/android/tools/r8/internal/zF;IZIZ)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v1, p0, Lcom/android/tools/r8/internal/wF;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/wF;

    iget-object v2, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v5, p0, Lcom/android/tools/r8/internal/wF;->c:I

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/wF;->e:Z

    const/4 v4, 0x0

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/wF;-><init>(Lcom/android/tools/r8/internal/zF;IZIZ)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public final c(I)Lcom/android/tools/r8/internal/jG;
    .locals 7

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/wF;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/wF;

    iget-object v2, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v3, p0, Lcom/android/tools/r8/internal/wF;->b:I

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/wF;->d:Z

    const/4 v6, 0x0

    move-object v1, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/wF;-><init>(Lcom/android/tools/r8/internal/zF;IZIZ)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v1, p0, Lcom/android/tools/r8/internal/wF;->c:I

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/wF;

    iget-object v2, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v3, p0, Lcom/android/tools/r8/internal/wF;->b:I

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/wF;->d:Z

    const/4 v6, 0x0

    move-object v1, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/wF;-><init>(Lcom/android/tools/r8/internal/zF;IZIZ)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public final clear()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/tF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/tF;-><init>(Lcom/android/tools/r8/internal/wF;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xF;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xF;->a()Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xF;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final comparator()Lcom/android/tools/r8/internal/gI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget-object v0, v0, Lcom/android/tools/r8/internal/zF;->j:Lcom/android/tools/r8/internal/gI;

    return-object v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget-object v0, v0, Lcom/android/tools/r8/internal/zF;->j:Lcom/android/tools/r8/internal/gI;

    return-object v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/tF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/tF;-><init>(Lcom/android/tools/r8/internal/wF;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xF;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xF;->a()Lcom/android/tools/r8/internal/lF;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/M;->c:Ljava/lang/Object;

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

.method public final d()I
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wF;->j()Lcom/android/tools/r8/internal/lF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget v0, v0, Lcom/android/tools/r8/internal/M;->b:I

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final d(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/wF;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v1, p0, Lcom/android/tools/r8/internal/wF;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/wF;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v1, p0, Lcom/android/tools/r8/internal/wF;->c:I

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/zF;->c(II)I

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

.method public final get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/wF;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zF;->d(I)Lcom/android/tools/r8/internal/lF;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/tools/r8/internal/M;->c:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i()Lcom/android/tools/r8/internal/lF;
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget-object v1, v0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-boolean v3, p0, Lcom/android/tools/r8/internal/wF;->d:Z

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/zF;->d:Lcom/android/tools/r8/internal/lF;

    goto :goto_4

    :cond_1
    iget v3, p0, Lcom/android/tools/r8/internal/wF;->b:I

    const/4 v4, 0x0

    move v5, v4

    move-object v4, v1

    :goto_0
    if-eqz v1, :cond_5

    iget v5, v1, Lcom/android/tools/r8/internal/M;->b:I

    invoke-virtual {v0, v3, v5}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v5

    if-eqz v5, :cond_5

    if-gez v5, :cond_3

    iget v4, v1, Lcom/android/tools/r8/internal/lF;->f:I

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v4, v6

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    goto :goto_2

    :cond_3
    iget v4, v1, Lcom/android/tools/r8/internal/lF;->f:I

    const/high16 v6, -0x80000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_4

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_4
    iget-object v4, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    :goto_2
    move-object v7, v4

    move-object v4, v1

    move-object v1, v7

    goto :goto_0

    :cond_5
    if-nez v5, :cond_6

    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v4

    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v3, v0, Lcom/android/tools/r8/internal/M;->b:I

    iget v4, p0, Lcom/android/tools/r8/internal/wF;->b:I

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v1

    if-gez v1, :cond_7

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/lF;->b()Lcom/android/tools/r8/internal/lF;

    move-result-object v0

    :cond_7
    :goto_4
    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/wF;->e:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v3, v0, Lcom/android/tools/r8/internal/M;->b:I

    iget v4, p0, Lcom/android/tools/r8/internal/wF;->c:I

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v1

    if-ltz v1, :cond_8

    goto :goto_5

    :cond_8
    return-object v0

    :cond_9
    :goto_5
    return-object v2
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget-object v0, v0, Lcom/android/tools/r8/internal/zF;->d:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wF;->i()Lcom/android/tools/r8/internal/lF;

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

.method public final j()Lcom/android/tools/r8/internal/lF;
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget-object v1, v0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-boolean v3, p0, Lcom/android/tools/r8/internal/wF;->e:Z

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/zF;->e:Lcom/android/tools/r8/internal/lF;

    goto :goto_4

    :cond_1
    iget v3, p0, Lcom/android/tools/r8/internal/wF;->c:I

    const/4 v4, 0x0

    move v5, v4

    move-object v4, v1

    :goto_0
    if-eqz v1, :cond_5

    iget v5, v1, Lcom/android/tools/r8/internal/M;->b:I

    invoke-virtual {v0, v3, v5}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v5

    if-eqz v5, :cond_5

    if-gez v5, :cond_3

    iget v4, v1, Lcom/android/tools/r8/internal/lF;->f:I

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v4, v6

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    goto :goto_2

    :cond_3
    iget v4, v1, Lcom/android/tools/r8/internal/lF;->f:I

    const/high16 v6, -0x80000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_4

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_4
    iget-object v4, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    :goto_2
    move-object v7, v4

    move-object v4, v1

    move-object v1, v7

    goto :goto_0

    :cond_5
    if-nez v5, :cond_6

    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v4

    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v3, v0, Lcom/android/tools/r8/internal/M;->b:I

    iget v4, p0, Lcom/android/tools/r8/internal/wF;->c:I

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v1

    if-ltz v1, :cond_7

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/lF;->d()Lcom/android/tools/r8/internal/lF;

    move-result-object v0

    :cond_7
    :goto_4
    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/wF;->d:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v3, v0, Lcom/android/tools/r8/internal/M;->b:I

    iget v4, p0, Lcom/android/tools/r8/internal/wF;->b:I

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v1

    if-gez v1, :cond_8

    goto :goto_5

    :cond_8
    return-object v0

    :cond_9
    :goto_5
    return-object v2
.end method

.method public final keySet()Lcom/android/tools/r8/internal/qI;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->g:Lcom/android/tools/r8/internal/rF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/rF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/rF;-><init>(Lcom/android/tools/r8/internal/wF;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/wF;->g:Lcom/android/tools/r8/internal/rF;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->g:Lcom/android/tools/r8/internal/rF;

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/zF;->i:Z

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/wF;->d(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zF;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/zF;->i:Z

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public final size()I
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/tF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/tF;-><init>(Lcom/android/tools/r8/internal/wF;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xF;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xF;->a()Lcom/android/tools/r8/internal/lF;

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final values()Lcom/android/tools/r8/internal/w30;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->h:Lcom/android/tools/r8/internal/qF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/qF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/qF;-><init>(Lcom/android/tools/r8/internal/wF;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/wF;->h:Lcom/android/tools/r8/internal/qF;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wF;->h:Lcom/android/tools/r8/internal/qF;

    return-object v0
.end method
