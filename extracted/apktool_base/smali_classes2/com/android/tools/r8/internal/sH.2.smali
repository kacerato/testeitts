.class public final Lcom/android/tools/r8/internal/sH;
.super Lcom/android/tools/r8/internal/V;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public transient f:Lcom/android/tools/r8/internal/lH;

.field public transient g:Lcom/android/tools/r8/internal/nH;

.field public transient h:Lcom/android/tools/r8/internal/mH;

.field public final synthetic i:Lcom/android/tools/r8/internal/vH;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/vH;IZIZ)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/V;-><init>()V

    if-nez p3, :cond_1

    if-nez p5, :cond_1

    invoke-virtual {p1, p2, p4}, Lcom/android/tools/r8/internal/vH;->c(II)I

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
    iput p2, p0, Lcom/android/tools/r8/internal/sH;->b:I

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/sH;->d:Z

    iput p4, p0, Lcom/android/tools/r8/internal/sH;->c:I

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/sH;->e:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sH;->i()Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    iget v0, v0, Lcom/android/tools/r8/internal/S;->b:I

    return v0

    .line 15
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final a(II)Lcom/android/tools/r8/internal/wH;
    .locals 8

    .line 8
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/sH;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/sH;->d:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/sH;

    iget-object v3, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move v4, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/sH;-><init>(Lcom/android/tools/r8/internal/vH;IZIZ)V

    return-object v0

    :cond_0
    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v1, p0, Lcom/android/tools/r8/internal/sH;->c:I

    invoke-virtual {v0, p2, v1}, Lcom/android/tools/r8/internal/vH;->c(II)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/android/tools/r8/internal/sH;->c:I

    :cond_2
    :goto_0
    move v4, p2

    .line 10
    iget-boolean p2, p0, Lcom/android/tools/r8/internal/sH;->d:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v0, p0, Lcom/android/tools/r8/internal/sH;->b:I

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/vH;->c(II)I

    move-result p2

    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/android/tools/r8/internal/sH;->b:I

    :cond_4
    :goto_1
    move v2, p1

    .line 11
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/sH;->e:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/sH;->d:Z

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/tools/r8/internal/sH;->b:I

    if-ne v2, p1, :cond_5

    iget p1, p0, Lcom/android/tools/r8/internal/sH;->c:I

    if-ne v4, p1, :cond_5

    return-object p0

    .line 12
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/sH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/sH;-><init>(Lcom/android/tools/r8/internal/vH;IZIZ)V

    return-object p1
.end method

