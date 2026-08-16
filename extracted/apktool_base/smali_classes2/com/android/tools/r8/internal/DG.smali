.class public final Lcom/android/tools/r8/internal/DG;
.super Lcom/android/tools/r8/internal/V;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public transient b:Lcom/android/tools/r8/internal/pG;

.field public c:I

.field public transient d:Lcom/android/tools/r8/internal/pG;

.field public transient e:Lcom/android/tools/r8/internal/pG;

.field public transient f:Lcom/android/tools/r8/internal/nG;

.field public transient g:Lcom/android/tools/r8/internal/sG;

.field public transient h:Lcom/android/tools/r8/internal/oG;

.field public transient i:Z

.field public transient j:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/V;-><init>()V

    const/16 v0, 0x30

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/tools/r8/internal/DG;->j:[Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/DG;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/tools/r8/internal/DG;->d:Lcom/android/tools/r8/internal/pG;

    iget v0, v0, Lcom/android/tools/r8/internal/S;->b:I

    return v0

    .line 101
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final a(II)Lcom/android/tools/r8/internal/wH;
    .locals 7

    .line 102
    new-instance v6, Lcom/android/tools/r8/internal/AG;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/AG;-><init>(Lcom/android/tools/r8/internal/DG;IZIZ)V

    return-object v6
.end method

.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/DG;->i:Z

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/DG;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/DG;->c:I

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/pG;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/pG;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/DG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object v0, p0, Lcom/android/tools/r8/internal/DG;->e:Lcom/android/tools/r8/internal/pG;

    iput-object v0, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    .line 5
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/DG;->i:Z

    goto/16 :goto_d

    :cond_0
    const/4 v3, 0x0

    move v6, v0

    move-object v4, v3

    move-object v5, v4

    move-object v3, v1

    .line 6
    :goto_0
    iget v7, v1, Lcom/android/tools/r8/internal/S;->b:I

    .line 7
    invoke-static {p1, v7}, Ljava/lang/Integer;->compare(II)I

    move-result v7

    if-nez v7, :cond_1

    move-object v0, v1

    goto/16 :goto_d

    .line 8
    :cond_1
    iget v8, v1, Lcom/android/tools/r8/internal/pG;->f:I

    int-to-byte v8, v8

    if-eqz v8, :cond_2

    move v6, v0

    move-object v3, v1

    move-object v4, v5

    .line 9
    :cond_2
    iget-object v5, p0, Lcom/android/tools/r8/internal/DG;->j:[Z

    add-int/lit8 v8, v6, 0x1

    if-lez v7, :cond_3

    move v7, v2

    goto :goto_1

    :cond_3
    move v7, v0

    :goto_1
    aput-boolean v7, v5, v6

    if-eqz v7, :cond_6

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pG;->e()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 11
    iget v5, p0, Lcom/android/tools/r8/internal/DG;->c:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/tools/r8/internal/DG;->c:I

    .line 12
    new-instance v5, Lcom/android/tools/r8/internal/pG;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/internal/pG;-><init>(I)V

    .line 13
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/DG;->i:Z

    .line 14
    iget-object p1, v1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    if-nez p1, :cond_4

    iput-object v5, p0, Lcom/android/tools/r8/internal/DG;->e:Lcom/android/tools/r8/internal/pG;

    .line 15
    :cond_4
    iput-object v1, v5, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    .line 16
    iput-object p1, v5, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    .line 17
    iget p1, v1, Lcom/android/tools/r8/internal/pG;->f:I

    const v6, 0x7fffffff

    and-int/2addr p1, v6

    iput p1, v1, Lcom/android/tools/r8/internal/pG;->f:I

    .line 18
    iput-object v5, v1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    goto :goto_3

    .line 19
    :cond_5
    iget-object v5, v1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    :goto_2
    move v6, v8

    move-object v9, v5

    move-object v5, v1

    move-object v1, v9

    goto :goto_0

    .line 20
    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 21
    iget v5, p0, Lcom/android/tools/r8/internal/DG;->c:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/tools/r8/internal/DG;->c:I

    .line 22
    new-instance v5, Lcom/android/tools/r8/internal/pG;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/internal/pG;-><init>(I)V

    .line 23
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/DG;->i:Z

    .line 24
    iget-object p1, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    if-nez p1, :cond_7

    iput-object v5, p0, Lcom/android/tools/r8/internal/DG;->d:Lcom/android/tools/r8/internal/pG;

    .line 25
    :cond_7
    iput-object v1, v5, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    .line 26
    iput-object p1, v5, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    .line 27
    iget p1, v1, Lcom/android/tools/r8/internal/pG;->f:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr p1, v6

    iput p1, v1, Lcom/android/tools/r8/internal/pG;->f:I

    .line 28
    iput-object v5, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    :goto_3
    move v1, v0

    move-object p1, v3

    :goto_4
    if-eq p1, v5, :cond_a

    .line 29
    iget-object v6, p0, Lcom/android/tools/r8/internal/DG;->j:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_8

    .line 30
    iget v7, p1, Lcom/android/tools/r8/internal/pG;->f:I

    and-int/lit16 v8, v7, -0x100

    int-to-byte v7, v7

    add-int/2addr v7, v2

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v8

    .line 31
    iput v7, p1, Lcom/android/tools/r8/internal/pG;->f:I

    goto :goto_5

    .line 32
    :cond_8
    iget v7, p1, Lcom/android/tools/r8/internal/pG;->f:I

    and-int/lit16 v8, v7, -0x100

    int-to-byte v7, v7

    sub-int/2addr v7, v2

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v8

    .line 33
    iput v7, p1, Lcom/android/tools/r8/internal/pG;->f:I

    :goto_5
    add-int/lit8 v1, v1, 0x1

    if-eqz v6, :cond_9

    .line 34
    iget-object p1, p1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    goto :goto_4

    :cond_9
    iget-object p1, p1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    goto :goto_4

    .line 35
    :cond_a
    iget p1, v3, Lcom/android/tools/r8/internal/pG;->f:I

    int-to-byte p1, p1

    const/4 v1, -0x2

    const/4 v6, -0x1

    if-ne p1, v1, :cond_11

    .line 36
    iget-object p1, v3, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    .line 37
    iget v1, p1, Lcom/android/tools/r8/internal/pG;->f:I

    int-to-byte v1, v1

    if-ne v1, v6, :cond_c

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pG;->e()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/pG;->b(Z)V

    .line 40
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/pG;->a(Lcom/android/tools/r8/internal/pG;)V

    goto :goto_6

    .line 41
    :cond_b
    iget-object v1, p1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iput-object v1, v3, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    .line 42
    :goto_6
    iput-object v3, p1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    .line 43
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    .line 44
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    goto/16 :goto_b

    .line 45
    :cond_c
    iget-object v1, p1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    .line 46
    iget-object v7, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object v7, p1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    .line 47
    iput-object p1, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    .line 48
    iget-object v7, v1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iput-object v7, v3, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    .line 49
    iput-object v3, v1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    .line 50
    iget v7, v1, Lcom/android/tools/r8/internal/pG;->f:I

    int-to-byte v7, v7

    if-ne v7, v6, :cond_d

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    .line 52
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/pG;->a(I)V

    goto :goto_7

    :cond_d
    if-nez v7, :cond_e

    .line 53
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    .line 54
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    goto :goto_7

    .line 55
    :cond_e
    invoke-virtual {p1, v6}, Lcom/android/tools/r8/internal/pG;->a(I)V

    .line 56
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    .line 57
    :goto_7
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    .line 58
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 59
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/pG;->b(Lcom/android/tools/r8/internal/pG;)V

    .line 60
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/pG;->a(Z)V

    .line 61
    :cond_f
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pG;->e()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 62
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/pG;->a(Lcom/android/tools/r8/internal/pG;)V

    .line 63
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/pG;->b(Z)V

    :cond_10
    :goto_8
    move-object p1, v1

    goto :goto_b

    :cond_11
    const/4 v1, 0x2

    if-ne p1, v1, :cond_19

    .line 64
    iget-object p1, v3, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    .line 65
    iget v1, p1, Lcom/android/tools/r8/internal/pG;->f:I

    int-to-byte v1, v1

    if-ne v1, v2, :cond_13

    .line 66
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/pG;->a(Z)V

    .line 68
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/pG;->b(Lcom/android/tools/r8/internal/pG;)V

    goto :goto_9

    .line 69
    :cond_12
    iget-object v1, p1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object v1, v3, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    .line 70
    :goto_9
    iput-object v3, p1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    .line 71
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    .line 72
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    goto :goto_b

    .line 73
    :cond_13
    iget-object v1, p1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    .line 74
    iget-object v7, v1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iput-object v7, p1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    .line 75
    iput-object p1, v1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    .line 76
    iget-object v7, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object v7, v3, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    .line 77
    iput-object v3, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    .line 78
    iget v7, v1, Lcom/android/tools/r8/internal/pG;->f:I

    int-to-byte v7, v7

    if-ne v7, v2, :cond_14

    .line 79
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    .line 80
    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/pG;->a(I)V

    goto :goto_a

    :cond_14
    if-nez v7, :cond_15

    .line 81
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    .line 82
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    goto :goto_a

    .line 83
    :cond_15
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/pG;->a(I)V

    .line 84
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    .line 85
    :goto_a
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    .line 86
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 87
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/pG;->b(Lcom/android/tools/r8/internal/pG;)V

    .line 88
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/pG;->a(Z)V

    .line 89
    :cond_16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pG;->e()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 90
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/pG;->a(Lcom/android/tools/r8/internal/pG;)V

    .line 91
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/pG;->b(Z)V

    goto :goto_8

    :goto_b
    if-nez v4, :cond_17

    .line 92
    iput-object p1, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    goto :goto_c

    .line 93
    :cond_17
    iget-object v0, v4, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    if-ne v0, v3, :cond_18

    iput-object p1, v4, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    goto :goto_c

    .line 94
    :cond_18
    iput-object p1, v4, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    :cond_19
    :goto_c
    move-object v0, v5

    .line 95
    :goto_d
    iget-object p1, v0, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    .line 96
    iput-object p2, v0, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    return-object p1

    .line 97
    :cond_1a
    iget-object v5, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    goto/16 :goto_2
.end method

.method public final a(I)Z
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/DG;->d(I)Lcom/android/tools/r8/internal/pG;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(I)Lcom/android/tools/r8/internal/wH;
    .locals 7

    new-instance v6, Lcom/android/tools/r8/internal/AG;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/AG;-><init>(Lcom/android/tools/r8/internal/DG;IZIZ)V

    return-object v6
.end method

.method public final c(II)I
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final c()Lcom/android/tools/r8/internal/M30;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/DG;->f:Lcom/android/tools/r8/internal/nG;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/nG;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/nG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/DG;->f:Lcom/android/tools/r8/internal/nG;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/DG;->f:Lcom/android/tools/r8/internal/nG;

    return-object v0
.end method

.method public final c(I)Lcom/android/tools/r8/internal/wH;
    .locals 7

    .line 4
    new-instance v6, Lcom/android/tools/r8/internal/AG;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/AG;-><init>(Lcom/android/tools/r8/internal/DG;IZIZ)V

    return-object v6
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/DG;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    iput-object v0, p0, Lcom/android/tools/r8/internal/DG;->f:Lcom/android/tools/r8/internal/nG;

    iput-object v0, p0, Lcom/android/tools/r8/internal/DG;->h:Lcom/android/tools/r8/internal/oG;

    iput-object v0, p0, Lcom/android/tools/r8/internal/DG;->g:Lcom/android/tools/r8/internal/sG;

    iput-object v0, p0, Lcom/android/tools/r8/internal/DG;->e:Lcom/android/tools/r8/internal/pG;

    iput-object v0, p0, Lcom/android/tools/r8/internal/DG;->d:Lcom/android/tools/r8/internal/pG;

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 9

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/DG;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/tools/r8/internal/DG;->g:Lcom/android/tools/r8/internal/sG;

    iput-object v1, v0, Lcom/android/tools/r8/internal/DG;->h:Lcom/android/tools/r8/internal/oG;

    iput-object v1, v0, Lcom/android/tools/r8/internal/DG;->f:Lcom/android/tools/r8/internal/nG;

    const/16 v2, 0x30

    new-array v2, v2, [Z

    iput-object v2, v0, Lcom/android/tools/r8/internal/DG;->j:[Z

    iget v2, p0, Lcom/android/tools/r8/internal/DG;->c:I

    if-eqz v2, :cond_5

    new-instance v2, Lcom/android/tools/r8/internal/pG;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/pG;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/pG;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/pG;-><init>()V

    iget-object v4, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    iget v5, v2, Lcom/android/tools/r8/internal/pG;->f:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, v2, Lcom/android/tools/r8/internal/pG;->f:I

    iput-object v4, v2, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/pG;->a(Lcom/android/tools/r8/internal/pG;)V

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pG;->clone()Lcom/android/tools/r8/internal/pG;

    move-result-object v5

    iget-object v7, v4, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/pG;->a(Lcom/android/tools/r8/internal/pG;)V

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/pG;->b(Lcom/android/tools/r8/internal/pG;)V

    iget v7, v4, Lcom/android/tools/r8/internal/pG;->f:I

    and-int/2addr v7, v6

    iput v7, v4, Lcom/android/tools/r8/internal/pG;->f:I

    iput-object v5, v4, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iget-object v2, v2, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    move-object v4, v5

    goto :goto_4

    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pG;->e()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v2, v2, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    if-nez v2, :cond_3

    iput-object v1, v4, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iget-object v1, v3, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object v1, v0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    iput-object v1, v0, Lcom/android/tools/r8/internal/DG;->d:Lcom/android/tools/r8/internal/pG;

    :goto_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/DG;->d:Lcom/android/tools/r8/internal/pG;

    iget-object v1, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    if-eqz v1, :cond_2

    iput-object v1, v0, Lcom/android/tools/r8/internal/DG;->d:Lcom/android/tools/r8/internal/pG;

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    iput-object v1, v0, Lcom/android/tools/r8/internal/DG;->e:Lcom/android/tools/r8/internal/pG;

    :goto_3
    iget-object v1, v0, Lcom/android/tools/r8/internal/DG;->e:Lcom/android/tools/r8/internal/pG;

    iget-object v1, v1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    if-eqz v1, :cond_5

    iput-object v1, v0, Lcom/android/tools/r8/internal/DG;->e:Lcom/android/tools/r8/internal/pG;

    goto :goto_3

    :cond_3
    iget-object v4, v4, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    goto :goto_1

    :cond_4
    iget-object v2, v2, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iget-object v4, v4, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    :goto_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pG;->e()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pG;->clone()Lcom/android/tools/r8/internal/pG;

    move-result-object v5

    iget-object v7, v4, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/pG;->b(Lcom/android/tools/r8/internal/pG;)V

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/pG;->a(Lcom/android/tools/r8/internal/pG;)V

    iget v7, v4, Lcom/android/tools/r8/internal/pG;->f:I

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    iput v7, v4, Lcom/android/tools/r8/internal/pG;->f:I

    iput-object v5, v4, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

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

    new-instance v0, Lcom/android/tools/r8/internal/CG;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/CG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    iget v1, p0, Lcom/android/tools/r8/internal/DG;->c:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/BG;->a()Lcom/android/tools/r8/internal/pG;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final d()I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/DG;->e:Lcom/android/tools/r8/internal/pG;

    iget v0, v0, Lcom/android/tools/r8/internal/S;->b:I

    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final d(I)Lcom/android/tools/r8/internal/pG;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    iget v1, v0, Lcom/android/tools/r8/internal/S;->b:I

    .line 3
    invoke-static {p1, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-eqz v1, :cond_3

    if-gez v1, :cond_1

    .line 4
    iget v1, v0, Lcom/android/tools/r8/internal/pG;->f:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    goto :goto_0

    .line 5
    :cond_1
    iget v1, v0, Lcom/android/tools/r8/internal/pG;->f:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final e(I)Lcom/android/tools/r8/internal/pG;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_3

    iget v2, v0, Lcom/android/tools/r8/internal/S;->b:I

    invoke-static {p1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-eqz v2, :cond_3

    if-gez v2, :cond_1

    iget v1, v0, Lcom/android/tools/r8/internal/pG;->f:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    goto :goto_2

    :cond_1
    iget v1, v0, Lcom/android/tools/r8/internal/pG;->f:I

    const/high16 v3, -0x80000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

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

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/DG;->d(I)Lcom/android/tools/r8/internal/pG;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/DG;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Lcom/android/tools/r8/internal/qI;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DG;->g:Lcom/android/tools/r8/internal/sG;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/sG;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/sG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/DG;->g:Lcom/android/tools/r8/internal/sG;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/DG;->g:Lcom/android/tools/r8/internal/sG;

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/DG;->i:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    move v4, v0

    move-object v3, v2

    :goto_0
    iget v5, v1, Lcom/android/tools/r8/internal/S;->b:I

    invoke-static {p1, v5}, Ljava/lang/Integer;->compare(II)I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_39

    iget-object p1, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pG;->b()Lcom/android/tools/r8/internal/pG;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/DG;->d:Lcom/android/tools/r8/internal/pG;

    :cond_1
    iget-object p1, v1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pG;->d()Lcom/android/tools/r8/internal/pG;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/DG;->e:Lcom/android/tools/r8/internal/pG;

    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pG;->e()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v3, :cond_4

    if-eqz v4, :cond_3

    iget-object p1, v1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/pG;->b(Lcom/android/tools/r8/internal/pG;)V

    goto/16 :goto_6

    :cond_3
    iget-object p1, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/pG;->a(Lcom/android/tools/r8/internal/pG;)V

    goto/16 :goto_6

    :cond_4
    if-eqz v4, :cond_5

    iget-object p1, v1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    goto :goto_1

    :cond_5
    iget-object p1, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pG;->d()Lcom/android/tools/r8/internal/pG;

    move-result-object p1

    iget-object v5, v1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iput-object v5, p1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    if-eqz v3, :cond_8

    if-eqz v4, :cond_7

    iget-object p1, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object p1, v3, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    goto/16 :goto_6

    :cond_7
    iget-object p1, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object p1, v3, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    goto/16 :goto_6

    :cond_8
    iget-object p1, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object p1, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    goto/16 :goto_6

    :cond_9
    iget-object p1, v1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object v5, p1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/pG;->a(Z)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pG;->d()Lcom/android/tools/r8/internal/pG;

    move-result-object v5

    iput-object p1, v5, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    :cond_a
    if-eqz v3, :cond_c

    if-eqz v4, :cond_b

    iput-object p1, v3, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    goto :goto_2

    :cond_b
    iput-object p1, v3, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    goto :goto_2

    :cond_c
    iput-object p1, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    :goto_2
    iget v3, v1, Lcom/android/tools/r8/internal/pG;->f:I

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/pG;->a(I)V

    move-object v3, p1

    move v4, v6

    goto :goto_6

    :cond_d
    :goto_3
    iget-object v5, p1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pG;->e()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/pG;->a(Lcom/android/tools/r8/internal/pG;)V

    goto :goto_4

    :cond_e
    iget-object v7, v5, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iput-object v7, p1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    :goto_4
    iget-object v7, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object v7, v5, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pG;->d()Lcom/android/tools/r8/internal/pG;

    move-result-object v7

    iput-object v5, v7, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v5, v0}, Lcom/android/tools/r8/internal/pG;->a(Z)V

    :cond_f
    iget-object v7, v1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iput-object v7, v5, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v5, v0}, Lcom/android/tools/r8/internal/pG;->b(Z)V

    if-eqz v3, :cond_11

    if-eqz v4, :cond_10

    iput-object v5, v3, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    goto :goto_5

    :cond_10
    iput-object v5, v3, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    goto :goto_5

    :cond_11
    iput-object v5, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    :goto_5
    iget v3, v1, Lcom/android/tools/r8/internal/pG;->f:I

    int-to-byte v3, v3

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/pG;->a(I)V

    move-object v3, p1

    move v4, v0

    :goto_6
    if-eqz v3, :cond_37

    iget-object p1, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    if-ne v3, p1, :cond_12

    move-object p1, v2

    goto :goto_a

    :cond_12
    move-object p1, v3

    move-object v5, p1

    :goto_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pG;->e()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object p1, p1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    if-eqz p1, :cond_13

    iget-object v7, p1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    if-eq v7, v3, :cond_19

    :cond_13
    :goto_8
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object v5, v5, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    goto :goto_8

    :cond_14
    iget-object p1, v5, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    goto :goto_a

    :cond_15
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result v7

    if-eqz v7, :cond_36

    iget-object v5, v5, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    if-eqz v5, :cond_17

    iget-object v7, v5, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    if-eq v7, v3, :cond_16

    goto :goto_9

    :cond_16
    move-object p1, v5

    goto :goto_a

    :cond_17
    :goto_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pG;->e()Z

    move-result v5

    if-nez v5, :cond_18

    iget-object p1, p1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    goto :goto_9

    :cond_18
    iget-object p1, p1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    :cond_19
    :goto_a
    const/4 v5, -0x1

    if-nez v4, :cond_27

    if-eqz p1, :cond_1a

    iget-object v4, p1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    if-eq v4, v3, :cond_1a

    move v4, v6

    goto :goto_b

    :cond_1a
    move v4, v0

    :goto_b
    iget v7, v3, Lcom/android/tools/r8/internal/pG;->f:I

    and-int/lit16 v8, v7, -0x100

    int-to-byte v7, v7

    add-int/2addr v7, v6

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v8

    iput v7, v3, Lcom/android/tools/r8/internal/pG;->f:I

    int-to-byte v7, v7

    if-ne v7, v6, :cond_1b

    goto/16 :goto_14

    :cond_1b
    const/4 v8, 0x2

    if-ne v7, v8, :cond_35

    iget-object v7, v3, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iget v8, v7, Lcom/android/tools/r8/internal/pG;->f:I

    int-to-byte v8, v8

    if-ne v8, v5, :cond_22

    iget-object v8, v7, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iget-object v9, v8, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iput-object v9, v7, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object v7, v8, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iget-object v9, v8, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object v9, v3, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iput-object v3, v8, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iget v9, v8, Lcom/android/tools/r8/internal/pG;->f:I

    int-to-byte v9, v9

    if-ne v9, v6, :cond_1c

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/pG;->a(I)V

    goto :goto_c

    :cond_1c
    if-nez v9, :cond_1d

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    goto :goto_c

    :cond_1d
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/pG;->a(I)V

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    :goto_c
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v3, v8}, Lcom/android/tools/r8/internal/pG;->b(Lcom/android/tools/r8/internal/pG;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/pG;->a(Z)V

    :cond_1e
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/pG;->e()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/pG;->a(Lcom/android/tools/r8/internal/pG;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/pG;->b(Z)V

    :cond_1f
    if-eqz p1, :cond_21

    if-eqz v4, :cond_20

    iput-object v8, p1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    goto/16 :goto_13

    :cond_20
    iput-object v8, p1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    goto/16 :goto_13

    :cond_21
    iput-object v8, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    goto/16 :goto_13

    :cond_22
    if-eqz p1, :cond_24

    if-eqz v4, :cond_23

    iput-object v7, p1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    goto :goto_d

    :cond_23
    iput-object v7, p1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    goto :goto_d

    :cond_24
    iput-object v7, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    :goto_d
    if-nez v8, :cond_25

    iget-object p1, v7, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object p1, v3, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iput-object v3, v7, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/pG;->a(I)V

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/pG;->a(I)V

    goto/16 :goto_14

    :cond_25
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/pG;->b(Z)V

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/pG;->a(Z)V

    goto :goto_e

    :cond_26
    iget-object v5, v7, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object v5, v3, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    :goto_e
    iput-object v3, v7, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    goto/16 :goto_13

    :cond_27
    if-eqz p1, :cond_28

    iget-object v4, p1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    if-eq v4, v3, :cond_28

    move v4, v6

    goto :goto_f

    :cond_28
    move v4, v0

    :goto_f
    iget v7, v3, Lcom/android/tools/r8/internal/pG;->f:I

    and-int/lit16 v8, v7, -0x100

    int-to-byte v7, v7

    sub-int/2addr v7, v6

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v8

    iput v7, v3, Lcom/android/tools/r8/internal/pG;->f:I

    int-to-byte v7, v7

    if-ne v7, v5, :cond_29

    goto/16 :goto_14

    :cond_29
    const/4 v8, -0x2

    if-ne v7, v8, :cond_35

    iget-object v7, v3, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iget v8, v7, Lcom/android/tools/r8/internal/pG;->f:I

    int-to-byte v8, v8

    if-ne v8, v6, :cond_30

    iget-object v8, v7, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iget-object v9, v8, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object v9, v7, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iput-object v7, v8, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iget-object v9, v8, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iput-object v9, v3, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object v3, v8, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iget v9, v8, Lcom/android/tools/r8/internal/pG;->f:I

    int-to-byte v9, v9

    if-ne v9, v5, :cond_2a

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/pG;->a(I)V

    goto :goto_10

    :cond_2a
    if-nez v9, :cond_2b

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    goto :goto_10

    :cond_2b
    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/pG;->a(I)V

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    :goto_10
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/pG;->c()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/pG;->b(Lcom/android/tools/r8/internal/pG;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/pG;->a(Z)V

    :cond_2c
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/pG;->e()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v3, v8}, Lcom/android/tools/r8/internal/pG;->a(Lcom/android/tools/r8/internal/pG;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/pG;->b(Z)V

    :cond_2d
    if-eqz p1, :cond_2f

    if-eqz v4, :cond_2e

    iput-object v8, p1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    goto :goto_13

    :cond_2e
    iput-object v8, p1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    goto :goto_13

    :cond_2f
    iput-object v8, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    goto :goto_13

    :cond_30
    if-eqz p1, :cond_32

    if-eqz v4, :cond_31

    iput-object v7, p1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    goto :goto_11

    :cond_31
    iput-object v7, p1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    goto :goto_11

    :cond_32
    iput-object v7, p0, Lcom/android/tools/r8/internal/DG;->b:Lcom/android/tools/r8/internal/pG;

    :goto_11
    if-nez v8, :cond_33

    iget-object p1, v7, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iput-object p1, v3, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object v3, v7, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/pG;->a(I)V

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/pG;->a(I)V

    goto :goto_14

    :cond_33
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pG;->e()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/pG;->a(Z)V

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/pG;->b(Z)V

    goto :goto_12

    :cond_34
    iget-object v5, v7, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    iput-object v5, v3, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    :goto_12
    iput-object v3, v7, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/pG;->a(I)V

    :cond_35
    :goto_13
    move-object v3, p1

    goto/16 :goto_6

    :cond_36
    iget-object v5, v5, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    iget-object p1, p1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    goto/16 :goto_7

    :cond_37
    :goto_14
    iput-boolean v6, p0, Lcom/android/tools/r8/internal/DG;->i:Z

    iget p1, p0, Lcom/android/tools/r8/internal/DG;->c:I

    sub-int/2addr p1, v6

    iput p1, p0, Lcom/android/tools/r8/internal/DG;->c:I

    iget-object p1, v1, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    return-object p1

    :cond_38
    move-object p1, v5

    goto/16 :goto_3

    :cond_39
    if-lez v5, :cond_3a

    move v4, v6

    goto :goto_15

    :cond_3a
    move v4, v0

    :goto_15
    if-eqz v4, :cond_3c

    iget v3, v1, Lcom/android/tools/r8/internal/pG;->f:I

    const/high16 v5, -0x80000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_3b

    move-object v3, v2

    goto :goto_16

    :cond_3b
    iget-object v3, v1, Lcom/android/tools/r8/internal/pG;->e:Lcom/android/tools/r8/internal/pG;

    :goto_16
    if-nez v3, :cond_3e

    return-object v2

    :cond_3c
    iget v3, v1, Lcom/android/tools/r8/internal/pG;->f:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v3, v5

    if-eqz v3, :cond_3d

    move-object v3, v2

    goto :goto_17

    :cond_3d
    iget-object v3, v1, Lcom/android/tools/r8/internal/pG;->d:Lcom/android/tools/r8/internal/pG;

    :goto_17
    if-nez v3, :cond_3e

    return-object v2

    :cond_3e
    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    goto/16 :goto_0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/DG;->c:I

    return v0
.end method

.method public final values()Lcom/android/tools/r8/internal/Od0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DG;->h:Lcom/android/tools/r8/internal/oG;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/oG;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/oG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/DG;->h:Lcom/android/tools/r8/internal/oG;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/DG;->h:Lcom/android/tools/r8/internal/oG;

    return-object v0
.end method
