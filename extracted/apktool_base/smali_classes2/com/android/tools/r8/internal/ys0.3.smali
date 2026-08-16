.class public final Lcom/android/tools/r8/internal/ys0;
.super Lcom/android/tools/r8/internal/Q2;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Hr0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Q2;Lcom/android/tools/r8/internal/Hr0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Q2;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/ys0;->b:Lcom/android/tools/r8/internal/Hr0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/android/tools/r8/internal/ys0;->b:Lcom/android/tools/r8/internal/Hr0;

    .line 103
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hr0;->b(Ljava/lang/String;)V

    .line 104
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hr0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Hr0;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/android/tools/r8/internal/ys0;

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/ys0;-><init>(Lcom/android/tools/r8/internal/Q2;Lcom/android/tools/r8/internal/Hr0;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/tools/r8/internal/ys0;->b:Lcom/android/tools/r8/internal/Hr0;

    .line 95
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hr0;->b(Ljava/lang/String;)V

    .line 96
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 98
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hr0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Hr0;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/android/tools/r8/internal/ys0;

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/ys0;-><init>(Lcom/android/tools/r8/internal/Q2;Lcom/android/tools/r8/internal/Hr0;)V

    return-object v1
.end method

.method public final a()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/tools/r8/internal/ys0;->b:Lcom/android/tools/r8/internal/Hr0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q2;->a:Lcom/android/tools/r8/internal/Q2;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Q2;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ys0;->b:Lcom/android/tools/r8/internal/Hr0;

    .line 2
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Hr0;->b(Ljava/lang/String;)V

    .line 3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/E70;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 6
    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/tt0;

    if-eqz v1, :cond_1

    .line 7
    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/tt0;

    .line 8
    iget-object v2, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/tt0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".class"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 9
    :cond_1
    instance-of v1, p1, Ljava/lang/Byte;

    const-string v2, "(byte)"

    if-eqz v1, :cond_2

    .line 10
    move-object v1, p1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 11
    iget-object v3, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 12
    :cond_2
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 13
    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 14
    iget-object v2, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 15
    :cond_3
    instance-of v1, p1, Ljava/lang/Short;

    const-string v3, "(short)"

    if-eqz v1, :cond_4

    .line 16
    move-object v1, p1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 17
    iget-object v2, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 18
    :cond_4
    instance-of v1, p1, Ljava/lang/Character;

    const-string v4, "(char)"

    if-eqz v1, :cond_5

    .line 19
    move-object v1, p1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 20
    iget-object v2, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 21
    :cond_5
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 22
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 23
    iget-object v2, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 24
    :cond_6
    instance-of v1, p1, Ljava/lang/Float;

    const/16 v5, 0x46

    if-eqz v1, :cond_7

    .line 25
    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 26
    iget-object v2, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 27
    :cond_7
    instance-of v1, p1, Ljava/lang/Long;

    const/16 v6, 0x4c

    if-eqz v1, :cond_8

    .line 28
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 29
    iget-object v3, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 30
    :cond_8
    instance-of v1, p1, Ljava/lang/Double;

    const/16 v7, 0x44

    if-eqz v1, :cond_9

    .line 31
    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 32
    iget-object v3, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 33
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 34
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v8, 0x7b

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    instance-of v1, p1, [B

    const/4 v8, 0x0

    if-eqz v1, :cond_a

    .line 36
    move-object v1, p1

    check-cast v1, [B

    .line 37
    :goto_0
    array-length v3, v1

    if-ge v8, v3, :cond_11

    .line 38
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/Hr0;->b(I)V

    .line 39
    aget-byte v3, v1, v8

    .line 40
    iget-object v4, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 41
    :cond_a
    instance-of v1, p1, [Z

    if-eqz v1, :cond_b

    .line 42
    move-object v1, p1

    check-cast v1, [Z

    .line 43
    :goto_1
    array-length v2, v1

    if-ge v8, v2, :cond_11

    .line 44
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/Hr0;->b(I)V

    .line 45
    aget-boolean v2, v1, v8

    .line 46
    iget-object v3, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 47
    :cond_b
    instance-of v1, p1, [S

    if-eqz v1, :cond_c

    .line 48
    move-object v1, p1

    check-cast v1, [S

    .line 49
    :goto_2
    array-length v2, v1

    if-ge v8, v2, :cond_11

    .line 50
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/Hr0;->b(I)V

    .line 51
    aget-short v2, v1, v8

    .line 52
    iget-object v4, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 53
    :cond_c
    instance-of v1, p1, [C

    if-eqz v1, :cond_d

    .line 54
    move-object v1, p1

    check-cast v1, [C

    .line 55
    :goto_3
    array-length v2, v1

    if-ge v8, v2, :cond_11

    .line 56
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/Hr0;->b(I)V

    .line 57
    aget-char v2, v1, v8

    .line 58
    iget-object v3, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 59
    :cond_d
    instance-of v1, p1, [I

    if-eqz v1, :cond_e

    .line 60
    move-object v1, p1

    check-cast v1, [I

    .line 61
    :goto_4
    array-length v2, v1

    if-ge v8, v2, :cond_11

    .line 62
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/Hr0;->b(I)V

    .line 63
    aget v2, v1, v8

    .line 64
    iget-object v3, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 65
    :cond_e
    instance-of v1, p1, [J

    if-eqz v1, :cond_f

    .line 66
    move-object v1, p1

    check-cast v1, [J

    .line 67
    :goto_5
    array-length v2, v1

    if-ge v8, v2, :cond_11

    .line 68
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/Hr0;->b(I)V

    .line 69
    aget-wide v2, v1, v8

    .line 70
    iget-object v4, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 71
    :cond_f
    instance-of v1, p1, [F

    if-eqz v1, :cond_10

    .line 72
    move-object v1, p1

    check-cast v1, [F

    .line 73
    :goto_6
    array-length v2, v1

    if-ge v8, v2, :cond_11

    .line 74
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/Hr0;->b(I)V

    .line 75
    aget v2, v1, v8

    .line 76
    iget-object v3, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 77
    :cond_10
    instance-of v1, p1, [D

    if-eqz v1, :cond_11

    .line 78
    move-object v1, p1

    check-cast v1, [D

    .line 79
    :goto_7
    array-length v2, v1

    if-ge v8, v2, :cond_11

    .line 80
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/Hr0;->b(I)V

    .line 81
    aget-wide v2, v1, v8

    .line 82
    iget-object v4, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 83
    :cond_11
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    :cond_12
    :goto_8
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q2;->a:Lcom/android/tools/r8/internal/Q2;

    if-eqz v0, :cond_13

    .line 86
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/tools/r8/internal/ys0;->b:Lcom/android/tools/r8/internal/Hr0;

    .line 88
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hr0;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 90
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q2;->a:Lcom/android/tools/r8/internal/Q2;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
