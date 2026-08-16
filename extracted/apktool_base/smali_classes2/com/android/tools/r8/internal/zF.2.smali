.class public final Lcom/android/tools/r8/internal/zF;
.super Lcom/android/tools/r8/internal/P;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public transient b:Lcom/android/tools/r8/internal/lF;

.field public c:I

.field public transient d:Lcom/android/tools/r8/internal/lF;

.field public transient e:Lcom/android/tools/r8/internal/lF;

.field public transient f:Lcom/android/tools/r8/internal/jF;

.field public transient g:Lcom/android/tools/r8/internal/oF;

.field public transient h:Lcom/android/tools/r8/internal/kF;

.field public transient i:Z

.field public transient j:Lcom/android/tools/r8/internal/gI;

.field public transient k:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/P;-><init>()V

    const/16 v0, 0x30

    .line 2
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/tools/r8/internal/zF;->k:[Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/tools/r8/internal/zF;->c:I

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/zF;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/zF;->j:Lcom/android/tools/r8/internal/gI;

    .line 7
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 8
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/zF;->a(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The key array and the value array have different lengths ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/tools/r8/internal/zF;->d:Lcom/android/tools/r8/internal/lF;

    iget v0, v0, Lcom/android/tools/r8/internal/M;->b:I

    return v0

    .line 100
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final a(II)Lcom/android/tools/r8/internal/jG;
    .locals 7

    .line 101
    new-instance v6, Lcom/android/tools/r8/internal/wF;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/wF;-><init>(Lcom/android/tools/r8/internal/zF;IZIZ)V

    return-object v6
.end method

.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/zF;->i:Z

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/zF;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/zF;->c:I

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/lF;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/lF;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/zF;->e:Lcom/android/tools/r8/internal/lF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    .line 5
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/zF;->i:Z

    goto/16 :goto_d

    :cond_0
    const/4 v3, 0x0

    move v6, v0

    move-object v4, v3

    move-object v5, v4

    move-object v3, v1

    .line 6
    :goto_0
    iget v7, v1, Lcom/android/tools/r8/internal/M;->b:I

    invoke-virtual {p0, p1, v7}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v7

    if-nez v7, :cond_1

    move-object v0, v1

    goto/16 :goto_d

    .line 7
    :cond_1
    iget v8, v1, Lcom/android/tools/r8/internal/lF;->f:I

    int-to-byte v8, v8

    if-eqz v8, :cond_2

    move v6, v0

    move-object v3, v1

    move-object v4, v5

    .line 8
    :cond_2
    iget-object v5, p0, Lcom/android/tools/r8/internal/zF;->k:[Z

    add-int/lit8 v8, v6, 0x1

    if-lez v7, :cond_3

    move v7, v2

    goto :goto_1

    :cond_3
    move v7, v0

    :goto_1
    aput-boolean v7, v5, v6

    if-eqz v7, :cond_6

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lF;->e()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 10
    iget v5, p0, Lcom/android/tools/r8/internal/zF;->c:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/tools/r8/internal/zF;->c:I

    .line 11
    new-instance v5, Lcom/android/tools/r8/internal/lF;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/internal/lF;-><init>(I)V

    .line 12
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/zF;->i:Z

    .line 13
    iget-object p1, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    if-nez p1, :cond_4

    iput-object v5, p0, Lcom/android/tools/r8/internal/zF;->e:Lcom/android/tools/r8/internal/lF;

    .line 14
    :cond_4
    iput-object v1, v5, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    .line 15
    iput-object p1, v5, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    .line 16
    iget p1, v1, Lcom/android/tools/r8/internal/lF;->f:I

    const v6, 0x7fffffff

    and-int/2addr p1, v6

    iput p1, v1, Lcom/android/tools/r8/internal/lF;->f:I

    .line 17
    iput-object v5, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    goto :goto_3

    .line 18
    :cond_5
    iget-object v5, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    :goto_2
    move v6, v8

    move-object v9, v5

    move-object v5, v1

    move-object v1, v9

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 20
    iget v5, p0, Lcom/android/tools/r8/internal/zF;->c:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/tools/r8/internal/zF;->c:I

    .line 21
    new-instance v5, Lcom/android/tools/r8/internal/lF;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/internal/lF;-><init>(I)V

    .line 22
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/zF;->i:Z

    .line 23
    iget-object p1, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    if-nez p1, :cond_7

    iput-object v5, p0, Lcom/android/tools/r8/internal/zF;->d:Lcom/android/tools/r8/internal/lF;

    .line 24
    :cond_7
    iput-object v1, v5, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    .line 25
    iput-object p1, v5, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    .line 26
    iget p1, v1, Lcom/android/tools/r8/internal/lF;->f:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr p1, v6

    iput p1, v1, Lcom/android/tools/r8/internal/lF;->f:I

    .line 27
    iput-object v5, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    :goto_3
    move v1, v0

    move-object p1, v3

    :goto_4
    if-eq p1, v5, :cond_a

    .line 28
    iget-object v6, p0, Lcom/android/tools/r8/internal/zF;->k:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_8

    .line 29
    iget v7, p1, Lcom/android/tools/r8/internal/lF;->f:I

    and-int/lit16 v8, v7, -0x100

    int-to-byte v7, v7

    add-int/2addr v7, v2

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v8

    .line 30
    iput v7, p1, Lcom/android/tools/r8/internal/lF;->f:I

    goto :goto_5

    .line 31
    :cond_8
    iget v7, p1, Lcom/android/tools/r8/internal/lF;->f:I

    and-int/lit16 v8, v7, -0x100

    int-to-byte v7, v7

    sub-int/2addr v7, v2

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v8

    .line 32
    iput v7, p1, Lcom/android/tools/r8/internal/lF;->f:I

    :goto_5
    add-int/lit8 v1, v1, 0x1

    if-eqz v6, :cond_9

    .line 33
    iget-object p1, p1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    goto :goto_4

    :cond_9
    iget-object p1, p1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    goto :goto_4

    .line 34
    :cond_a
    iget p1, v3, Lcom/android/tools/r8/internal/lF;->f:I

    int-to-byte p1, p1

    const/4 v1, -0x2

    const/4 v6, -0x1

    if-ne p1, v1, :cond_11

    .line 35
    iget-object p1, v3, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    .line 36
    iget v1, p1, Lcom/android/tools/r8/internal/lF;->f:I

    int-to-byte v1, v1

    if-ne v1, v6, :cond_c

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lF;->e()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 38
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/lF;->b(Z)V

    .line 39
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/lF;->a(Lcom/android/tools/r8/internal/lF;)V

    goto :goto_6

    .line 40
    :cond_b
    iget-object v1, p1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iput-object v1, v3, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    .line 41
    :goto_6
    iput-object v3, p1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    .line 42
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    .line 43
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    goto/16 :goto_b

    .line 44
    :cond_c
    iget-object v1, p1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    .line 45
    iget-object v7, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object v7, p1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    .line 46
    iput-object p1, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    .line 47
    iget-object v7, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iput-object v7, v3, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    .line 48
    iput-object v3, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    .line 49
    iget v7, v1, Lcom/android/tools/r8/internal/lF;->f:I

    int-to-byte v7, v7

    if-ne v7, v6, :cond_d

    .line 50
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    .line 51
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/lF;->a(I)V

    goto :goto_7

    :cond_d
    if-nez v7, :cond_e

    .line 52
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    .line 53
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    goto :goto_7

    .line 54
    :cond_e
    invoke-virtual {p1, v6}, Lcom/android/tools/r8/internal/lF;->a(I)V

    .line 55
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    .line 56
    :goto_7
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    .line 57
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 58
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/lF;->b(Lcom/android/tools/r8/internal/lF;)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/lF;->a(Z)V

    .line 60
    :cond_f
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lF;->e()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 61
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/lF;->a(Lcom/android/tools/r8/internal/lF;)V

    .line 62
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/lF;->b(Z)V

    :cond_10
    :goto_8
    move-object p1, v1

    goto :goto_b

    :cond_11
    const/4 v1, 0x2

    if-ne p1, v1, :cond_19

    .line 63
    iget-object p1, v3, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    .line 64
    iget v1, p1, Lcom/android/tools/r8/internal/lF;->f:I

    int-to-byte v1, v1

    if-ne v1, v2, :cond_13

    .line 65
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 66
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/lF;->a(Z)V

    .line 67
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/lF;->b(Lcom/android/tools/r8/internal/lF;)V

    goto :goto_9

    .line 68
    :cond_12
    iget-object v1, p1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object v1, v3, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    .line 69
    :goto_9
    iput-object v3, p1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    .line 70
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    .line 71
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    goto :goto_b

    .line 72
    :cond_13
    iget-object v1, p1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    .line 73
    iget-object v7, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iput-object v7, p1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    .line 74
    iput-object p1, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    .line 75
    iget-object v7, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object v7, v3, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    .line 76
    iput-object v3, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    .line 77
    iget v7, v1, Lcom/android/tools/r8/internal/lF;->f:I

    int-to-byte v7, v7

    if-ne v7, v2, :cond_14

    .line 78
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    .line 79
    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/lF;->a(I)V

    goto :goto_a

    :cond_14
    if-nez v7, :cond_15

    .line 80
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    .line 81
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    goto :goto_a

    .line 82
    :cond_15
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/lF;->a(I)V

    .line 83
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    .line 84
    :goto_a
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    .line 85
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 86
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/lF;->b(Lcom/android/tools/r8/internal/lF;)V

    .line 87
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/lF;->a(Z)V

    .line 88
    :cond_16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lF;->e()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 89
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/lF;->a(Lcom/android/tools/r8/internal/lF;)V

    .line 90
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/lF;->b(Z)V

    goto :goto_8

    :goto_b
    if-nez v4, :cond_17

    .line 91
    iput-object p1, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    goto :goto_c

    .line 92
    :cond_17
    iget-object v0, v4, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    if-ne v0, v3, :cond_18

    iput-object p1, v4, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    goto :goto_c

    .line 93
    :cond_18
    iput-object p1, v4, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    :cond_19
    :goto_c
    move-object v0, v5

    .line 94
    :goto_d
    iget-object p1, v0, Lcom/android/tools/r8/internal/M;->c:Ljava/lang/Object;

    .line 95
    iput-object p2, v0, Lcom/android/tools/r8/internal/M;->c:Ljava/lang/Object;

    return-object p1

    .line 96
    :cond_1a
    iget-object v5, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    goto/16 :goto_2
.end method

.method public final a(I)Z
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zF;->d(I)Lcom/android/tools/r8/internal/lF;

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
    iget-object v0, p0, Lcom/android/tools/r8/internal/zF;->f:Lcom/android/tools/r8/internal/jF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/jF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/jF;-><init>(Lcom/android/tools/r8/internal/zF;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zF;->f:Lcom/android/tools/r8/internal/jF;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zF;->f:Lcom/android/tools/r8/internal/jF;

    return-object v0
.end method

.method public final b(I)Lcom/android/tools/r8/internal/jG;
    .locals 7

    .line 3
    new-instance v6, Lcom/android/tools/r8/internal/wF;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/wF;-><init>(Lcom/android/tools/r8/internal/zF;IZIZ)V

    return-object v6
.end method

.method public final c(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/zF;->j:Lcom/android/tools/r8/internal/gI;

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/gI;->a(II)I

    move-result p1

    return p1
.end method

.method public final c(I)Lcom/android/tools/r8/internal/jG;
    .locals 7

    .line 2
    new-instance v6, Lcom/android/tools/r8/internal/wF;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/wF;-><init>(Lcom/android/tools/r8/internal/zF;IZIZ)V

    return-object v6
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/zF;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/zF;->f:Lcom/android/tools/r8/internal/jF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/zF;->h:Lcom/android/tools/r8/internal/kF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/zF;->g:Lcom/android/tools/r8/internal/oF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/zF;->e:Lcom/android/tools/r8/internal/lF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/zF;->d:Lcom/android/tools/r8/internal/lF;

    return-void
.end method

.method public final clone()Lcom/android/tools/r8/internal/zF;
    .locals 9

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zF;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/android/tools/r8/internal/zF;->g:Lcom/android/tools/r8/internal/oF;

    .line 4
    iput-object v1, v0, Lcom/android/tools/r8/internal/zF;->h:Lcom/android/tools/r8/internal/kF;

    .line 5
    iput-object v1, v0, Lcom/android/tools/r8/internal/zF;->f:Lcom/android/tools/r8/internal/jF;

    const/16 v2, 0x30

    .line 6
    new-array v2, v2, [Z

    iput-object v2, v0, Lcom/android/tools/r8/internal/zF;->k:[Z

    .line 7
    iget v2, p0, Lcom/android/tools/r8/internal/zF;->c:I

    if-eqz v2, :cond_5

    .line 8
    new-instance v2, Lcom/android/tools/r8/internal/lF;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/lF;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/lF;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/lF;-><init>()V

    .line 9
    iget-object v4, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    .line 10
    iget v5, v2, Lcom/android/tools/r8/internal/lF;->f:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, v2, Lcom/android/tools/r8/internal/lF;->f:I

    .line 11
    iput-object v4, v2, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    .line 12
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/lF;->a(Lcom/android/tools/r8/internal/lF;)V

    move-object v4, v3

    .line 13
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result v5

    if-nez v5, :cond_1

    .line 14
    iget-object v5, v2, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/lF;->clone()Lcom/android/tools/r8/internal/lF;

    move-result-object v5

    .line 15
    iget-object v7, v4, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/lF;->a(Lcom/android/tools/r8/internal/lF;)V

    .line 16
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/lF;->b(Lcom/android/tools/r8/internal/lF;)V

    .line 17
    iget v7, v4, Lcom/android/tools/r8/internal/lF;->f:I

    and-int/2addr v7, v6

    iput v7, v4, Lcom/android/tools/r8/internal/lF;->f:I

    .line 18
    iput-object v5, v4, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    .line 19
    iget-object v2, v2, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    move-object v4, v5

    goto :goto_4

    .line 20
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/lF;->e()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 21
    iget-object v2, v2, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    if-nez v2, :cond_3

    .line 22
    iput-object v1, v4, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    .line 23
    iget-object v1, v3, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object v1, v0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    .line 24
    iput-object v1, v0, Lcom/android/tools/r8/internal/zF;->d:Lcom/android/tools/r8/internal/lF;

    .line 25
    :goto_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/zF;->d:Lcom/android/tools/r8/internal/lF;

    iget-object v1, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    if-eqz v1, :cond_2

    iput-object v1, v0, Lcom/android/tools/r8/internal/zF;->d:Lcom/android/tools/r8/internal/lF;

    goto :goto_2

    .line 26
    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    iput-object v1, v0, Lcom/android/tools/r8/internal/zF;->e:Lcom/android/tools/r8/internal/lF;

    .line 27
    :goto_3
    iget-object v1, v0, Lcom/android/tools/r8/internal/zF;->e:Lcom/android/tools/r8/internal/lF;

    iget-object v1, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    if-eqz v1, :cond_5

    iput-object v1, v0, Lcom/android/tools/r8/internal/zF;->e:Lcom/android/tools/r8/internal/lF;

    goto :goto_3

    .line 28
    :cond_3
    iget-object v4, v4, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    goto :goto_1

    .line 29
    :cond_4
    iget-object v2, v2, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    .line 30
    iget-object v4, v4, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    .line 31
    :goto_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/lF;->e()Z

    move-result v5

    if-nez v5, :cond_0

    .line 32
    iget-object v5, v2, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/lF;->clone()Lcom/android/tools/r8/internal/lF;

    move-result-object v5

    .line 33
    iget-object v7, v4, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/lF;->b(Lcom/android/tools/r8/internal/lF;)V

    .line 34
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/lF;->a(Lcom/android/tools/r8/internal/lF;)V

    .line 35
    iget v7, v4, Lcom/android/tools/r8/internal/lF;->f:I

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    iput v7, v4, Lcom/android/tools/r8/internal/lF;->f:I

    .line 36
    iput-object v5, v4, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    goto :goto_0

    :cond_5
    return-object v0

    .line 37
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zF;->clone()Lcom/android/tools/r8/internal/zF;

    move-result-object v0

    return-object v0
.end method

.method public final comparator()Lcom/android/tools/r8/internal/gI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/zF;->j:Lcom/android/tools/r8/internal/gI;

    return-object v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/zF;->j:Lcom/android/tools/r8/internal/gI;

    return-object v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/yF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/yF;-><init>(Lcom/android/tools/r8/internal/zF;)V

    iget v1, p0, Lcom/android/tools/r8/internal/zF;->c:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xF;->a()Lcom/android/tools/r8/internal/lF;

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

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/zF;->e:Lcom/android/tools/r8/internal/lF;

    iget v0, v0, Lcom/android/tools/r8/internal/M;->b:I

    return v0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final d(I)Lcom/android/tools/r8/internal/lF;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    iget v1, v0, Lcom/android/tools/r8/internal/M;->b:I

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v1

    if-eqz v1, :cond_3

    if-gez v1, :cond_1

    .line 3
    iget v1, v0, Lcom/android/tools/r8/internal/lF;->f:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    goto :goto_0

    .line 4
    :cond_1
    iget v1, v0, Lcom/android/tools/r8/internal/lF;->f:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zF;->d(I)Lcom/android/tools/r8/internal/lF;

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

    iget v0, p0, Lcom/android/tools/r8/internal/zF;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Lcom/android/tools/r8/internal/qI;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zF;->g:Lcom/android/tools/r8/internal/oF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/oF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/oF;-><init>(Lcom/android/tools/r8/internal/zF;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zF;->g:Lcom/android/tools/r8/internal/oF;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zF;->g:Lcom/android/tools/r8/internal/oF;

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/zF;->i:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    move v4, v0

    move-object v3, v2

    :goto_0
    iget v5, v1, Lcom/android/tools/r8/internal/M;->b:I

    invoke-virtual {p0, p1, v5}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_39

    iget-object p1, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lF;->b()Lcom/android/tools/r8/internal/lF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/zF;->d:Lcom/android/tools/r8/internal/lF;

    :cond_1
    iget-object p1, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lF;->d()Lcom/android/tools/r8/internal/lF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/zF;->e:Lcom/android/tools/r8/internal/lF;

    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lF;->e()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v3, :cond_4

    if-eqz v4, :cond_3

    iget-object p1, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/lF;->b(Lcom/android/tools/r8/internal/lF;)V

    goto/16 :goto_6

    :cond_3
    iget-object p1, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/lF;->a(Lcom/android/tools/r8/internal/lF;)V

    goto/16 :goto_6

    :cond_4
    if-eqz v4, :cond_5

    iget-object p1, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    goto :goto_1

    :cond_5
    iget-object p1, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lF;->d()Lcom/android/tools/r8/internal/lF;

    move-result-object p1

    iget-object v5, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iput-object v5, p1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    if-eqz v3, :cond_8

    if-eqz v4, :cond_7

    iget-object p1, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object p1, v3, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    goto/16 :goto_6

    :cond_7
    iget-object p1, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object p1, v3, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    goto/16 :goto_6

    :cond_8
    iget-object p1, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object p1, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    goto/16 :goto_6

    :cond_9
    iget-object p1, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object v5, p1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/lF;->a(Z)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lF;->d()Lcom/android/tools/r8/internal/lF;

    move-result-object v5

    iput-object p1, v5, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    :cond_a
    if-eqz v3, :cond_c

    if-eqz v4, :cond_b

    iput-object p1, v3, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    goto :goto_2

    :cond_b
    iput-object p1, v3, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    goto :goto_2

    :cond_c
    iput-object p1, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    :goto_2
    iget v3, v1, Lcom/android/tools/r8/internal/lF;->f:I

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/lF;->a(I)V

    move-object v3, p1

    move v4, v6

    goto :goto_6

    :cond_d
    :goto_3
    iget-object v5, p1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/lF;->e()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/lF;->a(Lcom/android/tools/r8/internal/lF;)V

    goto :goto_4

    :cond_e
    iget-object v7, v5, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iput-object v7, p1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    :goto_4
    iget-object v7, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object v7, v5, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lF;->d()Lcom/android/tools/r8/internal/lF;

    move-result-object v7

    iput-object v5, v7, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v5, v0}, Lcom/android/tools/r8/internal/lF;->a(Z)V

    :cond_f
    iget-object v7, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iput-object v7, v5, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v5, v0}, Lcom/android/tools/r8/internal/lF;->b(Z)V

    if-eqz v3, :cond_11

    if-eqz v4, :cond_10

    iput-object v5, v3, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    goto :goto_5

    :cond_10
    iput-object v5, v3, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    goto :goto_5

    :cond_11
    iput-object v5, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    :goto_5
    iget v3, v1, Lcom/android/tools/r8/internal/lF;->f:I

    int-to-byte v3, v3

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/lF;->a(I)V

    move-object v3, p1

    move v4, v0

    :goto_6
    if-eqz v3, :cond_37

    iget-object p1, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    if-ne v3, p1, :cond_12

    move-object p1, v2

    goto :goto_a

    :cond_12
    move-object p1, v3

    move-object v5, p1

    :goto_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lF;->e()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object p1, p1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    if-eqz p1, :cond_13

    iget-object v7, p1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    if-eq v7, v3, :cond_19

    :cond_13
    :goto_8
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object v5, v5, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    goto :goto_8

    :cond_14
    iget-object p1, v5, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    goto :goto_a

    :cond_15
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result v7

    if-eqz v7, :cond_36

    iget-object v5, v5, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    if-eqz v5, :cond_17

    iget-object v7, v5, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    if-eq v7, v3, :cond_16

    goto :goto_9

    :cond_16
    move-object p1, v5

    goto :goto_a

    :cond_17
    :goto_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lF;->e()Z

    move-result v5

    if-nez v5, :cond_18

    iget-object p1, p1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    goto :goto_9

    :cond_18
    iget-object p1, p1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    :cond_19
    :goto_a
    const/4 v5, -0x1

    if-nez v4, :cond_27

    if-eqz p1, :cond_1a

    iget-object v4, p1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    if-eq v4, v3, :cond_1a

    move v4, v6

    goto :goto_b

    :cond_1a
    move v4, v0

    :goto_b
    iget v7, v3, Lcom/android/tools/r8/internal/lF;->f:I

    and-int/lit16 v8, v7, -0x100

    int-to-byte v7, v7

    add-int/2addr v7, v6

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v8

    iput v7, v3, Lcom/android/tools/r8/internal/lF;->f:I

    int-to-byte v7, v7

    if-ne v7, v6, :cond_1b

    goto/16 :goto_14

    :cond_1b
    const/4 v8, 0x2

    if-ne v7, v8, :cond_35

    iget-object v7, v3, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iget v8, v7, Lcom/android/tools/r8/internal/lF;->f:I

    int-to-byte v8, v8

    if-ne v8, v5, :cond_22

    iget-object v8, v7, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iget-object v9, v8, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iput-object v9, v7, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object v7, v8, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iget-object v9, v8, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object v9, v3, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iput-object v3, v8, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iget v9, v8, Lcom/android/tools/r8/internal/lF;->f:I

    int-to-byte v9, v9

    if-ne v9, v6, :cond_1c

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/lF;->a(I)V

    goto :goto_c

    :cond_1c
    if-nez v9, :cond_1d

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    goto :goto_c

    :cond_1d
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/lF;->a(I)V

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    :goto_c
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v3, v8}, Lcom/android/tools/r8/internal/lF;->b(Lcom/android/tools/r8/internal/lF;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/lF;->a(Z)V

    :cond_1e
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/lF;->e()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/lF;->a(Lcom/android/tools/r8/internal/lF;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/lF;->b(Z)V

    :cond_1f
    if-eqz p1, :cond_21

    if-eqz v4, :cond_20

    iput-object v8, p1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    goto/16 :goto_13

    :cond_20
    iput-object v8, p1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    goto/16 :goto_13

    :cond_21
    iput-object v8, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    goto/16 :goto_13

    :cond_22
    if-eqz p1, :cond_24

    if-eqz v4, :cond_23

    iput-object v7, p1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    goto :goto_d

    :cond_23
    iput-object v7, p1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    goto :goto_d

    :cond_24
    iput-object v7, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    :goto_d
    if-nez v8, :cond_25

    iget-object p1, v7, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object p1, v3, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iput-object v3, v7, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/lF;->a(I)V

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/lF;->a(I)V

    goto/16 :goto_14

    :cond_25
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/lF;->b(Z)V

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/lF;->a(Z)V

    goto :goto_e

    :cond_26
    iget-object v5, v7, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object v5, v3, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    :goto_e
    iput-object v3, v7, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    goto/16 :goto_13

    :cond_27
    if-eqz p1, :cond_28

    iget-object v4, p1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    if-eq v4, v3, :cond_28

    move v4, v6

    goto :goto_f

    :cond_28
    move v4, v0

    :goto_f
    iget v7, v3, Lcom/android/tools/r8/internal/lF;->f:I

    and-int/lit16 v8, v7, -0x100

    int-to-byte v7, v7

    sub-int/2addr v7, v6

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v8

    iput v7, v3, Lcom/android/tools/r8/internal/lF;->f:I

    int-to-byte v7, v7

    if-ne v7, v5, :cond_29

    goto/16 :goto_14

    :cond_29
    const/4 v8, -0x2

    if-ne v7, v8, :cond_35

    iget-object v7, v3, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iget v8, v7, Lcom/android/tools/r8/internal/lF;->f:I

    int-to-byte v8, v8

    if-ne v8, v6, :cond_30

    iget-object v8, v7, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iget-object v9, v8, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object v9, v7, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iput-object v7, v8, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iget-object v9, v8, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iput-object v9, v3, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object v3, v8, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iget v9, v8, Lcom/android/tools/r8/internal/lF;->f:I

    int-to-byte v9, v9

    if-ne v9, v5, :cond_2a

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/lF;->a(I)V

    goto :goto_10

    :cond_2a
    if-nez v9, :cond_2b

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    goto :goto_10

    :cond_2b
    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/lF;->a(I)V

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    :goto_10
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/lF;->c()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/lF;->b(Lcom/android/tools/r8/internal/lF;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/lF;->a(Z)V

    :cond_2c
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/lF;->e()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v3, v8}, Lcom/android/tools/r8/internal/lF;->a(Lcom/android/tools/r8/internal/lF;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/lF;->b(Z)V

    :cond_2d
    if-eqz p1, :cond_2f

    if-eqz v4, :cond_2e

    iput-object v8, p1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    goto :goto_13

    :cond_2e
    iput-object v8, p1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    goto :goto_13

    :cond_2f
    iput-object v8, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    goto :goto_13

    :cond_30
    if-eqz p1, :cond_32

    if-eqz v4, :cond_31

    iput-object v7, p1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    goto :goto_11

    :cond_31
    iput-object v7, p1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    goto :goto_11

    :cond_32
    iput-object v7, p0, Lcom/android/tools/r8/internal/zF;->b:Lcom/android/tools/r8/internal/lF;

    :goto_11
    if-nez v8, :cond_33

    iget-object p1, v7, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iput-object p1, v3, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iput-object v3, v7, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/lF;->a(I)V

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/lF;->a(I)V

    goto :goto_14

    :cond_33
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/lF;->e()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/lF;->a(Z)V

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/lF;->b(Z)V

    goto :goto_12

    :cond_34
    iget-object v5, v7, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    iput-object v5, v3, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    :goto_12
    iput-object v3, v7, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/lF;->a(I)V

    :cond_35
    :goto_13
    move-object v3, p1

    goto/16 :goto_6

    :cond_36
    iget-object v5, v5, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

    iget-object p1, p1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    goto/16 :goto_7

    :cond_37
    :goto_14
    iput-boolean v6, p0, Lcom/android/tools/r8/internal/zF;->i:Z

    iget p1, p0, Lcom/android/tools/r8/internal/zF;->c:I

    sub-int/2addr p1, v6

    iput p1, p0, Lcom/android/tools/r8/internal/zF;->c:I

    iget-object p1, v1, Lcom/android/tools/r8/internal/M;->c:Ljava/lang/Object;

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

    iget v3, v1, Lcom/android/tools/r8/internal/lF;->f:I

    const/high16 v5, -0x80000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_3b

    move-object v3, v2

    goto :goto_16

    :cond_3b
    iget-object v3, v1, Lcom/android/tools/r8/internal/lF;->e:Lcom/android/tools/r8/internal/lF;

    :goto_16
    if-nez v3, :cond_3e

    return-object v2

    :cond_3c
    iget v3, v1, Lcom/android/tools/r8/internal/lF;->f:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v3, v5

    if-eqz v3, :cond_3d

    move-object v3, v2

    goto :goto_17

    :cond_3d
    iget-object v3, v1, Lcom/android/tools/r8/internal/lF;->d:Lcom/android/tools/r8/internal/lF;

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

    iget v0, p0, Lcom/android/tools/r8/internal/zF;->c:I

    return v0
.end method

.method public final values()Lcom/android/tools/r8/internal/w30;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zF;->h:Lcom/android/tools/r8/internal/kF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/kF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/kF;-><init>(Lcom/android/tools/r8/internal/zF;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zF;->h:Lcom/android/tools/r8/internal/kF;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zF;->h:Lcom/android/tools/r8/internal/kF;

    return-object v0
.end method
