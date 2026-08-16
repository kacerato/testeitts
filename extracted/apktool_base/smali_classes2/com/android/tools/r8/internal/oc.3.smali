.class public final Lcom/android/tools/r8/internal/oc;
.super Lcom/android/tools/r8/internal/r2;
.source "SourceFile"


# instance fields
.field public final j:Lcom/android/tools/r8/internal/d6;

.field public k:Lcom/android/tools/r8/internal/OD;

.field public l:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/d6;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/r2;-><init>(Lcom/android/tools/r8/internal/d6;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/oc;->j:Lcom/android/tools/r8/internal/d6;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/hy;Ljava/lang/Object;)Lcom/android/tools/r8/internal/c6;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/tools/r8/internal/d6;->a:Lcom/android/tools/r8/internal/tt0;

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/c6;->b:Lcom/android/tools/r8/internal/c6;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 5
    sget-object p1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    return-object p1

    :cond_1
    const/4 v1, 0x2

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 7
    sget-object p1, Lcom/android/tools/r8/internal/c6;->d:Lcom/android/tools/r8/internal/c6;

    return-object p1

    :cond_2
    const/4 v1, 0x4

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ne p2, v1, :cond_3

    .line 9
    sget-object p1, Lcom/android/tools/r8/internal/c6;->e:Lcom/android/tools/r8/internal/c6;

    return-object p1

    :cond_3
    const/4 v1, 0x3

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ne p2, v1, :cond_4

    .line 11
    sget-object p1, Lcom/android/tools/r8/internal/c6;->f:Lcom/android/tools/r8/internal/c6;

    return-object p1

    :cond_4
    const/4 v1, 0x5

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ne p2, v1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/internal/oc;->j:Lcom/android/tools/r8/internal/d6;

    new-instance p2, Lcom/android/tools/r8/internal/PD;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/PD;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 v0, 0x6

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p2, v0, :cond_6

    .line 15
    const-string p1, "dummy"

    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    .line 17
    :cond_6
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 18
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    .line 20
    :cond_7
    instance-of v0, p2, Lcom/android/tools/r8/internal/YQ;

    if-eqz v0, :cond_b

    .line 21
    check-cast p2, Lcom/android/tools/r8/internal/YQ;

    :goto_0
    if-eqz p2, :cond_9

    .line 22
    iget v0, p2, Lcom/android/tools/r8/internal/H;->a:I

    if-ltz v0, :cond_8

    goto :goto_1

    .line 23
    :cond_8
    iget-object p2, p2, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    goto :goto_0

    :cond_9
    :goto_1
    if-eqz p2, :cond_a

    .line 24
    iget v0, p2, Lcom/android/tools/r8/internal/H;->a:I

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_a

    .line 25
    check-cast p2, Lcom/android/tools/r8/internal/qu0;

    iget-object p1, p2, Lcom/android/tools/r8/internal/qu0;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    .line 27
    :cond_a
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    const-string v0, "LabelNode does not designate a NEW instruction"

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p2

    .line 28
    :cond_b
    new-instance v0, Lcom/android/tools/r8/internal/s2;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal stack map frame value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/hy;)Lcom/android/tools/r8/internal/fy;
    .locals 7

    .line 73
    new-instance v0, Lcom/android/tools/r8/internal/fy;

    .line 74
    iget v1, p1, Lcom/android/tools/r8/internal/fy;->c:I

    iget-object v2, p1, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/fy;-><init>(II)V

    .line 75
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/fy;)Lcom/android/tools/r8/internal/fy;

    .line 76
    iget-object p1, p2, Lcom/android/tools/r8/internal/hy;->h:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 77
    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/oc;->l:I

    .line 78
    iget v2, p2, Lcom/android/tools/r8/internal/hy;->g:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x2

    if-eq v2, v4, :cond_5

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    if-eq v2, v5, :cond_2

    const/4 p1, 0x3

    if-eq v2, p1, :cond_9

    const/4 p1, 0x4

    if-ne v2, p1, :cond_1

    goto/16 :goto_2

    .line 79
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/s2;

    iget v0, p2, Lcom/android/tools/r8/internal/hy;->g:I

    .line 80
    const-string v1, "Illegal frame type "

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    if-lez v1, :cond_4

    if-le v1, v4, :cond_3

    add-int/lit8 v2, v1, -0x2

    .line 83
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/fy;->a(I)Lcom/android/tools/r8/internal/ww0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v2

    if-ne v2, v5, :cond_3

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 84
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/s2;

    const-string v0, "Cannot chop more locals than defined"

    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p1

    :cond_5
    move v1, v3

    .line 85
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 86
    invoke-virtual {p0, p2, v2}, Lcom/android/tools/r8/internal/oc;->a(Lcom/android/tools/r8/internal/hy;Ljava/lang/Object;)Lcom/android/tools/r8/internal/c6;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v4

    add-int/2addr v4, v1

    .line 88
    iget v6, v0, Lcom/android/tools/r8/internal/fy;->c:I

    if-gt v4, v6, :cond_8

    add-int/lit8 v4, v1, 0x1

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/fy;->a(ILcom/android/tools/r8/internal/c6;)V

    .line 90
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v2

    if-ne v2, v5, :cond_7

    add-int/lit8 v1, v1, 0x2

    .line 91
    sget-object v2, Lcom/android/tools/r8/internal/d6;->a:Lcom/android/tools/r8/internal/tt0;

    .line 92
    sget-object v2, Lcom/android/tools/r8/internal/c6;->b:Lcom/android/tools/r8/internal/c6;

    .line 93
    invoke-virtual {v0, v4, v2}, Lcom/android/tools/r8/internal/fy;->a(ILcom/android/tools/r8/internal/c6;)V

    goto :goto_1

    :cond_7
    move v1, v4

    goto :goto_1

    .line 94
    :cond_8
    new-instance p1, Lcom/android/tools/r8/internal/s2;

    const-string v0, "Cannot append more locals than maxLocals"

    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_9
    :goto_2
    iput v1, p0, Lcom/android/tools/r8/internal/oc;->l:I

    .line 96
    :goto_3
    iget p1, v0, Lcom/android/tools/r8/internal/fy;->c:I

    if-ge v1, p1, :cond_a

    add-int/lit8 p1, v1, 0x1

    .line 97
    sget-object v2, Lcom/android/tools/r8/internal/d6;->a:Lcom/android/tools/r8/internal/tt0;

    .line 98
    sget-object v2, Lcom/android/tools/r8/internal/c6;->b:Lcom/android/tools/r8/internal/c6;

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/fy;->a(ILcom/android/tools/r8/internal/c6;)V

    move v1, p1

    goto :goto_3

    .line 100
    :cond_a
    iget-object p1, p2, Lcom/android/tools/r8/internal/hy;->i:Ljava/util/ArrayList;

    if-nez p1, :cond_b

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 101
    :cond_b
    iput v3, v0, Lcom/android/tools/r8/internal/fy;->d:I

    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 103
    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/internal/oc;->a(Lcom/android/tools/r8/internal/hy;Ljava/lang/Object;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    goto :goto_4

    :cond_c
    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/oc;->k:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/OD;->j(I)Lcom/android/tools/r8/internal/H;

    move-result-object v0

    .line 32
    iget-object v0, v0, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    :goto_0
    if-eqz v0, :cond_3

    .line 33
    iget v1, v0, Lcom/android/tools/r8/internal/H;->a:I

    if-ltz v1, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    instance-of v1, v0, Lcom/android/tools/r8/internal/hy;

    if-eqz v1, :cond_2

    .line 35
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/r2;->e:[Lcom/android/tools/r8/internal/fy;

    add-int/lit8 p1, p1, 0x1

    .line 36
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-void

    .line 37
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/s2;

    .line 38
    const-string v1, "Expected stack map frame at instruction "

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 39
    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/fy;Z)V
    .locals 8

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/r2;->e:[Lcom/android/tools/r8/internal/fy;

    .line 42
    aget-object v1, v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-nez p3, :cond_0

    .line 43
    invoke-static {p2}, Lcom/android/tools/r8/internal/r2;->a(Lcom/android/tools/r8/internal/fy;)Lcom/android/tools/r8/internal/fy;

    move-result-object p2

    aput-object p2, v0, p1

    return-void

    .line 44
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    .line 45
    const-string p3, "Expected stack map frame at instruction "

    invoke-static {p1, p3}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-direct {p2, v2, p1}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p2

    .line 47
    :cond_1
    iget p3, p2, Lcom/android/tools/r8/internal/fy;->c:I

    .line 48
    iget v0, v1, Lcom/android/tools/r8/internal/fy;->c:I

    if-ne p3, v0, :cond_a

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const-string v4, " and "

    const-string v5, ": "

    if-ge v3, p3, :cond_4

    .line 49
    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/fy;->a(I)Lcom/android/tools/r8/internal/ww0;

    move-result-object v6

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/fy;->a(I)Lcom/android/tools/r8/internal/ww0;

    move-result-object v7

    .line 50
    check-cast v6, Lcom/android/tools/r8/internal/c6;

    check-cast v7, Lcom/android/tools/r8/internal/c6;

    .line 51
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 52
    sget-object v6, Lcom/android/tools/r8/internal/c6;->b:Lcom/android/tools/r8/internal/c6;

    .line 53
    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/fy;->a(I)Lcom/android/tools/r8/internal/ww0;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 54
    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/fy;->a(I)Lcom/android/tools/r8/internal/ww0;

    move-result-object p2

    .line 55
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/fy;->a(I)Lcom/android/tools/r8/internal/ww0;

    move-result-object p3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "incompatible types at local "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :cond_4
    iget p3, p2, Lcom/android/tools/r8/internal/fy;->d:I

    .line 58
    iget v3, v1, Lcom/android/tools/r8/internal/fy;->d:I

    if-eq p3, v3, :cond_5

    .line 59
    const-string p2, "incompatible stack heights"

    goto :goto_2

    :cond_5
    :goto_1
    if-ge v0, p3, :cond_8

    .line 60
    iget-object v3, p2, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    iget v6, p2, Lcom/android/tools/r8/internal/fy;->c:I

    add-int/2addr v6, v0

    aget-object v3, v3, v6

    iget-object v6, v1, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    iget v7, v1, Lcom/android/tools/r8/internal/fy;->c:I

    add-int/2addr v7, v0

    aget-object v6, v6, v7

    .line 61
    check-cast v3, Lcom/android/tools/r8/internal/c6;

    check-cast v6, Lcom/android/tools/r8/internal/c6;

    .line 62
    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 63
    sget-object v3, Lcom/android/tools/r8/internal/c6;->b:Lcom/android/tools/r8/internal/c6;

    .line 64
    :cond_6
    iget-object v6, v1, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    iget v7, v1, Lcom/android/tools/r8/internal/fy;->c:I

    add-int/2addr v7, v0

    aget-object v6, v6, v7

    .line 65
    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 66
    iget-object p3, p2, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    iget p2, p2, Lcom/android/tools/r8/internal/fy;->c:I

    add-int/2addr p2, v0

    aget-object p2, p3, p2

    .line 67
    iget-object p3, v1, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    iget v1, v1, Lcom/android/tools/r8/internal/fy;->c:I

    add-int/2addr v1, v0

    aget-object p3, p3, v1

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "incompatible types at stack item "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move-object p2, v2

    :goto_2
    if-nez p2, :cond_9

    return-void

    .line 69
    :cond_9
    new-instance p3, Lcom/android/tools/r8/internal/s2;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stack map frame incompatible with frame at instruction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-direct {p3, v2, p1}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p3

    .line 72
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final d(Lcom/android/tools/r8/internal/pc;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    iput-object v2, v1, Lcom/android/tools/r8/internal/oc;->k:Lcom/android/tools/r8/internal/OD;

    iget-object v2, v0, Lcom/android/tools/r8/internal/QW;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/tools/r8/internal/tt0;->c(Ljava/lang/String;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/tools/r8/internal/oc;->l:I

    iget v3, v0, Lcom/android/tools/r8/internal/QW;->c:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    sub-int/2addr v2, v5

    iput v2, v1, Lcom/android/tools/r8/internal/oc;->l:I

    :cond_0
    iget-object v2, v1, Lcom/android/tools/r8/internal/r2;->e:[Lcom/android/tools/r8/internal/fy;

    const/4 v3, 0x0

    aget-object v6, v2, v3

    invoke-static {v6}, Lcom/android/tools/r8/internal/r2;->a(Lcom/android/tools/r8/internal/fy;)Lcom/android/tools/r8/internal/fy;

    move-result-object v6

    iget-object v7, v0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v7, Lcom/android/tools/r8/internal/OD;->b:I

    if-ltz v8, :cond_17

    if-nez v8, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    iget-object v7, v7, Lcom/android/tools/r8/internal/OD;->c:Lcom/android/tools/r8/internal/H;

    iget-object v8, v7, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    :goto_0
    const/4 v8, -0x1

    move v11, v3

    move-object v10, v6

    :goto_1
    const-string v12, ": "

    const-string v13, "Error at instruction "

    if-eqz v7, :cond_5

    iget-object v14, v7, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    instance-of v15, v7, Lcom/android/tools/r8/internal/hy;

    if-eqz v15, :cond_2

    :try_start_0
    move-object v9, v7

    check-cast v9, Lcom/android/tools/r8/internal/hy;

    invoke-virtual {v1, v10, v9}, Lcom/android/tools/r8/internal/oc;->a(Lcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/hy;)Lcom/android/tools/r8/internal/fy;

    move-result-object v10
    :try_end_0
    .catch Lcom/android/tools/r8/internal/s2; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v8, 0x1

    :goto_2
    if-gt v9, v11, :cond_2

    iget-object v12, v1, Lcom/android/tools/r8/internal/r2;->e:[Lcom/android/tools/r8/internal/fy;

    aput-object v10, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Lcom/android/tools/r8/internal/s2;

    iget-object v3, v0, Lcom/android/tools/r8/internal/s2;->b:Lcom/android/tools/r8/internal/H;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_2
    iget v7, v7, Lcom/android/tools/r8/internal/H;->a:I

    if-ltz v7, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v15, :cond_4

    :goto_3
    move v8, v11

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move-object v7, v14

    goto :goto_1

    :cond_5
    move v7, v3

    :goto_4
    iget-object v8, v1, Lcom/android/tools/r8/internal/oc;->k:Lcom/android/tools/r8/internal/OD;

    iget v8, v8, Lcom/android/tools/r8/internal/OD;->b:I

    if-ge v7, v8, :cond_16

    aget-object v8, v2, v7

    :try_start_1
    iget-object v9, v0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v9, v7}, Lcom/android/tools/r8/internal/OD;->j(I)Lcom/android/tools/r8/internal/H;

    move-result-object v9
    :try_end_1
    .catch Lcom/android/tools/r8/internal/s2; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    iget v10, v9, Lcom/android/tools/r8/internal/H;->a:I

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/H;->a()I

    move-result v11

    if-eq v11, v4, :cond_11

    const/16 v14, 0xf

    if-eq v11, v14, :cond_11

    const/16 v14, 0xe

    if-ne v11, v14, :cond_6

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/fy;)Lcom/android/tools/r8/internal/fy;

    move-result-object v11

    iget-object v14, v1, Lcom/android/tools/r8/internal/oc;->j:Lcom/android/tools/r8/internal/d6;

    invoke-virtual {v11, v9, v14}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/d6;)V

    instance-of v11, v9, Lcom/android/tools/r8/internal/rL;

    if-eqz v11, :cond_9

    const/16 v11, 0xa8

    if-eq v10, v11, :cond_8

    move-object v11, v9

    check-cast v11, Lcom/android/tools/r8/internal/rL;

    iget-object v14, v1, Lcom/android/tools/r8/internal/oc;->k:Lcom/android/tools/r8/internal/OD;

    iget-object v11, v11, Lcom/android/tools/r8/internal/rL;->g:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v14, v11}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v11

    invoke-virtual {v1, v11, v6, v5}, Lcom/android/tools/r8/internal/oc;->a(ILcom/android/tools/r8/internal/fy;Z)V

    const/16 v11, 0xa7

    if-ne v10, v11, :cond_7

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/internal/oc;->a(I)V

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_d

    :catch_2
    move-exception v0

    goto/16 :goto_e

    :cond_7
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v10, v6, v3}, Lcom/android/tools/r8/internal/oc;->a(ILcom/android/tools/r8/internal/fy;Z)V

    goto/16 :goto_8

    :cond_8
    new-instance v0, Lcom/android/tools/r8/internal/s2;

    const-string v2, "JSR instructions are unsupported"

    invoke-direct {v0, v9, v2}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw v0

    :cond_9
    instance-of v11, v9, Lcom/android/tools/r8/internal/vU;

    if-eqz v11, :cond_b

    move-object v10, v9

    check-cast v10, Lcom/android/tools/r8/internal/vU;

    iget-object v11, v1, Lcom/android/tools/r8/internal/oc;->k:Lcom/android/tools/r8/internal/OD;

    iget-object v14, v10, Lcom/android/tools/r8/internal/vU;->g:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v11, v14}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v11

    invoke-virtual {v1, v11, v6, v5}, Lcom/android/tools/r8/internal/oc;->a(ILcom/android/tools/r8/internal/fy;Z)V

    move v11, v3

    :goto_5
    iget-object v14, v10, Lcom/android/tools/r8/internal/vU;->i:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v11, v14, :cond_a

    iget-object v14, v10, Lcom/android/tools/r8/internal/vU;->i:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/YQ;

    iget-object v15, v1, Lcom/android/tools/r8/internal/oc;->k:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v15, v14}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v14

    invoke-virtual {v1, v14, v6, v5}, Lcom/android/tools/r8/internal/oc;->a(ILcom/android/tools/r8/internal/fy;Z)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/internal/oc;->a(I)V

    goto :goto_8

    :cond_b
    instance-of v11, v9, Lcom/android/tools/r8/internal/wr0;

    if-eqz v11, :cond_d

    move-object v10, v9

    check-cast v10, Lcom/android/tools/r8/internal/wr0;

    iget-object v11, v1, Lcom/android/tools/r8/internal/oc;->k:Lcom/android/tools/r8/internal/OD;

    iget-object v14, v10, Lcom/android/tools/r8/internal/wr0;->i:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v11, v14}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v11

    invoke-virtual {v1, v11, v6, v5}, Lcom/android/tools/r8/internal/oc;->a(ILcom/android/tools/r8/internal/fy;Z)V

    move v11, v3

    :goto_6
    iget-object v14, v10, Lcom/android/tools/r8/internal/wr0;->j:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v11, v14, :cond_c

    iget-object v14, v10, Lcom/android/tools/r8/internal/wr0;->j:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/YQ;

    iget-object v15, v1, Lcom/android/tools/r8/internal/oc;->k:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v15, v14}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v14

    invoke-virtual {v1, v14, v6, v5}, Lcom/android/tools/r8/internal/oc;->a(ILcom/android/tools/r8/internal/fy;Z)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/internal/oc;->a(I)V

    goto :goto_8

    :cond_d
    const/16 v11, 0xa9

    if-eq v10, v11, :cond_10

    const/16 v11, 0xbf

    if-eq v10, v11, :cond_f

    const/16 v11, 0xac

    if-lt v10, v11, :cond_e

    const/16 v11, 0xb1

    if-le v10, v11, :cond_f

    :cond_e
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v10, v6, v3}, Lcom/android/tools/r8/internal/oc;->a(ILcom/android/tools/r8/internal/fy;Z)V

    goto :goto_8

    :cond_f
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/internal/oc;->a(I)V

    goto :goto_8

    :cond_10
    new-instance v0, Lcom/android/tools/r8/internal/s2;

    const-string v2, "RET instructions are unsupported"

    invoke-direct {v0, v9, v2}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_7
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v10, v8, v3}, Lcom/android/tools/r8/internal/oc;->a(ILcom/android/tools/r8/internal/fy;Z)V

    :goto_8
    iget-object v10, v1, Lcom/android/tools/r8/internal/r2;->d:[Ljava/util/List;

    aget-object v10, v10, v7

    if-eqz v10, :cond_13

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/pt0;

    iget-object v14, v11, Lcom/android/tools/r8/internal/pt0;->d:Ljava/lang/String;

    if-nez v14, :cond_12

    const-string v14, "java/lang/Throwable"

    invoke-static {v14}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object v14

    goto :goto_a

    :cond_12
    invoke-static {v14}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object v14

    :goto_a
    invoke-static {v8}, Lcom/android/tools/r8/internal/r2;->a(Lcom/android/tools/r8/internal/fy;)Lcom/android/tools/r8/internal/fy;

    move-result-object v15

    iput v3, v15, Lcom/android/tools/r8/internal/fy;->d:I

    invoke-static {v14}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    iget-object v14, v1, Lcom/android/tools/r8/internal/oc;->k:Lcom/android/tools/r8/internal/OD;

    iget-object v11, v11, Lcom/android/tools/r8/internal/pt0;->c:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v14, v11}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v11

    invoke-virtual {v1, v11, v15, v5}, Lcom/android/tools/r8/internal/oc;->a(ILcom/android/tools/r8/internal/fy;Z)V

    goto :goto_9

    :cond_13
    iget-object v8, v1, Lcom/android/tools/r8/internal/oc;->k:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/OD;->j(I)Lcom/android/tools/r8/internal/H;

    move-result-object v8

    iget-object v8, v8, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    :goto_b
    if-eqz v8, :cond_16

    iget v10, v8, Lcom/android/tools/r8/internal/H;->a:I

    if-ltz v10, :cond_14

    goto :goto_c

    :cond_14
    instance-of v10, v8, Lcom/android/tools/r8/internal/hy;

    if-eqz v10, :cond_15

    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_15
    iget-object v8, v8, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;
    :try_end_2
    .catch Lcom/android/tools/r8/internal/s2; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :catch_3
    move-exception v0

    const/4 v9, 0x0

    :goto_d
    new-instance v2, Lcom/android/tools/r8/internal/s2;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v9, v3, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :goto_e
    new-instance v2, Lcom/android/tools/r8/internal/s2;

    iget-object v3, v0, Lcom/android/tools/r8/internal/s2;->b:Lcom/android/tools/r8/internal/H;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_16
    return-void

    :cond_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
