.class public abstract Lcom/android/tools/r8/internal/Mb0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/tools/r8/internal/O80;Lcom/android/tools/r8/internal/VL;)Lcom/android/tools/r8/internal/GP;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget v0, p0, Lcom/android/tools/r8/internal/O80;->d:I

    .line 76
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Mb0;->a(Lcom/android/tools/r8/internal/VL;I)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object p0, p0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    .line 78
    const-string v1, "getArgumentList(...)"

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 81
    check-cast v2, Lcom/android/tools/r8/internal/M80;

    .line 82
    iget-object v3, v2, Lcom/android/tools/r8/internal/M80;->e:Lcom/android/tools/r8/internal/L80;

    .line 83
    const-string v4, "getValue(...)"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, p1}, Lcom/android/tools/r8/internal/Mb0;->a(Lcom/android/tools/r8/internal/L80;Lcom/android/tools/r8/internal/VL;)Lcom/android/tools/r8/internal/JP;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 84
    iget v2, v2, Lcom/android/tools/r8/internal/M80;->d:I

    .line 85
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    new-instance v4, Lcom/android/tools/r8/internal/p50;

    invoke-direct {v4, v2, v3}, Lcom/android/tools/r8/internal/p50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_2
    invoke-static {v1}, Lcom/android/tools/r8/internal/uV;->a(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    .line 89
    new-instance p1, Lcom/android/tools/r8/internal/GP;

    invoke-direct {p1, v0, p0}, Lcom/android/tools/r8/internal/GP;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p1
.end method

.method public static final a(Lcom/android/tools/r8/internal/L80;Lcom/android/tools/r8/internal/VL;)Lcom/android/tools/r8/internal/JP;
    .locals 5

    const-string v0, "strings"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/yx;->O:Lcom/android/tools/r8/internal/vx;

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->n:I

    .line 3
    iget v0, v0, Lcom/android/tools/r8/internal/xx;->a:I

    const/4 v2, 0x1

    shl-int v0, v2, v0

    and-int/2addr v0, v1

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/L80;->d:Lcom/android/tools/r8/internal/K80;

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/Lb0;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget v1, v0, p1

    :goto_0
    if-eq v1, v2, :cond_4

    const/4 p1, 0x2

    if-eq v1, p1, :cond_3

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    const/4 p1, 0x4

    if-ne v1, p1, :cond_1

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/YP;

    .line 7
    iget-wide v0, p0, Lcom/android/tools/r8/internal/L80;->e:J

    .line 8
    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/YP;-><init>(J)V

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot read value of unsigned type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/android/tools/r8/internal/L80;->d:Lcom/android/tools/r8/internal/K80;

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/XP;

    .line 14
    iget-wide v0, p0, Lcom/android/tools/r8/internal/L80;->e:J

    long-to-int p0, v0

    .line 15
    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/XP;-><init>(I)V

    return-object p1

    .line 16
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/ZP;

    .line 17
    iget-wide v0, p0, Lcom/android/tools/r8/internal/L80;->e:J

    long-to-int p0, v0

    int-to-short p0, p0

    .line 18
    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/ZP;-><init>(S)V

    return-object p1

    .line 19
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/WP;

    .line 20
    iget-wide v0, p0, Lcom/android/tools/r8/internal/L80;->e:J

    long-to-int p0, v0

    int-to-byte p0, p0

    .line 21
    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/WP;-><init>(B)V

    return-object p1

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/L80;->d:Lcom/android/tools/r8/internal/K80;

    if-nez v0, :cond_6

    goto :goto_1

    .line 23
    :cond_6
    sget-object v1, Lcom/android/tools/r8/internal/Lb0;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v1, v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lcom/android/tools/r8/internal/C00;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw p0

    .line 24
    :pswitch_1
    iget-object p0, p0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    .line 25
    const-string v0, "getArrayElementList(...)"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/tools/r8/internal/L80;

    .line 29
    invoke-static {v1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/Mb0;->a(Lcom/android/tools/r8/internal/L80;Lcom/android/tools/r8/internal/VL;)Lcom/android/tools/r8/internal/JP;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 31
    :cond_8
    new-instance p0, Lcom/android/tools/r8/internal/JP$a;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/JP$a;-><init>(Ljava/util/ArrayList;)V

    return-object p0

    .line 32
    :pswitch_2
    new-instance v0, Lcom/android/tools/r8/internal/HP;

    .line 33
    iget-object p0, p0, Lcom/android/tools/r8/internal/L80;->k:Lcom/android/tools/r8/internal/O80;

    .line 34
    const-string v1, "getAnnotation(...)"

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Mb0;->a(Lcom/android/tools/r8/internal/O80;Lcom/android/tools/r8/internal/VL;)Lcom/android/tools/r8/internal/GP;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/HP;-><init>(Lcom/android/tools/r8/internal/GP;)V

    return-object v0

    .line 35
    :pswitch_3
    new-instance v0, Lcom/android/tools/r8/internal/OP;

    .line 36
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->i:I

    .line 37
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/Mb0;->a(Lcom/android/tools/r8/internal/VL;I)Ljava/lang/String;

    move-result-object v1

    .line 38
    iget p0, p0, Lcom/android/tools/r8/internal/L80;->j:I

    .line 39
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/r8/internal/OP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 40
    :pswitch_4
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->i:I

    .line 41
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Mb0;->a(Lcom/android/tools/r8/internal/VL;I)Ljava/lang/String;

    move-result-object p1

    .line 42
    iget p0, p0, Lcom/android/tools/r8/internal/L80;->m:I

    if-nez p0, :cond_9

    .line 43
    new-instance p0, Lcom/android/tools/r8/internal/RP;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/RP;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 44
    :cond_9
    new-instance v0, Lcom/android/tools/r8/internal/IP;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/IP;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 45
    :pswitch_5
    new-instance v0, Lcom/android/tools/r8/internal/VP;

    .line 46
    iget p0, p0, Lcom/android/tools/r8/internal/L80;->h:I

    .line 47
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/VP;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 48
    :pswitch_6
    new-instance p1, Lcom/android/tools/r8/internal/KP;

    .line 49
    iget-wide v0, p0, Lcom/android/tools/r8/internal/L80;->e:J

    const-wide/16 v3, 0x0

    cmp-long p0, v0, v3

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    .line 50
    :goto_3
    invoke-direct {p1, v2}, Lcom/android/tools/r8/internal/KP;-><init>(Z)V

    return-object p1

    .line 51
    :pswitch_7
    new-instance p1, Lcom/android/tools/r8/internal/NP;

    .line 52
    iget-wide v0, p0, Lcom/android/tools/r8/internal/L80;->g:D

    .line 53
    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/NP;-><init>(D)V

    return-object p1

    .line 54
    :pswitch_8
    new-instance p1, Lcom/android/tools/r8/internal/PP;

    .line 55
    iget p0, p0, Lcom/android/tools/r8/internal/L80;->f:F

    .line 56
    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/PP;-><init>(F)V

    return-object p1

    .line 57
    :pswitch_9
    new-instance p1, Lcom/android/tools/r8/internal/MP;

    .line 58
    iget-wide v0, p0, Lcom/android/tools/r8/internal/L80;->e:J

    long-to-int p0, v0

    int-to-char p0, p0

    .line 59
    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/MP;-><init>(C)V

    return-object p1

    .line 60
    :pswitch_a
    new-instance p1, Lcom/android/tools/r8/internal/TP;

    .line 61
    iget-wide v0, p0, Lcom/android/tools/r8/internal/L80;->e:J

    .line 62
    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/TP;-><init>(J)V

    return-object p1

    .line 63
    :pswitch_b
    new-instance p1, Lcom/android/tools/r8/internal/QP;

    .line 64
    iget-wide v0, p0, Lcom/android/tools/r8/internal/L80;->e:J

    long-to-int p0, v0

    .line 65
    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/QP;-><init>(I)V

    return-object p1

    .line 66
    :pswitch_c
    new-instance p1, Lcom/android/tools/r8/internal/UP;

    .line 67
    iget-wide v0, p0, Lcom/android/tools/r8/internal/L80;->e:J

    long-to-int p0, v0

    int-to-short p0, p0

    .line 68
    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/UP;-><init>(S)V

    return-object p1

    .line 69
    :pswitch_d
    new-instance p1, Lcom/android/tools/r8/internal/LP;

    .line 70
    iget-wide v0, p0, Lcom/android/tools/r8/internal/L80;->e:J

    long-to-int p0, v0

    int-to-byte p0, p0

    .line 71
    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/LP;-><init>(B)V

    return-object p1

    :pswitch_e
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final a(Lcom/android/tools/r8/internal/VL;I)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object p0, p0, Lcom/android/tools/r8/internal/VL;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 74
    const-string p0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method