.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/vH;->i:Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/sH;->d(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 4
    const-string v0, "Key ("

    const-string v1, ") out of range ["

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/sH;->d:Z

    const-string v1, "-"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/sH;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/sH;->e:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/sH;->c:I

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
    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/vH;->i:Z

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    :cond_3
    return-object p1
.end method

.method public final a(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/sH;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vH;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(I)Lcom/android/tools/r8/internal/wH;
    .locals 7

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/sH;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/sH;

    iget-object v2, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v5, p0, Lcom/android/tools/r8/internal/sH;->c:I

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/sH;->e:Z

    const/4 v4, 0x0

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/sH;-><init>(Lcom/android/tools/r8/internal/vH;IZIZ)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v1, p0, Lcom/android/tools/r8/internal/sH;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vH;->c(II)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/sH;

    iget-object v2, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v5, p0, Lcom/android/tools/r8/internal/sH;->c:I

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/sH;->e:Z

    const/4 v4, 0x0

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/sH;-><init>(Lcom/android/tools/r8/internal/vH;IZIZ)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/M30;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->f:Lcom/android/tools/r8/internal/lH;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/lH;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/lH;-><init>(Lcom/android/tools/r8/internal/sH;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/sH;->f:Lcom/android/tools/r8/internal/lH;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->f:Lcom/android/tools/r8/internal/lH;

    return-object v0
.end method

.method public final c(I)Lcom/android/tools/r8/internal/wH;
    .locals 7

    .line 3
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/sH;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/sH;

    iget-object v2, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v3, p0, Lcom/android/tools/r8/internal/sH;->b:I

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/sH;->d:Z

    const/4 v6, 0x0

    move-object v1, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/sH;-><init>(Lcom/android/tools/r8/internal/vH;IZIZ)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v1, p0, Lcom/android/tools/r8/internal/sH;->c:I

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vH;->c(II)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/sH;

    iget-object v2, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v3, p0, Lcom/android/tools/r8/internal/sH;->b:I

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/sH;->d:Z

    const/4 v6, 0x0

    move-object v1, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/sH;-><init>(Lcom/android/tools/r8/internal/vH;IZIZ)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public final clear()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/pH;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/pH;-><init>(Lcom/android/tools/r8/internal/sH;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tH;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tH;->a()Lcom/android/tools/r8/internal/hH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tH;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final comparator()Lcom/android/tools/r8/internal/gI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/pH;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/pH;-><init>(Lcom/android/tools/r8/internal/sH;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tH;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tH;->a()Lcom/android/tools/r8/internal/hH;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final d()I
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sH;->j()Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget v0, v0, Lcom/android/tools/r8/internal/S;->b:I

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
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/sH;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v1, p0, Lcom/android/tools/r8/internal/sH;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vH;->c(II)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/sH;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v1, p0, Lcom/android/tools/r8/internal/sH;->c:I

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vH;->c(II)I

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

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/sH;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vH;->d(I)Lcom/android/tools/r8/internal/hH;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i()Lcom/android/tools/r8/internal/hH;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget-object v1, v0, Lcom/android/tools/r8/internal/vH;->b:Lcom/android/tools/r8/internal/hH;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/sH;->d:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/vH;->d:Lcom/android/tools/r8/internal/hH;

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/sH;->b:I

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/vH;->e(I)Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v3, v0, Lcom/android/tools/r8/internal/S;->b:I

    iget v4, p0, Lcom/android/tools/r8/internal/sH;->b:I

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/vH;->c(II)I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hH;->c()Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/sH;->e:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v3, v0, Lcom/android/tools/r8/internal/S;->b:I

    iget v4, p0, Lcom/android/tools/r8/internal/sH;->c:I

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/vH;->c(II)I

    move-result v1

    if-ltz v1, :cond_3

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object v2
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget-object v0, v0, Lcom/android/tools/r8/internal/vH;->d:Lcom/android/tools/r8/internal/hH;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sH;->i()Lcom/android/tools/r8/internal/hH;

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

.method public final j()Lcom/android/tools/r8/internal/hH;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget-object v1, v0, Lcom/android/tools/r8/internal/vH;->b:Lcom/android/tools/r8/internal/hH;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/sH;->e:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/vH;->e:Lcom/android/tools/r8/internal/hH;

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/sH;->c:I

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/vH;->e(I)Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v3, v0, Lcom/android/tools/r8/internal/S;->b:I

    iget v4, p0, Lcom/android/tools/r8/internal/sH;->c:I

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/vH;->c(II)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hH;->e()Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/sH;->d:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v3, v0, Lcom/android/tools/r8/internal/S;->b:I

    iget v4, p0, Lcom/android/tools/r8/internal/sH;->b:I

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/vH;->c(II)I

    move-result v1

    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object v2
.end method

.method public final keySet()Lcom/android/tools/r8/internal/qI;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->g:Lcom/android/tools/r8/internal/nH;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/nH;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/nH;-><init>(Lcom/android/tools/r8/internal/sH;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/sH;->g:Lcom/android/tools/r8/internal/nH;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->g:Lcom/android/tools/r8/internal/nH;

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/vH;->i:Z

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/sH;->d(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vH;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/vH;->i:Z

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public final size()I
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/pH;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/pH;-><init>(Lcom/android/tools/r8/internal/sH;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tH;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tH;->a()Lcom/android/tools/r8/internal/hH;

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final values()Lcom/android/tools/r8/internal/Od0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->h:Lcom/android/tools/r8/internal/mH;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/mH;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/mH;-><init>(Lcom/android/tools/r8/internal/sH;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/sH;->h:Lcom/android/tools/r8/internal/mH;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/sH;->h:Lcom/android/tools/r8/internal/mH;

    return-object v0
.end method
