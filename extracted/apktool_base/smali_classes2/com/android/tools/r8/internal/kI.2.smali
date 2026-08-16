.class public final Lcom/android/tools/r8/internal/kI;
.super Lcom/android/tools/r8/internal/d0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public final synthetic f:Lcom/android/tools/r8/internal/lI;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/lI;IZIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/d0;-><init>()V

    if-nez p3, :cond_1

    if-nez p5, :cond_1

    invoke-virtual {p1, p2, p4}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Start element ("

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") is larger than end element ("

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
    iput p2, p0, Lcom/android/tools/r8/internal/kI;->b:I

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/kI;->d:Z

    iput p4, p0, Lcom/android/tools/r8/internal/kI;->c:I

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/kI;->e:Z

    return-void
.end method


# virtual methods
.method public final K()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/kI;->a()Lcom/android/tools/r8/internal/hI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/tools/r8/internal/hI;->b:I

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final a()Lcom/android/tools/r8/internal/hI;
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget-object v1, v0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 4
    :cond_0
    iget-boolean v3, p0, Lcom/android/tools/r8/internal/kI;->d:Z

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/lI;->d:Lcom/android/tools/r8/internal/hI;

    goto :goto_4

    .line 5
    :cond_1
    iget v3, p0, Lcom/android/tools/r8/internal/kI;->b:I

    const/4 v4, 0x0

    move v5, v4

    move-object v4, v1

    :goto_0
    if-eqz v1, :cond_5

    .line 6
    iget v5, v1, Lcom/android/tools/r8/internal/hI;->b:I

    invoke-virtual {v0, v3, v5}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result v5

    if-eqz v5, :cond_5

    if-gez v5, :cond_3

    .line 7
    iget v4, v1, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v4, v6

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    goto :goto_2

    .line 8
    :cond_3
    iget v4, v1, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v6, -0x80000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_4

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_4
    iget-object v4, v1, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

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

    .line 9
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v3, v0, Lcom/android/tools/r8/internal/hI;->b:I

    iget v4, p0, Lcom/android/tools/r8/internal/kI;->b:I

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result v1

    if-gez v1, :cond_7

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->b()Lcom/android/tools/r8/internal/hI;

    move-result-object v0

    :cond_7
    :goto_4
    if-eqz v0, :cond_9

    .line 10
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/kI;->e:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v3, v0, Lcom/android/tools/r8/internal/hI;->b:I

    iget v4, p0, Lcom/android/tools/r8/internal/kI;->c:I

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result v1

    if-ltz v1, :cond_8

    goto :goto_5

    :cond_8
    return-object v0

    :cond_9
    :goto_5
    return-object v2
.end method

.method public final a(I)Lcom/android/tools/r8/internal/qI;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/kI;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/kI;

    iget-object v2, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v5, p0, Lcom/android/tools/r8/internal/kI;->c:I

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/kI;->e:Z

    const/4 v4, 0x0

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/kI;-><init>(Lcom/android/tools/r8/internal/lI;IZIZ)V

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v1, p0, Lcom/android/tools/r8/internal/kI;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/kI;

    iget-object v2, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v5, p0, Lcom/android/tools/r8/internal/kI;->c:I

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/kI;->e:Z

    const/4 v4, 0x0

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/kI;-><init>(Lcom/android/tools/r8/internal/lI;IZIZ)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public final add(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/kI;->k(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Element ("

    const-string v2, ") out of range ["

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/kI;->d:Z

    const-string v2, "-"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/kI;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/kI;->e:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/kI;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/lI;->add(I)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/jI;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/jI;-><init>(Lcom/android/tools/r8/internal/kI;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/iI;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/iI;->r()I

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/iI;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget-object v0, v0, Lcom/android/tools/r8/internal/lI;->g:Lcom/android/tools/r8/internal/gI;

    return-object v0
.end method

.method public final d(II)Lcom/android/tools/r8/internal/qI;
    .locals 8

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/kI;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/kI;->d:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/kI;

    iget-object v3, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move v4, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/kI;-><init>(Lcom/android/tools/r8/internal/lI;IZIZ)V

    return-object v0

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v1, p0, Lcom/android/tools/r8/internal/kI;->c:I

    invoke-virtual {v0, p2, v1}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/android/tools/r8/internal/kI;->c:I

    :cond_2
    :goto_0
    move v4, p2

    iget-boolean p2, p0, Lcom/android/tools/r8/internal/kI;->d:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v0, p0, Lcom/android/tools/r8/internal/kI;->b:I

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result p2

    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/android/tools/r8/internal/kI;->b:I

    :cond_4
    :goto_1
    move v2, p1

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/kI;->e:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/kI;->d:Z

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/tools/r8/internal/kI;->b:I

    if-ne v2, p1, :cond_5

    iget p1, p0, Lcom/android/tools/r8/internal/kI;->c:I

    if-ne v4, p1, :cond_5

    return-object p0

    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/kI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/kI;-><init>(Lcom/android/tools/r8/internal/lI;IZIZ)V

    return-object p1
.end method

.method public final e(I)Lcom/android/tools/r8/internal/qI;
    .locals 7

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/kI;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/kI;

    iget-object v2, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v3, p0, Lcom/android/tools/r8/internal/kI;->b:I

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/kI;->d:Z

    const/4 v6, 0x0

    move-object v1, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/kI;-><init>(Lcom/android/tools/r8/internal/lI;IZIZ)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v1, p0, Lcom/android/tools/r8/internal/kI;->c:I

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/kI;

    iget-object v2, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v3, p0, Lcom/android/tools/r8/internal/kI;->b:I

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/kI;->d:Z

    const/4 v6, 0x0

    move-object v1, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/kI;-><init>(Lcom/android/tools/r8/internal/lI;IZIZ)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public final h(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/kI;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget-object v0, v0, Lcom/android/tools/r8/internal/lI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/kI;->a()Lcom/android/tools/r8/internal/hI;

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

.method public final iterator()Lcom/android/tools/r8/internal/HH;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/jI;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/jI;-><init>(Lcom/android/tools/r8/internal/kI;)V

    return-object v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/PH;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/jI;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/jI;-><init>(Lcom/android/tools/r8/internal/kI;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/jI;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/jI;-><init>(Lcom/android/tools/r8/internal/kI;)V

    return-object v0
.end method

.method public final k(I)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/kI;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v1, p0, Lcom/android/tools/r8/internal/kI;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/kI;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v1, p0, Lcom/android/tools/r8/internal/kI;->c:I

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/lI;->e(II)I

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

.method public final p()I
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget-object v1, v0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v3, p0, Lcom/android/tools/r8/internal/kI;->e:Z

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/lI;->e:Lcom/android/tools/r8/internal/hI;

    goto :goto_4

    :cond_1
    iget v3, p0, Lcom/android/tools/r8/internal/kI;->c:I

    const/4 v4, 0x0

    move v5, v4

    move-object v4, v1

    :goto_0
    if-eqz v1, :cond_5

    iget v5, v1, Lcom/android/tools/r8/internal/hI;->b:I

    invoke-virtual {v0, v3, v5}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result v5

    if-eqz v5, :cond_5

    if-gez v5, :cond_3

    iget v4, v1, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v4, v6

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    goto :goto_2

    :cond_3
    iget v4, v1, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v6, -0x80000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_4

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_4
    iget-object v4, v1, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

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
    iget-object v1, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v3, v0, Lcom/android/tools/r8/internal/hI;->b:I

    iget v4, p0, Lcom/android/tools/r8/internal/kI;->c:I

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result v1

    if-ltz v1, :cond_7

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->d()Lcom/android/tools/r8/internal/hI;

    move-result-object v0

    :cond_7
    :goto_4
    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/kI;->d:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v3, v0, Lcom/android/tools/r8/internal/hI;->b:I

    iget v4, p0, Lcom/android/tools/r8/internal/kI;->b:I

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result v1

    if-gez v1, :cond_8

    goto :goto_5

    :cond_8
    move-object v2, v0

    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    iget v0, v2, Lcom/android/tools/r8/internal/hI;->b:I

    return v0

    :cond_a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/kI;->k(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    move-result p1

    return p1
.end method

.method public final size()I
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/jI;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/jI;-><init>(Lcom/android/tools/r8/internal/kI;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/iI;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/iI;->r()I

    goto :goto_0

    :cond_0
    return v1
.end method
