.class public final Lcom/android/tools/r8/internal/f30;
.super Lcom/android/tools/r8/internal/a1;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public transient b:Lcom/android/tools/r8/internal/R20;

.field public c:I

.field public transient d:Lcom/android/tools/r8/internal/R20;

.field public transient e:Lcom/android/tools/r8/internal/R20;

.field public transient f:Lcom/android/tools/r8/internal/P20;

.field public transient g:Lcom/android/tools/r8/internal/U20;

.field public transient h:Lcom/android/tools/r8/internal/Q20;

.field public transient i:Z

.field public transient j:[Z

.field public transient k:[Lcom/android/tools/r8/internal/R20;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/a1;-><init>()V

    const/16 v0, 0x40

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    new-array v0, v0, [Lcom/android/tools/r8/internal/R20;

    iput-object v0, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/f30;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/a1;
    .locals 7

    new-instance v6, Lcom/android/tools/r8/internal/c30;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/c30;-><init>(Lcom/android/tools/r8/internal/f30;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v6
.end method

.method public final b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/a1;
    .locals 7

    new-instance v6, Lcom/android/tools/r8/internal/c30;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/c30;-><init>(Lcom/android/tools/r8/internal/f30;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v6
.end method

.method public final c(Ljava/lang/Object;)Lcom/android/tools/r8/internal/a1;
    .locals 7

    new-instance v6, Lcom/android/tools/r8/internal/c30;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/c30;-><init>(Lcom/android/tools/r8/internal/f30;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v6
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/f30;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    iput-object v0, p0, Lcom/android/tools/r8/internal/f30;->f:Lcom/android/tools/r8/internal/P20;

    iput-object v0, p0, Lcom/android/tools/r8/internal/f30;->h:Lcom/android/tools/r8/internal/Q20;

    iput-object v0, p0, Lcom/android/tools/r8/internal/f30;->g:Lcom/android/tools/r8/internal/U20;

    iput-object v0, p0, Lcom/android/tools/r8/internal/f30;->e:Lcom/android/tools/r8/internal/R20;

    iput-object v0, p0, Lcom/android/tools/r8/internal/f30;->d:Lcom/android/tools/r8/internal/R20;

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 9

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/f30;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/tools/r8/internal/f30;->g:Lcom/android/tools/r8/internal/U20;

    iput-object v1, v0, Lcom/android/tools/r8/internal/f30;->h:Lcom/android/tools/r8/internal/Q20;

    iput-object v1, v0, Lcom/android/tools/r8/internal/f30;->f:Lcom/android/tools/r8/internal/P20;

    const/16 v2, 0x40

    new-array v3, v2, [Z

    iput-object v3, v0, Lcom/android/tools/r8/internal/f30;->j:[Z

    new-array v2, v2, [Lcom/android/tools/r8/internal/R20;

    iput-object v2, v0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    iget v2, p0, Lcom/android/tools/r8/internal/f30;->c:I

    if-eqz v2, :cond_5

    new-instance v2, Lcom/android/tools/r8/internal/R20;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/R20;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/R20;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/R20;-><init>()V

    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    iget v5, v2, Lcom/android/tools/r8/internal/R20;->f:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, v2, Lcom/android/tools/r8/internal/R20;->f:I

    iput-object v4, v2, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/R20;->a(Lcom/android/tools/r8/internal/R20;)V

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/R20;->clone()Lcom/android/tools/r8/internal/R20;

    move-result-object v5

    iget-object v7, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/R20;->a(Lcom/android/tools/r8/internal/R20;)V

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/R20;->b(Lcom/android/tools/r8/internal/R20;)V

    iget v7, v4, Lcom/android/tools/r8/internal/R20;->f:I

    and-int/2addr v7, v6

    iput v7, v4, Lcom/android/tools/r8/internal/R20;->f:I

    iput-object v5, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iget-object v2, v2, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    move-object v4, v5

    goto :goto_4

    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/R20;->f()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v2, v2, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    if-nez v2, :cond_3

    iput-object v1, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iget-object v1, v3, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object v1, v0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    iput-object v1, v0, Lcom/android/tools/r8/internal/f30;->d:Lcom/android/tools/r8/internal/R20;

    :goto_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/f30;->d:Lcom/android/tools/r8/internal/R20;

    iget-object v1, v1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    if-eqz v1, :cond_2

    iput-object v1, v0, Lcom/android/tools/r8/internal/f30;->d:Lcom/android/tools/r8/internal/R20;

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    iput-object v1, v0, Lcom/android/tools/r8/internal/f30;->e:Lcom/android/tools/r8/internal/R20;

    :goto_3
    iget-object v1, v0, Lcom/android/tools/r8/internal/f30;->e:Lcom/android/tools/r8/internal/R20;

    iget-object v1, v1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    if-eqz v1, :cond_5

    iput-object v1, v0, Lcom/android/tools/r8/internal/f30;->e:Lcom/android/tools/r8/internal/R20;

    goto :goto_3

    :cond_3
    iget-object v4, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    goto :goto_1

    :cond_4
    iget-object v2, v2, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iget-object v4, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    :goto_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/R20;->f()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/R20;->clone()Lcom/android/tools/r8/internal/R20;

    move-result-object v5

    iget-object v7, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/R20;->b(Lcom/android/tools/r8/internal/R20;)V

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/R20;->a(Lcom/android/tools/r8/internal/R20;)V

    iget v7, v4, Lcom/android/tools/r8/internal/R20;->f:I

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    iput v7, v4, Lcom/android/tools/r8/internal/R20;->f:I

    iput-object v5, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    goto :goto_0

    :cond_5
    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/f30;->d(Ljava/lang/Object;)Lcom/android/tools/r8/internal/R20;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/e30;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/e30;-><init>(Lcom/android/tools/r8/internal/f30;)V

    iget v1, p0, Lcom/android/tools/r8/internal/f30;->c:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/d30;->a()Lcom/android/tools/r8/internal/R20;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/R20;->c:Ljava/lang/Object;

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Ljava/lang/Object;)Lcom/android/tools/r8/internal/R20;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_3

    if-gez v1, :cond_1

    iget v1, v0, Lcom/android/tools/r8/internal/R20;->f:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/android/tools/r8/internal/R20;->f:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/M30;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->g:Lcom/android/tools/r8/internal/U20;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/U20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/U20;-><init>(Lcom/android/tools/r8/internal/f30;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/f30;->g:Lcom/android/tools/r8/internal/U20;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->g:Lcom/android/tools/r8/internal/U20;

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->d:Lcom/android/tools/r8/internal/R20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/f30;->d(Ljava/lang/Object;)Lcom/android/tools/r8/internal/R20;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/R20;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public final i()Lcom/android/tools/r8/internal/M30;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->f:Lcom/android/tools/r8/internal/P20;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/P20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/P20;-><init>(Lcom/android/tools/r8/internal/f30;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/f30;->f:Lcom/android/tools/r8/internal/P20;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->f:Lcom/android/tools/r8/internal/P20;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/f30;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->e:Lcom/android/tools/r8/internal/R20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/f30;->i:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/tools/r8/internal/f30;->c:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/tools/r8/internal/f30;->c:I

    new-instance v1, Lcom/android/tools/r8/internal/R20;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/R20;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/f30;->d:Lcom/android/tools/r8/internal/R20;

    iput-object v1, p0, Lcom/android/tools/r8/internal/f30;->e:Lcom/android/tools/r8/internal/R20;

    iput-object v1, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    goto/16 :goto_d

    :cond_0
    move v4, v0

    :goto_0
    iget-object v5, v1, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Ljava/lang/Comparable;

    invoke-interface {v6, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    add-int/lit8 p1, v4, -0x1

    if-eqz v4, :cond_13

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aput-object v2, v0, p1

    move v4, p1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aput-object v1, v6, v4

    iget-object v6, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    add-int/lit8 v7, v4, 0x1

    if-lez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    aput-boolean v5, v6, v4

    const v6, 0x7fffffff

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/R20;->f()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/tools/r8/internal/f30;->c:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/tools/r8/internal/f30;->c:I

    new-instance v5, Lcom/android/tools/r8/internal/R20;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/internal/R20;-><init>(Ljava/lang/Object;)V

    iget-object p1, v1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    if-nez p1, :cond_3

    iput-object v5, p0, Lcom/android/tools/r8/internal/f30;->e:Lcom/android/tools/r8/internal/R20;

    :cond_3
    iput-object v1, v5, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object p1, v5, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iget p1, v1, Lcom/android/tools/r8/internal/R20;->f:I

    and-int/2addr p1, v6

    iput p1, v1, Lcom/android/tools/r8/internal/R20;->f:I

    iput-object v5, v1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    :goto_3
    move-object v1, v5

    goto :goto_5

    :cond_4
    iget-object v1, v1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    :goto_4
    move v4, v7

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result v5

    if-eqz v5, :cond_14

    iget v5, p0, Lcom/android/tools/r8/internal/f30;->c:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/tools/r8/internal/f30;->c:I

    new-instance v5, Lcom/android/tools/r8/internal/R20;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/internal/R20;-><init>(Ljava/lang/Object;)V

    iget-object p1, v1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    if-nez p1, :cond_6

    iput-object v5, p0, Lcom/android/tools/r8/internal/f30;->d:Lcom/android/tools/r8/internal/R20;

    :cond_6
    iput-object v1, v5, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iput-object p1, v5, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iget p1, v1, Lcom/android/tools/r8/internal/R20;->f:I

    const v8, -0x40000001    # -1.9999999f

    and-int/2addr p1, v8

    iput p1, v1, Lcom/android/tools/r8/internal/R20;->f:I

    iput-object v5, v1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    goto :goto_3

    :goto_5
    iput-boolean v3, p0, Lcom/android/tools/r8/internal/f30;->i:Z

    :goto_6
    if-lez v4, :cond_12

    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    add-int/lit8 v5, v4, -0x1

    aget-boolean p1, p1, v5

    const/4 v8, 0x2

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v5

    iget-object v9, p1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/R20;->f()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v4

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    invoke-virtual {v9, v3}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v5

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    :goto_7
    add-int/lit8 v4, v4, -0x2

    goto :goto_6

    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    aget-boolean p1, p1, v4

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v4

    goto :goto_8

    :cond_8
    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v9, p1, v4

    iget-object v10, v9, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iget-object v11, v10, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object v11, v9, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iput-object v9, v10, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v5

    iput-object v10, p1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v10, v0}, Lcom/android/tools/r8/internal/R20;->b(Z)V

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/R20;->b(Lcom/android/tools/r8/internal/R20;)V

    :cond_9
    move-object p1, v10

    :goto_8
    iget-object v9, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v5, v9, v5

    invoke-virtual {v5, v0}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object v0, p1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iput-object v0, v5, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object v5, p1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    if-ge v4, v8, :cond_a

    iput-object p1, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    goto :goto_9

    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    sub-int/2addr v4, v8

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v0, v0, v4

    iput-object p1, v0, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    goto :goto_9

    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v0, v0, v4

    iput-object p1, v0, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    :goto_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/R20;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p1, Lcom/android/tools/r8/internal/R20;->f:I

    and-int/2addr v0, v6

    iput v0, p1, Lcom/android/tools/r8/internal/R20;->f:I

    invoke-virtual {v5, p1}, Lcom/android/tools/r8/internal/R20;->a(Lcom/android/tools/r8/internal/R20;)V

    goto/16 :goto_c

    :cond_c
    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v5

    iget-object v9, p1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v4

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    invoke-virtual {v9, v3}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v5

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    goto/16 :goto_7

    :cond_d
    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v4

    goto :goto_a

    :cond_e
    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v9, p1, v4

    iget-object v10, v9, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iget-object v11, v10, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iput-object v11, v9, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object v9, v10, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v5

    iput-object v10, p1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/R20;->f()Z

    move-result p1

    if-eqz p1, :cond_f

    iget p1, v10, Lcom/android/tools/r8/internal/R20;->f:I

    and-int/2addr p1, v6

    iput p1, v10, Lcom/android/tools/r8/internal/R20;->f:I

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/R20;->a(Lcom/android/tools/r8/internal/R20;)V

    :cond_f
    move-object p1, v10

    :goto_a
    iget-object v6, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v5, v6, v5

    invoke-virtual {v5, v0}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object v6, p1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object v6, v5, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iput-object v5, p1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    if-ge v4, v8, :cond_10

    iput-object p1, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    goto :goto_b

    :cond_10
    iget-object v6, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    sub-int/2addr v4, v8

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v4, v6, v4

    iput-object p1, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    goto :goto_b

    :cond_11
    iget-object v6, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v4, v6, v4

    iput-object p1, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    :goto_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/R20;->b(Z)V

    invoke-virtual {v5, p1}, Lcom/android/tools/r8/internal/R20;->b(Lcom/android/tools/r8/internal/R20;)V

    :cond_12
    :goto_c
    move v0, v7

    :goto_d
    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    :goto_e
    add-int/lit8 p1, v0, -0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aput-object v2, v0, p1

    move v0, p1

    goto :goto_e

    :cond_13
    iget-object p1, v1, Lcom/android/tools/r8/internal/R20;->c:Ljava/lang/Object;

    iput-object p2, v1, Lcom/android/tools/r8/internal/R20;->c:Ljava/lang/Object;

    return-object p1

    :cond_14
    iget-object v1, v1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    goto/16 :goto_4
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/f30;->i:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    move v3, v0

    :cond_1
    iget-object v4, v1, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/lang/Comparable;

    invoke-interface {v5, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_33

    iget-object p1, v1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/R20;->c()Lcom/android/tools/r8/internal/R20;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/f30;->d:Lcom/android/tools/r8/internal/R20;

    :cond_2
    iget-object p1, v1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/R20;->e()Lcom/android/tools/r8/internal/R20;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/f30;->e:Lcom/android/tools/r8/internal/R20;

    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/R20;->f()Z

    move-result p1

    const v6, 0x7fffffff

    if-eqz p1, :cond_9

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez v3, :cond_4

    iget-object p1, v1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object p1, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    goto/16 :goto_4

    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    add-int/lit8 v4, v3, -0x1

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v4

    iget-object v4, v1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/R20;->b(Lcom/android/tools/r8/internal/R20;)V

    goto/16 :goto_4

    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v4

    iget-object v4, v1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/R20;->a(Lcom/android/tools/r8/internal/R20;)V

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/R20;->e()Lcom/android/tools/r8/internal/R20;

    move-result-object p1

    iget-object v4, v1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iput-object v4, p1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    if-nez v3, :cond_7

    iget-object p1, v1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object p1, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    goto/16 :goto_4

    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    add-int/lit8 v4, v3, -0x1

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v4

    iget-object v4, v1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object v4, p1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    goto/16 :goto_4

    :cond_8
    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v4

    iget-object v4, v1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object v4, p1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    goto/16 :goto_4

    :cond_9
    iget-object p1, v1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object v4, p1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/R20;->b(Z)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/R20;->e()Lcom/android/tools/r8/internal/R20;

    move-result-object v4

    iput-object p1, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    :cond_a
    if-nez v3, :cond_b

    iput-object p1, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    goto :goto_0

    :cond_b
    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    add-int/lit8 v7, v3, -0x1

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v4, v4, v7

    iput-object p1, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    goto :goto_0

    :cond_c
    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v4, v4, v7

    iput-object p1, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result v4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result v7

    invoke-virtual {p1, v7}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    aput-boolean v5, v4, v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    add-int/lit8 v7, v3, 0x1

    aput-object p1, v4, v3

    move v3, v7

    goto :goto_4

    :cond_d
    add-int/lit8 v4, v3, 0x1

    :goto_1
    iget-object v7, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    aput-boolean v0, v7, v4

    iget-object v7, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    add-int/lit8 v8, v4, 0x1

    aput-object p1, v7, v4

    iget-object v4, p1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result v7

    if-eqz v7, :cond_32

    iget-object v7, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    aput-boolean v5, v7, v3

    iget-object v7, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aput-object v4, v7, v3

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->f()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/R20;->a(Lcom/android/tools/r8/internal/R20;)V

    goto :goto_2

    :cond_e
    iget-object v7, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iput-object v7, p1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    :goto_2
    iget-object p1, v1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object p1, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/R20;->e()Lcom/android/tools/r8/internal/R20;

    move-result-object p1

    iput-object v4, p1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/R20;->b(Z)V

    :cond_f
    iget-object p1, v1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iget v7, v4, Lcom/android/tools/r8/internal/R20;->f:I

    and-int/2addr v7, v6

    iput v7, v4, Lcom/android/tools/r8/internal/R20;->f:I

    iput-object p1, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result p1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    if-nez v3, :cond_10

    iput-object v4, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    goto :goto_3

    :cond_10
    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    add-int/lit8 v3, v3, -0x1

    aget-boolean p1, p1, v3

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v3

    iput-object v4, p1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    goto :goto_3

    :cond_11
    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object p1, p1, v3

    iput-object v4, p1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    :goto_3
    move v3, v8

    :goto_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result p1

    if-eqz p1, :cond_30

    move p1, v3

    :goto_5
    if-lez v3, :cond_21

    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    add-int/lit8 v7, v3, -0x1

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->f()Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    aget-boolean v4, v4, v7

    if-nez v4, :cond_15

    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result v4

    if-nez v4, :cond_15

    :cond_13
    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    goto :goto_6

    :cond_14
    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    :goto_6
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    goto/16 :goto_9

    :cond_15
    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    aget-boolean v4, v4, v7

    const/4 v8, 0x2

    if-nez v4, :cond_23

    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result v9

    if-nez v9, :cond_19

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object v9, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v9, v9, v7

    invoke-virtual {v9, v0}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object v9, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v10, v9, v7

    iget-object v11, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object v11, v10, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iput-object v10, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    if-ge v3, v8, :cond_16

    iput-object v4, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    goto :goto_7

    :cond_16
    iget-object v11, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    add-int/lit8 v12, v3, -0x2

    aget-boolean v11, v11, v12

    if-eqz v11, :cond_17

    aget-object v11, v9, v12

    iput-object v4, v11, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    goto :goto_7

    :cond_17
    aget-object v11, v9, v12

    iput-object v4, v11, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    :goto_7
    aput-object v10, v9, v3

    iget-object v10, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    aput-boolean v0, v10, v3

    aput-object v4, v9, v7

    add-int/lit8 v4, v3, 0x1

    if-ne p1, v3, :cond_18

    add-int/lit8 p1, p1, 0x1

    :cond_18
    aget-object v3, v9, v3

    iget-object v3, v3, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    move v13, v4

    move-object v4, v3

    move v3, v13

    :cond_19
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result v7

    if-nez v7, :cond_1a

    iget-object v7, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result v7

    if-eqz v7, :cond_1b

    :cond_1a
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->f()Z

    move-result v7

    if-nez v7, :cond_22

    iget-object v7, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result v7

    if-eqz v7, :cond_1b

    goto/16 :goto_a

    :cond_1b
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->f()Z

    move-result v7

    if-nez v7, :cond_1c

    iget-object v7, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result v7

    if-eqz v7, :cond_1e

    :cond_1c
    iget-object v7, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object v9, v7, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iput-object v9, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object v4, v7, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    add-int/lit8 v9, v3, -0x1

    aget-object v4, v4, v9

    iput-object v7, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/R20;->f()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget v4, v7, Lcom/android/tools/r8/internal/R20;->f:I

    and-int/2addr v4, v6

    iput v4, v7, Lcom/android/tools/r8/internal/R20;->f:I

    iget-object v4, v7, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/R20;->a(Lcom/android/tools/r8/internal/R20;)V

    :cond_1d
    move-object v4, v7

    :cond_1e
    iget-object v6, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object v6, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v6, v6, v7

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object v6, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object v6, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v9, v6, v7

    iget-object v10, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object v10, v9, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iput-object v9, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    if-ge v3, v8, :cond_1f

    iput-object v4, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    goto :goto_8

    :cond_1f
    iget-object v9, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    sub-int/2addr v3, v8

    aget-boolean v8, v9, v3

    if-eqz v8, :cond_20

    aget-object v3, v6, v3

    iput-object v4, v3, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    goto :goto_8

    :cond_20
    aget-object v3, v6, v3

    iput-object v4, v3, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    :goto_8
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/R20;->b(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v0, v0, v7

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/R20;->b(Lcom/android/tools/r8/internal/R20;)V

    :cond_21
    :goto_9
    move v3, p1

    goto/16 :goto_f

    :cond_22
    :goto_a
    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    goto/16 :goto_e

    :cond_23
    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result v9

    if-nez v9, :cond_27

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object v9, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v9, v9, v7

    invoke-virtual {v9, v0}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object v9, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v10, v9, v7

    iget-object v11, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iput-object v11, v10, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object v10, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    if-ge v3, v8, :cond_24

    iput-object v4, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    goto :goto_b

    :cond_24
    iget-object v11, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    add-int/lit8 v12, v3, -0x2

    aget-boolean v11, v11, v12

    if-eqz v11, :cond_25

    aget-object v11, v9, v12

    iput-object v4, v11, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    goto :goto_b

    :cond_25
    aget-object v11, v9, v12

    iput-object v4, v11, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    :goto_b
    aput-object v10, v9, v3

    iget-object v10, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    aput-boolean v5, v10, v3

    aput-object v4, v9, v7

    add-int/lit8 v4, v3, 0x1

    if-ne p1, v3, :cond_26

    add-int/lit8 p1, p1, 0x1

    :cond_26
    aget-object v3, v9, v3

    iget-object v3, v3, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    move v13, v4

    move-object v4, v3

    move v3, v13

    :cond_27
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result v7

    if-nez v7, :cond_28

    iget-object v7, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result v7

    if-eqz v7, :cond_29

    :cond_28
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->f()Z

    move-result v7

    if-nez v7, :cond_2f

    iget-object v7, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result v7

    if-eqz v7, :cond_29

    goto/16 :goto_d

    :cond_29
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result v7

    if-nez v7, :cond_2a

    iget-object v7, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result v7

    if-eqz v7, :cond_2c

    :cond_2a
    iget-object v7, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object v9, v7, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object v9, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iput-object v4, v7, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    add-int/lit8 v9, v3, -0x1

    aget-object v4, v4, v9

    iput-object v7, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/R20;->d()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/R20;->b(Z)V

    iget-object v0, v7, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/R20;->b(Lcom/android/tools/r8/internal/R20;)V

    :cond_2b
    move-object v4, v7

    :cond_2c
    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    add-int/lit8 v7, v3, -0x1

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/R20;->b()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v0, v0, v7

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object v0, v4, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v9, v0, v7

    iget-object v10, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    iput-object v10, v9, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    iput-object v9, v4, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    if-ge v3, v8, :cond_2d

    iput-object v4, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    goto :goto_c

    :cond_2d
    iget-object v9, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    sub-int/2addr v3, v8

    aget-boolean v8, v9, v3

    if-eqz v8, :cond_2e

    aget-object v0, v0, v3

    iput-object v4, v0, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    goto :goto_c

    :cond_2e
    aget-object v0, v0, v3

    iput-object v4, v0, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    :goto_c
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/R20;->f()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, v4, Lcom/android/tools/r8/internal/R20;->f:I

    and-int/2addr v0, v6

    iput v0, v4, Lcom/android/tools/r8/internal/R20;->f:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aget-object v0, v0, v7

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/R20;->a(Lcom/android/tools/r8/internal/R20;)V

    goto/16 :goto_9

    :cond_2f
    :goto_d
    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    :goto_e
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_5

    :goto_f
    iget-object p1, p0, Lcom/android/tools/r8/internal/f30;->b:Lcom/android/tools/r8/internal/R20;

    if-eqz p1, :cond_30

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/R20;->a(Z)V

    :cond_30
    iput-boolean v5, p0, Lcom/android/tools/r8/internal/f30;->i:Z

    iget p1, p0, Lcom/android/tools/r8/internal/f30;->c:I

    sub-int/2addr p1, v5

    iput p1, p0, Lcom/android/tools/r8/internal/f30;->c:I

    :goto_10
    add-int/lit8 p1, v3, -0x1

    if-eqz v3, :cond_31

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aput-object v2, v0, p1

    move v3, p1

    goto :goto_10

    :cond_31
    iget-object p1, v1, Lcom/android/tools/r8/internal/R20;->c:Ljava/lang/Object;

    return-object p1

    :cond_32
    move-object p1, v4

    move v4, v8

    goto/16 :goto_1

    :cond_33
    iget-object v6, p0, Lcom/android/tools/r8/internal/f30;->j:[Z

    if-lez v4, :cond_34

    goto :goto_11

    :cond_34
    move v5, v0

    :goto_11
    aput-boolean v5, v6, v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aput-object v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    if-eqz v5, :cond_37

    iget v4, v1, Lcom/android/tools/r8/internal/R20;->f:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_35

    move-object v1, v2

    goto :goto_12

    :cond_35
    iget-object v1, v1, Lcom/android/tools/r8/internal/R20;->e:Lcom/android/tools/r8/internal/R20;

    :goto_12
    if-nez v1, :cond_1

    :goto_13
    add-int/lit8 p1, v3, -0x1

    if-eqz v3, :cond_36

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aput-object v2, v0, p1

    move v3, p1

    goto :goto_13

    :cond_36
    return-object v2

    :cond_37
    iget v4, v1, Lcom/android/tools/r8/internal/R20;->f:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_38

    move-object v1, v2

    goto :goto_14

    :cond_38
    iget-object v1, v1, Lcom/android/tools/r8/internal/R20;->d:Lcom/android/tools/r8/internal/R20;

    :goto_14
    if-nez v1, :cond_1

    :goto_15
    add-int/lit8 p1, v3, -0x1

    if-eqz v3, :cond_39

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->k:[Lcom/android/tools/r8/internal/R20;

    aput-object v2, v0, p1

    move v3, p1

    goto :goto_15

    :cond_39
    return-object v2
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/f30;->c:I

    return v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 7

    new-instance v6, Lcom/android/tools/r8/internal/c30;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/c30;-><init>(Lcom/android/tools/r8/internal/f30;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v6
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->h:Lcom/android/tools/r8/internal/Q20;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Q20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Q20;-><init>(Lcom/android/tools/r8/internal/f30;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/f30;->h:Lcom/android/tools/r8/internal/Q20;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/f30;->h:Lcom/android/tools/r8/internal/Q20;

    return-object v0
.end method
