.class public final Lcom/android/tools/r8/internal/lI;
.super Lcom/android/tools/r8/internal/d0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient b:Lcom/android/tools/r8/internal/hI;

.field public c:I

.field public transient d:Lcom/android/tools/r8/internal/hI;

.field public transient e:Lcom/android/tools/r8/internal/hI;

.field public final f:Ljava/util/Comparator;

.field public final transient g:Lcom/android/tools/r8/internal/gI;

.field public transient h:[Z

.field public transient i:[Lcom/android/tools/r8/internal/hI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/d0;-><init>()V

    const/16 v0, 0x40

    .line 2
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    .line 3
    new-array v0, v0, [Lcom/android/tools/r8/internal/hI;

    iput-object v0, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/tools/r8/internal/lI;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/lI;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/internal/lI;->f:Ljava/util/Comparator;

    if-eqz p1, :cond_1

    .line 8
    instance-of v0, p1, Lcom/android/tools/r8/internal/gI;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/gI;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/gI;-><init>(Lcom/android/tools/r8/internal/lI;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/lI;->g:Lcom/android/tools/r8/internal/gI;

    return-void

    .line 10
    :cond_1
    :goto_0
    check-cast p1, Lcom/android/tools/r8/internal/gI;

    iput-object p1, p0, Lcom/android/tools/r8/internal/lI;->g:Lcom/android/tools/r8/internal/gI;

    return-void
.end method


# virtual methods
.method public final K()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->d:Lcom/android/tools/r8/internal/hI;

    iget v0, v0, Lcom/android/tools/r8/internal/hI;->b:I

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final a(I)Lcom/android/tools/r8/internal/qI;
    .locals 7

    new-instance v6, Lcom/android/tools/r8/internal/kI;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/kI;-><init>(Lcom/android/tools/r8/internal/lI;IZIZ)V

    return-object v6
.end method

.method public final add(I)Z
    .locals 11

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/lI;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/lI;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/hI;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hI;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/lI;->d:Lcom/android/tools/r8/internal/hI;

    iput-object v0, p0, Lcom/android/tools/r8/internal/lI;->e:Lcom/android/tools/r8/internal/hI;

    iput-object v0, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    goto/16 :goto_b

    :cond_0
    move v4, v3

    :goto_0
    iget v5, v0, Lcom/android/tools/r8/internal/hI;->b:I

    invoke-virtual {p0, p1, v5}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    add-int/lit8 p1, v4, -0x1

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aput-object v1, v0, p1

    move v4, p1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    iget-object v6, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aput-object v0, v6, v4

    iget-object v6, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    add-int/lit8 v7, v4, 0x1

    if-lez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    aput-boolean v5, v6, v4

    const v6, 0x7fffffff

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->e()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/tools/r8/internal/lI;->c:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/tools/r8/internal/lI;->c:I

    new-instance v5, Lcom/android/tools/r8/internal/hI;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/internal/hI;-><init>(I)V

    iget-object p1, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    if-nez p1, :cond_4

    iput-object v5, p0, Lcom/android/tools/r8/internal/lI;->e:Lcom/android/tools/r8/internal/hI;

    :cond_4
    iput-object v0, v5, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object p1, v5, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iget p1, v0, Lcom/android/tools/r8/internal/hI;->e:I

    and-int/2addr p1, v6

    iput p1, v0, Lcom/android/tools/r8/internal/hI;->e:I

    iput-object v5, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    goto :goto_4

    :cond_5
    iget-object v0, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    :goto_3
    move v4, v7

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result v5

    if-eqz v5, :cond_15

    iget v5, p0, Lcom/android/tools/r8/internal/lI;->c:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/tools/r8/internal/lI;->c:I

    new-instance v5, Lcom/android/tools/r8/internal/hI;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/internal/hI;-><init>(I)V

    iget-object p1, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    if-nez p1, :cond_7

    iput-object v5, p0, Lcom/android/tools/r8/internal/lI;->d:Lcom/android/tools/r8/internal/hI;

    :cond_7
    iput-object v0, v5, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iput-object p1, v5, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iget p1, v0, Lcom/android/tools/r8/internal/hI;->e:I

    const v8, -0x40000001    # -1.9999999f

    and-int/2addr p1, v8

    iput p1, v0, Lcom/android/tools/r8/internal/hI;->e:I

    iput-object v5, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    :goto_4
    if-lez v4, :cond_13

    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    add-int/lit8 v0, v4, -0x1

    aget-boolean p1, p1, v0

    const/4 v5, 0x2

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v0

    iget-object v8, p1, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hI;->e()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v4

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v0

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    :goto_5
    add-int/lit8 v4, v4, -0x2

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    aget-boolean p1, p1, v4

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v4

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v8, p1, v4

    iget-object v9, v8, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iget-object v10, v9, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v10, v8, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iput-object v8, v9, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v0

    iput-object v9, p1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v9, v3}, Lcom/android/tools/r8/internal/hI;->b(Z)V

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/hI;->b(Lcom/android/tools/r8/internal/hI;)V

    :cond_a
    move-object p1, v9

    :goto_6
    iget-object v8, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v0, v8, v0

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object v3, p1, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iput-object v3, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v0, p1, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    if-ge v4, v5, :cond_b

    iput-object p1, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    sub-int/2addr v4, v5

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v3, v3, v4

    iput-object p1, v3, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    goto :goto_7

    :cond_c
    iget-object v3, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v3, v3, v4

    iput-object p1, v3, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    :goto_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hI;->e()Z

    move-result v3

    if-eqz v3, :cond_13

    iget v3, p1, Lcom/android/tools/r8/internal/hI;->e:I

    and-int/2addr v3, v6

    iput v3, p1, Lcom/android/tools/r8/internal/hI;->e:I

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hI;->a(Lcom/android/tools/r8/internal/hI;)V

    goto/16 :goto_a

    :cond_d
    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v0

    iget-object v8, p1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v4

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v0

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    goto/16 :goto_5

    :cond_e
    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v4

    goto :goto_8

    :cond_f
    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v8, p1, v4

    iget-object v9, v8, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iget-object v10, v9, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iput-object v10, v8, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v8, v9, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v0

    iput-object v9, p1, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/hI;->e()Z

    move-result p1

    if-eqz p1, :cond_10

    iget p1, v9, Lcom/android/tools/r8/internal/hI;->e:I

    and-int/2addr p1, v6

    iput p1, v9, Lcom/android/tools/r8/internal/hI;->e:I

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/hI;->a(Lcom/android/tools/r8/internal/hI;)V

    :cond_10
    move-object p1, v9

    :goto_8
    iget-object v6, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v0, v6, v0

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object v6, p1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v6, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iput-object v0, p1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    if-ge v4, v5, :cond_11

    iput-object p1, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    goto :goto_9

    :cond_11
    iget-object v6, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    sub-int/2addr v4, v5

    aget-boolean v5, v6, v4

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v4, v5, v4

    iput-object p1, v4, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    goto :goto_9

    :cond_12
    iget-object v5, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v4, v5, v4

    iput-object p1, v4, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    :goto_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/hI;->b(Z)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hI;->b(Lcom/android/tools/r8/internal/hI;)V

    :cond_13
    :goto_a
    move v3, v7

    :goto_b
    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    :goto_c
    add-int/lit8 p1, v3, -0x1

    if-eqz v3, :cond_14

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aput-object v1, v0, p1

    move v3, p1

    goto :goto_c

    :cond_14
    return v2

    :cond_15
    iget-object v0, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    goto/16 :goto_3
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/lI;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    iput-object v0, p0, Lcom/android/tools/r8/internal/lI;->e:Lcom/android/tools/r8/internal/hI;

    iput-object v0, p0, Lcom/android/tools/r8/internal/lI;->d:Lcom/android/tools/r8/internal/hI;

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 9

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/lI;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x40

    new-array v2, v1, [Z

    iput-object v2, v0, Lcom/android/tools/r8/internal/lI;->h:[Z

    new-array v1, v1, [Lcom/android/tools/r8/internal/hI;

    iput-object v1, v0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    iget v1, p0, Lcom/android/tools/r8/internal/lI;->c:I

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/tools/r8/internal/hI;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/hI;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/hI;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/hI;-><init>()V

    iget-object v3, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    iget v4, v1, Lcom/android/tools/r8/internal/hI;->e:I

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v4, v5

    iput v4, v1, Lcom/android/tools/r8/internal/hI;->e:I

    iput-object v3, v1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/hI;->a(Lcom/android/tools/r8/internal/hI;)V

    move-object v4, v2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/hI;->clone()Lcom/android/tools/r8/internal/hI;

    move-result-object v6

    iget-object v7, v4, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/hI;->a(Lcom/android/tools/r8/internal/hI;)V

    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/hI;->b(Lcom/android/tools/r8/internal/hI;)V

    iget v7, v4, Lcom/android/tools/r8/internal/hI;->e:I

    and-int/2addr v7, v5

    iput v7, v4, Lcom/android/tools/r8/internal/hI;->e:I

    iput-object v6, v4, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iget-object v1, v1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    move-object v4, v6

    goto :goto_4

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hI;->e()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v1, v1, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    if-nez v1, :cond_3

    iput-object v3, v4, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iget-object v1, v2, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v1, v0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    iput-object v1, v0, Lcom/android/tools/r8/internal/lI;->d:Lcom/android/tools/r8/internal/hI;

    :goto_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/lI;->d:Lcom/android/tools/r8/internal/hI;

    iget-object v1, v1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    if-eqz v1, :cond_2

    iput-object v1, v0, Lcom/android/tools/r8/internal/lI;->d:Lcom/android/tools/r8/internal/hI;

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    iput-object v1, v0, Lcom/android/tools/r8/internal/lI;->e:Lcom/android/tools/r8/internal/hI;

    :goto_3
    iget-object v1, v0, Lcom/android/tools/r8/internal/lI;->e:Lcom/android/tools/r8/internal/hI;

    iget-object v1, v1, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    if-eqz v1, :cond_5

    iput-object v1, v0, Lcom/android/tools/r8/internal/lI;->e:Lcom/android/tools/r8/internal/hI;

    goto :goto_3

    :cond_3
    iget-object v4, v4, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    goto :goto_1

    :cond_4
    iget-object v1, v1, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iget-object v4, v4, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    :goto_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hI;->e()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v1, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/hI;->clone()Lcom/android/tools/r8/internal/hI;

    move-result-object v6

    iget-object v7, v4, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/hI;->b(Lcom/android/tools/r8/internal/hI;)V

    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/hI;->a(Lcom/android/tools/r8/internal/hI;)V

    iget v7, v4, Lcom/android/tools/r8/internal/hI;->e:I

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    iput v7, v4, Lcom/android/tools/r8/internal/hI;->e:I

    iput-object v6, v4, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

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

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->g:Lcom/android/tools/r8/internal/gI;

    return-object v0
.end method

.method public final d(II)Lcom/android/tools/r8/internal/qI;
    .locals 7

    new-instance v6, Lcom/android/tools/r8/internal/kI;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/kI;-><init>(Lcom/android/tools/r8/internal/lI;IZIZ)V

    return-object v6
.end method

.method public final e(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->g:Lcom/android/tools/r8/internal/gI;

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/gI;->a(II)I

    move-result p1

    return p1
.end method

.method public final e(I)Lcom/android/tools/r8/internal/qI;
    .locals 7

    .line 2
    new-instance v6, Lcom/android/tools/r8/internal/kI;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/kI;-><init>(Lcom/android/tools/r8/internal/lI;IZIZ)V

    return-object v6
.end method

.method public final h(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    :goto_0
    if-eqz v0, :cond_3

    iget v1, v0, Lcom/android/tools/r8/internal/hI;->b:I

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result v1

    if-eqz v1, :cond_3

    if-gez v1, :cond_1

    iget v1, v0, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/lI;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/HH;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/iI;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/iI;-><init>(Lcom/android/tools/r8/internal/lI;)V

    return-object v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/PH;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/iI;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/iI;-><init>(Lcom/android/tools/r8/internal/lI;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/iI;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/iI;-><init>(Lcom/android/tools/r8/internal/lI;)V

    return-object v0
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->e:Lcom/android/tools/r8/internal/hI;

    iget v0, v0, Lcom/android/tools/r8/internal/hI;->b:I

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove(I)Z
    .locals 13

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :cond_1
    iget v3, v0, Lcom/android/tools/r8/internal/hI;->b:I

    invoke-virtual {p0, p1, v3}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_33

    iget-object p1, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->b()Lcom/android/tools/r8/internal/hI;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/lI;->d:Lcom/android/tools/r8/internal/hI;

    :cond_2
    iget-object p1, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->d()Lcom/android/tools/r8/internal/hI;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/lI;->e:Lcom/android/tools/r8/internal/hI;

    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->e()Z

    move-result p1

    const v6, 0x7fffffff

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez v2, :cond_4

    iget-object p1, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object p1, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    goto/16 :goto_4

    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    add-int/lit8 v3, v2, -0x1

    aget-boolean p1, p1, v3

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v3

    iget-object v3, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/hI;->b(Lcom/android/tools/r8/internal/hI;)V

    goto/16 :goto_4

    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v3

    iget-object v3, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/hI;->a(Lcom/android/tools/r8/internal/hI;)V

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->d()Lcom/android/tools/r8/internal/hI;

    move-result-object p1

    iget-object v3, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iput-object v3, p1, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    if-nez v2, :cond_7

    iget-object p1, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object p1, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    goto/16 :goto_4

    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    add-int/lit8 v3, v2, -0x1

    aget-boolean p1, p1, v3

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v3

    iget-object v3, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v3, p1, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    goto/16 :goto_4

    :cond_8
    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v3

    iget-object v3, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v3, p1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    goto/16 :goto_4

    :cond_9
    iget-object p1, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v3, p1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/hI;->b(Z)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hI;->d()Lcom/android/tools/r8/internal/hI;

    move-result-object v3

    iput-object p1, v3, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    :cond_a
    if-nez v2, :cond_b

    iput-object p1, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    goto :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    add-int/lit8 v7, v2, -0x1

    aget-boolean v3, v3, v7

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v3, v3, v7

    iput-object p1, v3, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    goto :goto_0

    :cond_c
    iget-object v3, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v3, v3, v7

    iput-object p1, v3, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result v7

    invoke-virtual {p1, v7}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    aput-boolean v5, v3, v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    add-int/lit8 v7, v2, 0x1

    aput-object p1, v3, v2

    move v2, v7

    goto :goto_4

    :cond_d
    add-int/lit8 v3, v2, 0x1

    :goto_1
    iget-object v7, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    aput-boolean v1, v7, v3

    iget-object v7, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    add-int/lit8 v8, v3, 0x1

    aput-object p1, v7, v3

    iget-object v3, p1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result v7

    if-eqz v7, :cond_32

    iget-object v7, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    aput-boolean v5, v7, v2

    iget-object v7, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aput-object v3, v7, v2

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hI;->e()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/hI;->a(Lcom/android/tools/r8/internal/hI;)V

    goto :goto_2

    :cond_e
    iget-object v7, v3, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iput-object v7, p1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    :goto_2
    iget-object p1, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object p1, v3, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->d()Lcom/android/tools/r8/internal/hI;

    move-result-object p1

    iput-object v3, p1, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/hI;->b(Z)V

    :cond_f
    iget-object p1, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iget v7, v3, Lcom/android/tools/r8/internal/hI;->e:I

    and-int/2addr v7, v6

    iput v7, v3, Lcom/android/tools/r8/internal/hI;->e:I

    iput-object p1, v3, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result p1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    if-nez v2, :cond_10

    iput-object v3, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    goto :goto_3

    :cond_10
    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    add-int/lit8 v2, v2, -0x1

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v2

    iput-object v3, p1, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    goto :goto_3

    :cond_11
    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object p1, p1, v2

    iput-object v3, p1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    :goto_3
    move v2, v8

    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result p1

    if-eqz p1, :cond_30

    move p1, v2

    :goto_5
    if-lez v2, :cond_21

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    add-int/lit8 v3, v2, -0x1

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    goto :goto_6

    :cond_14
    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    :goto_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result v7

    if-nez v7, :cond_15

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    goto/16 :goto_9

    :cond_15
    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    aget-boolean v0, v0, v3

    const/4 v7, 0x2

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result v8

    if-nez v8, :cond_19

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object v8, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v8, v8, v3

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object v8, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v9, v8, v3

    iget-object v10, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v10, v9, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iput-object v9, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    if-ge v2, v7, :cond_16

    iput-object v0, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    goto :goto_7

    :cond_16
    iget-object v10, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    add-int/lit8 v11, v2, -0x2

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_17

    aget-object v10, v8, v11

    iput-object v0, v10, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    goto :goto_7

    :cond_17
    aget-object v10, v8, v11

    iput-object v0, v10, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    :goto_7
    aput-object v9, v8, v2

    iget-object v9, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    aput-boolean v1, v9, v2

    aput-object v0, v8, v3

    add-int/lit8 v0, v2, 0x1

    if-ne p1, v2, :cond_18

    add-int/lit8 p1, p1, 0x1

    :cond_18
    aget-object v2, v8, v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    move-object v12, v2

    move v2, v0

    move-object v0, v12

    :cond_19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_1a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->e()Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto/16 :goto_a

    :cond_1b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->e()Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_1c
    iget-object v3, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object v8, v3, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iput-object v8, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v0, v3, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    add-int/lit8 v8, v2, -0x1

    aget-object v0, v0, v8

    iput-object v3, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hI;->e()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, v3, Lcom/android/tools/r8/internal/hI;->e:I

    and-int/2addr v0, v6

    iput v0, v3, Lcom/android/tools/r8/internal/hI;->e:I

    iget-object v0, v3, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/hI;->a(Lcom/android/tools/r8/internal/hI;)V

    :cond_1d
    move-object v0, v3

    :cond_1e
    iget-object v3, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    add-int/lit8 v6, v2, -0x1

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v3, v3, v6

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object v3, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v8, v3, v6

    iget-object v9, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v9, v8, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iput-object v8, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    if-ge v2, v7, :cond_1f

    iput-object v0, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    goto :goto_8

    :cond_1f
    iget-object v8, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    sub-int/2addr v2, v7

    aget-boolean v7, v8, v2

    if-eqz v7, :cond_20

    aget-object v2, v3, v2

    iput-object v0, v2, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    goto :goto_8

    :cond_20
    aget-object v2, v3, v2

    iput-object v0, v2, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    :goto_8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/hI;->b(Z)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v1, v1, v6

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/hI;->b(Lcom/android/tools/r8/internal/hI;)V

    :cond_21
    :goto_9
    move v2, p1

    goto/16 :goto_f

    :cond_22
    :goto_a
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    goto/16 :goto_e

    :cond_23
    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result v8

    if-nez v8, :cond_27

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object v8, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v8, v8, v3

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object v8, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v9, v8, v3

    iget-object v10, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iput-object v10, v9, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v9, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    if-ge v2, v7, :cond_24

    iput-object v0, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    goto :goto_b

    :cond_24
    iget-object v10, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    add-int/lit8 v11, v2, -0x2

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_25

    aget-object v10, v8, v11

    iput-object v0, v10, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    goto :goto_b

    :cond_25
    aget-object v10, v8, v11

    iput-object v0, v10, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    :goto_b
    aput-object v9, v8, v2

    iget-object v9, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    aput-boolean v5, v9, v2

    aput-object v0, v8, v3

    add-int/lit8 v0, v2, 0x1

    if-ne p1, v2, :cond_26

    add-int/lit8 p1, p1, 0x1

    :cond_26
    aget-object v2, v8, v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    move-object v12, v2

    move v2, v0

    move-object v0, v12

    :cond_27
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result v3

    if-nez v3, :cond_28

    iget-object v3, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result v3

    if-eqz v3, :cond_29

    :cond_28
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->e()Z

    move-result v3

    if-nez v3, :cond_2f

    iget-object v3, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result v3

    if-eqz v3, :cond_29

    goto/16 :goto_d

    :cond_29
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result v3

    if-nez v3, :cond_2a

    iget-object v3, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_2a
    iget-object v3, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object v8, v3, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v8, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iput-object v0, v3, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    add-int/lit8 v8, v2, -0x1

    aget-object v0, v0, v8

    iput-object v3, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hI;->c()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/hI;->b(Z)V

    iget-object v0, v3, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/hI;->b(Lcom/android/tools/r8/internal/hI;)V

    :cond_2b
    move-object v0, v3

    :cond_2c
    iget-object v1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    add-int/lit8 v3, v2, -0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hI;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v1, v1, v3

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object v1, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v8, v1, v3

    iget-object v9, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    iput-object v9, v8, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v8, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    if-ge v2, v7, :cond_2d

    iput-object v0, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    goto :goto_c

    :cond_2d
    iget-object v8, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    sub-int/2addr v2, v7

    aget-boolean v7, v8, v2

    if-eqz v7, :cond_2e

    aget-object v1, v1, v2

    iput-object v0, v1, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    goto :goto_c

    :cond_2e
    aget-object v1, v1, v2

    iput-object v0, v1, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    :goto_c
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->e()Z

    move-result v1

    if-eqz v1, :cond_21

    iget v1, v0, Lcom/android/tools/r8/internal/hI;->e:I

    and-int/2addr v1, v6

    iput v1, v0, Lcom/android/tools/r8/internal/hI;->e:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/hI;->a(Lcom/android/tools/r8/internal/hI;)V

    goto/16 :goto_9

    :cond_2f
    :goto_d
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    :goto_e
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_5

    :goto_f
    iget-object p1, p0, Lcom/android/tools/r8/internal/lI;->b:Lcom/android/tools/r8/internal/hI;

    if-eqz p1, :cond_30

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/hI;->a(Z)V

    :cond_30
    iget p1, p0, Lcom/android/tools/r8/internal/lI;->c:I

    sub-int/2addr p1, v5

    iput p1, p0, Lcom/android/tools/r8/internal/lI;->c:I

    :goto_10
    add-int/lit8 p1, v2, -0x1

    if-eqz v2, :cond_31

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aput-object v4, v0, p1

    move v2, p1

    goto :goto_10

    :cond_31
    return v5

    :cond_32
    move-object p1, v3

    move v3, v8

    goto/16 :goto_1

    :cond_33
    iget-object v6, p0, Lcom/android/tools/r8/internal/lI;->h:[Z

    if-lez v3, :cond_34

    goto :goto_11

    :cond_34
    move v5, v1

    :goto_11
    aput-boolean v5, v6, v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    if-eqz v5, :cond_37

    iget v3, v0, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v5, -0x80000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_35

    move-object v0, v4

    goto :goto_12

    :cond_35
    iget-object v0, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    :goto_12
    if-nez v0, :cond_1

    :goto_13
    add-int/lit8 p1, v2, -0x1

    if-eqz v2, :cond_36

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aput-object v4, v0, p1

    move v2, p1

    goto :goto_13

    :cond_36
    return v1

    :cond_37
    iget v3, v0, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v3, v5

    if-eqz v3, :cond_38

    move-object v0, v4

    goto :goto_14

    :cond_38
    iget-object v0, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    :goto_14
    if-nez v0, :cond_1

    :goto_15
    add-int/lit8 p1, v2, -0x1

    if-eqz v2, :cond_39

    iget-object v0, p0, Lcom/android/tools/r8/internal/lI;->i:[Lcom/android/tools/r8/internal/hI;

    aput-object v4, v0, p1

    move v2, p1

    goto :goto_15

    :cond_39
    return v1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/lI;->c:I

    return v0
.end method
