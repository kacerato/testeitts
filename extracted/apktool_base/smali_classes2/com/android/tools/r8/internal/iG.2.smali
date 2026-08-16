.class public final Lcom/android/tools/r8/internal/iG;
.super Lcom/android/tools/r8/internal/P;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public transient b:Lcom/android/tools/r8/internal/UF;

.field public c:I

.field public transient d:Lcom/android/tools/r8/internal/UF;

.field public transient e:Lcom/android/tools/r8/internal/UF;

.field public transient f:Lcom/android/tools/r8/internal/SF;

.field public transient g:Lcom/android/tools/r8/internal/XF;

.field public transient h:Lcom/android/tools/r8/internal/TF;

.field public transient i:Z

.field public transient j:[Z

.field public transient k:[Lcom/android/tools/r8/internal/UF;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/P;-><init>()V

    const/16 v0, 0x40

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    new-array v0, v0, [Lcom/android/tools/r8/internal/UF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/iG;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->d:Lcom/android/tools/r8/internal/UF;

    iget v0, v0, Lcom/android/tools/r8/internal/M;->b:I

    return v0

    .line 88
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final a(II)Lcom/android/tools/r8/internal/jG;
    .locals 7

    .line 89
    new-instance v6, Lcom/android/tools/r8/internal/fG;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/fG;-><init>(Lcom/android/tools/r8/internal/iG;IZIZ)V

    return-object v6
.end method

.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/iG;->i:Z

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/iG;->c:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/tools/r8/internal/iG;->c:I

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/UF;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/UF;-><init>(I)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/iG;->d:Lcom/android/tools/r8/internal/UF;

    iput-object v1, p0, Lcom/android/tools/r8/internal/iG;->e:Lcom/android/tools/r8/internal/UF;

    iput-object v1, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    goto/16 :goto_d

    :cond_0
    move v4, v0

    .line 5
    :goto_0
    iget v5, v1, Lcom/android/tools/r8/internal/M;->b:I

    .line 6
    invoke-static {p1, v5}, Ljava/lang/Integer;->compare(II)I

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    add-int/lit8 p1, v4, -0x1

    if-eqz v4, :cond_13

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aput-object v2, v0, p1

    move v4, p1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v6, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aput-object v1, v6, v4

    .line 9
    iget-object v6, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

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

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/UF;->f()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    iget v5, p0, Lcom/android/tools/r8/internal/iG;->c:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/tools/r8/internal/iG;->c:I

    .line 12
    new-instance v5, Lcom/android/tools/r8/internal/UF;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/internal/UF;-><init>(I)V

    .line 13
    iget-object p1, v1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    if-nez p1, :cond_3

    iput-object v5, p0, Lcom/android/tools/r8/internal/iG;->e:Lcom/android/tools/r8/internal/UF;

    .line 14
    :cond_3
    iput-object v1, v5, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    .line 15
    iput-object p1, v5, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    .line 16
    iget p1, v1, Lcom/android/tools/r8/internal/UF;->f:I

    and-int/2addr p1, v6

    iput p1, v1, Lcom/android/tools/r8/internal/UF;->f:I

    .line 17
    iput-object v5, v1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    :goto_3
    move-object v1, v5

    goto :goto_5

    .line 18
    :cond_4
    iget-object v1, v1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    :goto_4
    move v4, v7

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 20
    iget v5, p0, Lcom/android/tools/r8/internal/iG;->c:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/tools/r8/internal/iG;->c:I

    .line 21
    new-instance v5, Lcom/android/tools/r8/internal/UF;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/internal/UF;-><init>(I)V

    .line 22
    iget-object p1, v1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    if-nez p1, :cond_6

    iput-object v5, p0, Lcom/android/tools/r8/internal/iG;->d:Lcom/android/tools/r8/internal/UF;

    .line 23
    :cond_6
    iput-object v1, v5, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    .line 24
    iput-object p1, v5, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    .line 25
    iget p1, v1, Lcom/android/tools/r8/internal/UF;->f:I

    const v8, -0x40000001    # -1.9999999f

    and-int/2addr p1, v8

    iput p1, v1, Lcom/android/tools/r8/internal/UF;->f:I

    .line 26
    iput-object v5, v1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    goto :goto_3

    .line 27
    :goto_5
    iput-boolean v3, p0, Lcom/android/tools/r8/internal/iG;->i:Z

    :goto_6
    if-lez v4, :cond_12

    .line 28
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result p1

    if-nez p1, :cond_12

    .line 29
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    add-int/lit8 v5, v4, -0x1

    aget-boolean p1, p1, v5

    const/4 v8, 0x2

    if-nez p1, :cond_c

    .line 30
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object p1, p1, v5

    iget-object v9, p1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UF;->f()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result p1

    if-nez p1, :cond_7

    .line 32
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object p1, p1, v4

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    .line 33
    invoke-virtual {v9, v3}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    .line 34
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object p1, p1, v5

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    :goto_7
    add-int/lit8 v4, v4, -0x2

    goto :goto_6

    .line 35
    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    aget-boolean p1, p1, v4

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object p1, p1, v4

    goto :goto_8

    .line 36
    :cond_8
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v9, p1, v4

    .line 37
    iget-object v10, v9, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    .line 38
    iget-object v11, v10, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iput-object v11, v9, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    .line 39
    iput-object v9, v10, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    .line 40
    aget-object p1, p1, v5

    iput-object v10, p1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    .line 41
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 42
    invoke-virtual {v10, v0}, Lcom/android/tools/r8/internal/UF;->b(Z)V

    .line 43
    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/UF;->b(Lcom/android/tools/r8/internal/UF;)V

    :cond_9
    move-object p1, v10

    .line 44
    :goto_8
    iget-object v9, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v5, v9, v5

    .line 45
    invoke-virtual {v5, v0}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    .line 46
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    .line 47
    iget-object v0, p1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    iput-object v0, v5, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    .line 48
    iput-object v5, p1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    if-ge v4, v8, :cond_a

    .line 49
    iput-object p1, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    goto :goto_9

    .line 50
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    sub-int/2addr v4, v8

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v0, v0, v4

    iput-object p1, v0, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    goto :goto_9

    .line 51
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v0, v0, v4

    iput-object p1, v0, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    .line 52
    :goto_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UF;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 53
    iget v0, p1, Lcom/android/tools/r8/internal/UF;->f:I

    and-int/2addr v0, v6

    iput v0, p1, Lcom/android/tools/r8/internal/UF;->f:I

    .line 54
    invoke-virtual {v5, p1}, Lcom/android/tools/r8/internal/UF;->a(Lcom/android/tools/r8/internal/UF;)V

    goto/16 :goto_c

    .line 55
    :cond_c
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object p1, p1, v5

    iget-object v9, p1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result p1

    if-nez p1, :cond_d

    .line 57
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object p1, p1, v4

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    .line 58
    invoke-virtual {v9, v3}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    .line 59
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object p1, p1, v5

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    goto/16 :goto_7

    .line 60
    :cond_d
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object p1, p1, v4

    goto :goto_a

    .line 61
    :cond_e
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v9, p1, v4

    .line 62
    iget-object v10, v9, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    .line 63
    iget-object v11, v10, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    iput-object v11, v9, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    .line 64
    iput-object v9, v10, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    .line 65
    aget-object p1, p1, v5

    iput-object v10, p1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    .line 66
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/UF;->f()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 67
    iget p1, v10, Lcom/android/tools/r8/internal/UF;->f:I

    and-int/2addr p1, v6

    iput p1, v10, Lcom/android/tools/r8/internal/UF;->f:I

    .line 68
    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/UF;->a(Lcom/android/tools/r8/internal/UF;)V

    :cond_f
    move-object p1, v10

    .line 69
    :goto_a
    iget-object v6, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v5, v6, v5

    .line 70
    invoke-virtual {v5, v0}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    .line 71
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    .line 72
    iget-object v6, p1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iput-object v6, v5, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    .line 73
    iput-object v5, p1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    if-ge v4, v8, :cond_10

    .line 74
    iput-object p1, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    goto :goto_b

    .line 75
    :cond_10
    iget-object v6, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    sub-int/2addr v4, v8

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v4, v6, v4

    iput-object p1, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    goto :goto_b

    .line 76
    :cond_11
    iget-object v6, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v4, v6, v4

    iput-object p1, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    .line 77
    :goto_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 78
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/UF;->b(Z)V

    .line 79
    invoke-virtual {v5, p1}, Lcom/android/tools/r8/internal/UF;->b(Lcom/android/tools/r8/internal/UF;)V

    :cond_12
    :goto_c
    move v0, v7

    .line 80
    :goto_d
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    :goto_e
    add-int/lit8 p1, v0, -0x1

    if-eqz v0, :cond_13

    .line 81
    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aput-object v2, v0, p1

    move v0, p1

    goto :goto_e

    .line 82
    :cond_13
    iget-object p1, v1, Lcom/android/tools/r8/internal/M;->c:Ljava/lang/Object;

    .line 83
    iput-object p2, v1, Lcom/android/tools/r8/internal/M;->c:Ljava/lang/Object;

    return-object p1

    .line 84
    :cond_14
    iget-object v1, v1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    goto/16 :goto_4
.end method

.method public final a(I)Z
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iG;->d(I)Lcom/android/tools/r8/internal/UF;

    move-result-object p1

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
    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->f:Lcom/android/tools/r8/internal/SF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/SF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/SF;-><init>(Lcom/android/tools/r8/internal/iG;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/iG;->f:Lcom/android/tools/r8/internal/SF;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->f:Lcom/android/tools/r8/internal/SF;

    return-object v0
.end method

.method public final b(I)Lcom/android/tools/r8/internal/jG;
    .locals 7

    .line 3
    new-instance v6, Lcom/android/tools/r8/internal/fG;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/fG;-><init>(Lcom/android/tools/r8/internal/iG;IZIZ)V

    return-object v6
.end method

.method public final c(II)I
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final c(I)Lcom/android/tools/r8/internal/jG;
    .locals 7

    .line 2
    new-instance v6, Lcom/android/tools/r8/internal/fG;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/fG;-><init>(Lcom/android/tools/r8/internal/iG;IZIZ)V

    return-object v6
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/iG;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/iG;->f:Lcom/android/tools/r8/internal/SF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/iG;->h:Lcom/android/tools/r8/internal/TF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/iG;->g:Lcom/android/tools/r8/internal/XF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/iG;->e:Lcom/android/tools/r8/internal/UF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/iG;->d:Lcom/android/tools/r8/internal/UF;

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 9

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/iG;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/tools/r8/internal/iG;->g:Lcom/android/tools/r8/internal/XF;

    iput-object v1, v0, Lcom/android/tools/r8/internal/iG;->h:Lcom/android/tools/r8/internal/TF;

    iput-object v1, v0, Lcom/android/tools/r8/internal/iG;->f:Lcom/android/tools/r8/internal/SF;

    const/16 v2, 0x40

    new-array v3, v2, [Z

    iput-object v3, v0, Lcom/android/tools/r8/internal/iG;->j:[Z

    new-array v2, v2, [Lcom/android/tools/r8/internal/UF;

    iput-object v2, v0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    iget v2, p0, Lcom/android/tools/r8/internal/iG;->c:I

    if-eqz v2, :cond_5

    new-instance v2, Lcom/android/tools/r8/internal/UF;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/UF;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/UF;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/UF;-><init>()V

    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    iget v5, v2, Lcom/android/tools/r8/internal/UF;->f:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, v2, Lcom/android/tools/r8/internal/UF;->f:I

    iput-object v4, v2, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/UF;->a(Lcom/android/tools/r8/internal/UF;)V

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/UF;->clone()Lcom/android/tools/r8/internal/UF;

    move-result-object v5

    iget-object v7, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/UF;->a(Lcom/android/tools/r8/internal/UF;)V

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/UF;->b(Lcom/android/tools/r8/internal/UF;)V

    iget v7, v4, Lcom/android/tools/r8/internal/UF;->f:I

    and-int/2addr v7, v6

    iput v7, v4, Lcom/android/tools/r8/internal/UF;->f:I

    iput-object v5, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iget-object v2, v2, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    move-object v4, v5

    goto :goto_4

    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/UF;->f()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v2, v2, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    if-nez v2, :cond_3

    iput-object v1, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    iget-object v1, v3, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iput-object v1, v0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    iput-object v1, v0, Lcom/android/tools/r8/internal/iG;->d:Lcom/android/tools/r8/internal/UF;

    :goto_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/iG;->d:Lcom/android/tools/r8/internal/UF;

    iget-object v1, v1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    if-eqz v1, :cond_2

    iput-object v1, v0, Lcom/android/tools/r8/internal/iG;->d:Lcom/android/tools/r8/internal/UF;

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    iput-object v1, v0, Lcom/android/tools/r8/internal/iG;->e:Lcom/android/tools/r8/internal/UF;

    :goto_3
    iget-object v1, v0, Lcom/android/tools/r8/internal/iG;->e:Lcom/android/tools/r8/internal/UF;

    iget-object v1, v1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    if-eqz v1, :cond_5

    iput-object v1, v0, Lcom/android/tools/r8/internal/iG;->e:Lcom/android/tools/r8/internal/UF;

    goto :goto_3

    :cond_3
    iget-object v4, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    goto :goto_1

    :cond_4
    iget-object v2, v2, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    iget-object v4, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    :goto_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/UF;->f()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/UF;->clone()Lcom/android/tools/r8/internal/UF;

    move-result-object v5

    iget-object v7, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/UF;->b(Lcom/android/tools/r8/internal/UF;)V

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/UF;->a(Lcom/android/tools/r8/internal/UF;)V

    iget v7, v4, Lcom/android/tools/r8/internal/UF;->f:I

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    iput v7, v4, Lcom/android/tools/r8/internal/UF;->f:I

    iput-object v5, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    goto :goto_0

    :cond_5
    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final comparator()Lcom/android/tools/r8/internal/gI;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic comparator()Ljava/util/Comparator;
    .locals 1

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/hG;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/hG;-><init>(Lcom/android/tools/r8/internal/iG;)V

    iget v1, p0, Lcom/android/tools/r8/internal/iG;->c:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gG;->a()Lcom/android/tools/r8/internal/UF;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/M;->c:Ljava/lang/Object;

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

.method public final d()I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->e:Lcom/android/tools/r8/internal/UF;

    iget v0, v0, Lcom/android/tools/r8/internal/M;->b:I

    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final d(I)Lcom/android/tools/r8/internal/UF;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    iget v1, v0, Lcom/android/tools/r8/internal/M;->b:I

    .line 3
    invoke-static {p1, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-eqz v1, :cond_3

    if-gez v1, :cond_1

    .line 4
    iget v1, v0, Lcom/android/tools/r8/internal/UF;->f:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    goto :goto_0

    .line 5
    :cond_1
    iget v1, v0, Lcom/android/tools/r8/internal/UF;->f:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final e(I)Lcom/android/tools/r8/internal/UF;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_3

    iget v2, v0, Lcom/android/tools/r8/internal/M;->b:I

    invoke-static {p1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-eqz v2, :cond_3

    if-gez v2, :cond_1

    iget v1, v0, Lcom/android/tools/r8/internal/UF;->f:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    goto :goto_2

    :cond_1
    iget v1, v0, Lcom/android/tools/r8/internal/UF;->f:I

    const/high16 v3, -0x80000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    :goto_2
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    return-object v0

    :cond_4
    return-object v1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iG;->d(I)Lcom/android/tools/r8/internal/UF;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/M;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/iG;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Lcom/android/tools/r8/internal/qI;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->g:Lcom/android/tools/r8/internal/XF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/XF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/XF;-><init>(Lcom/android/tools/r8/internal/iG;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/iG;->g:Lcom/android/tools/r8/internal/XF;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->g:Lcom/android/tools/r8/internal/XF;

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/iG;->i:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    move v3, v0

    :cond_1
    iget v4, v1, Lcom/android/tools/r8/internal/M;->b:I

    invoke-static {p1, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_33

    iget-object p1, v1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/UF;->c()Lcom/android/tools/r8/internal/UF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/iG;->d:Lcom/android/tools/r8/internal/UF;

    :cond_2
    iget-object p1, v1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/UF;->e()Lcom/android/tools/r8/internal/UF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/iG;->e:Lcom/android/tools/r8/internal/UF;

    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/UF;->f()Z

    move-result p1

    const v6, 0x7fffffff

    if-eqz p1, :cond_9

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez v3, :cond_4

    iget-object p1, v1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iput-object p1, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    goto/16 :goto_4

    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    add-int/lit8 v4, v3, -0x1

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object p1, p1, v4

    iget-object v4, v1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/UF;->b(Lcom/android/tools/r8/internal/UF;)V

    goto/16 :goto_4

    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object p1, p1, v4

    iget-object v4, v1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/UF;->a(Lcom/android/tools/r8/internal/UF;)V

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/UF;->e()Lcom/android/tools/r8/internal/UF;

    move-result-object p1

    iget-object v4, v1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    iput-object v4, p1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    if-nez v3, :cond_7

    iget-object p1, v1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iput-object p1, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    goto/16 :goto_4

    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    add-int/lit8 v4, v3, -0x1

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object p1, p1, v4

    iget-object v4, v1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iput-object v4, p1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    goto/16 :goto_4

    :cond_8
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object p1, p1, v4

    iget-object v4, v1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iput-object v4, p1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    goto/16 :goto_4

    :cond_9
    iget-object p1, v1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iput-object v4, p1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/UF;->b(Z)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UF;->e()Lcom/android/tools/r8/internal/UF;

    move-result-object v4

    iput-object p1, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    :cond_a
    if-nez v3, :cond_b

    iput-object p1, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    goto :goto_0

    :cond_b
    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    add-int/lit8 v7, v3, -0x1

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v4, v4, v7

    iput-object p1, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    goto :goto_0

    :cond_c
    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v4, v4, v7

    iput-object p1, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result v4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result v7

    invoke-virtual {p1, v7}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    aput-boolean v5, v4, v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    add-int/lit8 v7, v3, 0x1

    aput-object p1, v4, v3

    move v3, v7

    goto :goto_4

    :cond_d
    add-int/lit8 v4, v3, 0x1

    :goto_1
    iget-object v7, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    aput-boolean v0, v7, v4

    iget-object v7, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    add-int/lit8 v8, v4, 0x1

    aput-object p1, v7, v4

    iget-object v4, p1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result v7

    if-eqz v7, :cond_32

    iget-object v7, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    aput-boolean v5, v7, v3

    iget-object v7, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aput-object v4, v7, v3

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->f()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/UF;->a(Lcom/android/tools/r8/internal/UF;)V

    goto :goto_2

    :cond_e
    iget-object v7, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    iput-object v7, p1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    :goto_2
    iget-object p1, v1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iput-object p1, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/UF;->e()Lcom/android/tools/r8/internal/UF;

    move-result-object p1

    iput-object v4, p1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/UF;->b(Z)V

    :cond_f
    iget-object p1, v1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    iget v7, v4, Lcom/android/tools/r8/internal/UF;->f:I

    and-int/2addr v7, v6

    iput v7, v4, Lcom/android/tools/r8/internal/UF;->f:I

    iput-object p1, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result p1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    if-nez v3, :cond_10

    iput-object v4, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    goto :goto_3

    :cond_10
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    add-int/lit8 v3, v3, -0x1

    aget-boolean p1, p1, v3

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object p1, p1, v3

    iput-object v4, p1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    goto :goto_3

    :cond_11
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object p1, p1, v3

    iput-object v4, p1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    :goto_3
    move v3, v8

    :goto_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result p1

    if-eqz p1, :cond_30

    move p1, v3

    :goto_5
    if-lez v3, :cond_21

    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    add-int/lit8 v7, v3, -0x1

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->f()Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    aget-boolean v4, v4, v7

    if-nez v4, :cond_15

    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result v4

    if-nez v4, :cond_15

    :cond_13
    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    goto :goto_6

    :cond_14
    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    :goto_6
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    goto/16 :goto_9

    :cond_15
    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    aget-boolean v4, v4, v7

    const/4 v8, 0x2

    if-nez v4, :cond_23

    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result v9

    if-nez v9, :cond_19

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    iget-object v9, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v9, v9, v7

    invoke-virtual {v9, v0}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    iget-object v9, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v10, v9, v7

    iget-object v11, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iput-object v11, v10, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    iput-object v10, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    if-ge v3, v8, :cond_16

    iput-object v4, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    goto :goto_7

    :cond_16
    iget-object v11, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    add-int/lit8 v12, v3, -0x2

    aget-boolean v11, v11, v12

    if-eqz v11, :cond_17

    aget-object v11, v9, v12

    iput-object v4, v11, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    goto :goto_7

    :cond_17
    aget-object v11, v9, v12

    iput-object v4, v11, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    :goto_7
    aput-object v10, v9, v3

    iget-object v10, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    aput-boolean v0, v10, v3

    aput-object v4, v9, v7

    add-int/lit8 v4, v3, 0x1

    if-ne p1, v3, :cond_18

    add-int/lit8 p1, p1, 0x1

    :cond_18
    aget-object v3, v9, v3

    iget-object v3, v3, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    move v13, v4

    move-object v4, v3

    move v3, v13

    :cond_19
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result v7

    if-nez v7, :cond_1a

    iget-object v7, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result v7

    if-eqz v7, :cond_1b

    :cond_1a
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->f()Z

    move-result v7

    if-nez v7, :cond_22

    iget-object v7, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result v7

    if-eqz v7, :cond_1b

    goto/16 :goto_a

    :cond_1b
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->f()Z

    move-result v7

    if-nez v7, :cond_1c

    iget-object v7, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result v7

    if-eqz v7, :cond_1e

    :cond_1c
    iget-object v7, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    iget-object v9, v7, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    iput-object v9, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iput-object v4, v7, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    add-int/lit8 v9, v3, -0x1

    aget-object v4, v4, v9

    iput-object v7, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/UF;->f()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget v4, v7, Lcom/android/tools/r8/internal/UF;->f:I

    and-int/2addr v4, v6

    iput v4, v7, Lcom/android/tools/r8/internal/UF;->f:I

    iget-object v4, v7, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/UF;->a(Lcom/android/tools/r8/internal/UF;)V

    :cond_1d
    move-object v4, v7

    :cond_1e
    iget-object v6, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    iget-object v6, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v6, v6, v7

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    iget-object v6, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    iget-object v6, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v9, v6, v7

    iget-object v10, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iput-object v10, v9, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    iput-object v9, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    if-ge v3, v8, :cond_1f

    iput-object v4, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    goto :goto_8

    :cond_1f
    iget-object v9, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    sub-int/2addr v3, v8

    aget-boolean v8, v9, v3

    if-eqz v8, :cond_20

    aget-object v3, v6, v3

    iput-object v4, v3, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    goto :goto_8

    :cond_20
    aget-object v3, v6, v3

    iput-object v4, v3, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    :goto_8
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/UF;->b(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v0, v0, v7

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/UF;->b(Lcom/android/tools/r8/internal/UF;)V

    :cond_21
    :goto_9
    move v3, p1

    goto/16 :goto_f

    :cond_22
    :goto_a
    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    goto/16 :goto_e

    :cond_23
    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result v9

    if-nez v9, :cond_27

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    iget-object v9, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v9, v9, v7

    invoke-virtual {v9, v0}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    iget-object v9, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v10, v9, v7

    iget-object v11, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    iput-object v11, v10, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iput-object v10, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    if-ge v3, v8, :cond_24

    iput-object v4, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    goto :goto_b

    :cond_24
    iget-object v11, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    add-int/lit8 v12, v3, -0x2

    aget-boolean v11, v11, v12

    if-eqz v11, :cond_25

    aget-object v11, v9, v12

    iput-object v4, v11, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    goto :goto_b

    :cond_25
    aget-object v11, v9, v12

    iput-object v4, v11, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    :goto_b
    aput-object v10, v9, v3

    iget-object v10, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    aput-boolean v5, v10, v3

    aput-object v4, v9, v7

    add-int/lit8 v4, v3, 0x1

    if-ne p1, v3, :cond_26

    add-int/lit8 p1, p1, 0x1

    :cond_26
    aget-object v3, v9, v3

    iget-object v3, v3, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    move v13, v4

    move-object v4, v3

    move v3, v13

    :cond_27
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result v7

    if-nez v7, :cond_28

    iget-object v7, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result v7

    if-eqz v7, :cond_29

    :cond_28
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->f()Z

    move-result v7

    if-nez v7, :cond_2f

    iget-object v7, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result v7

    if-eqz v7, :cond_29

    goto/16 :goto_d

    :cond_29
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result v7

    if-nez v7, :cond_2a

    iget-object v7, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result v7

    if-eqz v7, :cond_2c

    :cond_2a
    iget-object v7, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    iget-object v9, v7, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iput-object v9, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    iput-object v4, v7, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    add-int/lit8 v9, v3, -0x1

    aget-object v4, v4, v9

    iput-object v7, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/UF;->d()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/UF;->b(Z)V

    iget-object v0, v7, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/UF;->b(Lcom/android/tools/r8/internal/UF;)V

    :cond_2b
    move-object v4, v7

    :cond_2c
    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    add-int/lit8 v7, v3, -0x1

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/UF;->b()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v0, v0, v7

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    iget-object v0, v4, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v9, v0, v7

    iget-object v10, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    iput-object v10, v9, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    iput-object v9, v4, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    if-ge v3, v8, :cond_2d

    iput-object v4, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    goto :goto_c

    :cond_2d
    iget-object v9, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    sub-int/2addr v3, v8

    aget-boolean v8, v9, v3

    if-eqz v8, :cond_2e

    aget-object v0, v0, v3

    iput-object v4, v0, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    goto :goto_c

    :cond_2e
    aget-object v0, v0, v3

    iput-object v4, v0, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    :goto_c
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UF;->f()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, v4, Lcom/android/tools/r8/internal/UF;->f:I

    and-int/2addr v0, v6

    iput v0, v4, Lcom/android/tools/r8/internal/UF;->f:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aget-object v0, v0, v7

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/UF;->a(Lcom/android/tools/r8/internal/UF;)V

    goto/16 :goto_9

    :cond_2f
    :goto_d
    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    :goto_e
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_5

    :goto_f
    iget-object p1, p0, Lcom/android/tools/r8/internal/iG;->b:Lcom/android/tools/r8/internal/UF;

    if-eqz p1, :cond_30

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/UF;->a(Z)V

    :cond_30
    iput-boolean v5, p0, Lcom/android/tools/r8/internal/iG;->i:Z

    iget p1, p0, Lcom/android/tools/r8/internal/iG;->c:I

    sub-int/2addr p1, v5

    iput p1, p0, Lcom/android/tools/r8/internal/iG;->c:I

    :goto_10
    add-int/lit8 p1, v3, -0x1

    if-eqz v3, :cond_31

    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aput-object v2, v0, p1

    move v3, p1

    goto :goto_10

    :cond_31
    iget-object p1, v1, Lcom/android/tools/r8/internal/M;->c:Ljava/lang/Object;

    return-object p1

    :cond_32
    move-object p1, v4

    move v4, v8

    goto/16 :goto_1

    :cond_33
    iget-object v6, p0, Lcom/android/tools/r8/internal/iG;->j:[Z

    if-lez v4, :cond_34

    goto :goto_11

    :cond_34
    move v5, v0

    :goto_11
    aput-boolean v5, v6, v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aput-object v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    if-eqz v5, :cond_37

    iget v4, v1, Lcom/android/tools/r8/internal/UF;->f:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_35

    move-object v1, v2

    goto :goto_12

    :cond_35
    iget-object v1, v1, Lcom/android/tools/r8/internal/UF;->e:Lcom/android/tools/r8/internal/UF;

    :goto_12
    if-nez v1, :cond_1

    :goto_13
    add-int/lit8 p1, v3, -0x1

    if-eqz v3, :cond_36

    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aput-object v2, v0, p1

    move v3, p1

    goto :goto_13

    :cond_36
    return-object v2

    :cond_37
    iget v4, v1, Lcom/android/tools/r8/internal/UF;->f:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_38

    move-object v1, v2

    goto :goto_14

    :cond_38
    iget-object v1, v1, Lcom/android/tools/r8/internal/UF;->d:Lcom/android/tools/r8/internal/UF;

    :goto_14
    if-nez v1, :cond_1

    :goto_15
    add-int/lit8 p1, v3, -0x1

    if-eqz v3, :cond_39

    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->k:[Lcom/android/tools/r8/internal/UF;

    aput-object v2, v0, p1

    move v3, p1

    goto :goto_15

    :cond_39
    return-object v2
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/iG;->c:I

    return v0
.end method

.method public final values()Lcom/android/tools/r8/internal/w30;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->h:Lcom/android/tools/r8/internal/TF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/TF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/TF;-><init>(Lcom/android/tools/r8/internal/iG;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/iG;->h:Lcom/android/tools/r8/internal/TF;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/iG;->h:Lcom/android/tools/r8/internal/TF;

    return-object v0
.end method
