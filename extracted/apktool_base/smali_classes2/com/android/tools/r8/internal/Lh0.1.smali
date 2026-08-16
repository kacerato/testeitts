.class public final Lcom/android/tools/r8/internal/Lh0;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/Sh0;->e:Lcom/android/tools/r8/internal/Sh0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    .line 6
    sget-object p1, Lcom/android/tools/r8/internal/Sh0;->e:Lcom/android/tools/r8/internal/Sh0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Lh0;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/Sh0;->f:Lcom/android/tools/r8/internal/Kh0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/Sh0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/Sh0;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Lh0;->a(Lcom/android/tools/r8/internal/Sh0;)Lcom/android/tools/r8/internal/Lh0;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 5
    check-cast p2, Lcom/android/tools/r8/internal/Sh0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MJ;->a()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Lh0;->a(Lcom/android/tools/r8/internal/Sh0;)Lcom/android/tools/r8/internal/Lh0;

    .line 8
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Sh0;)Lcom/android/tools/r8/internal/Lh0;
    .locals 4

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/Sh0;->e:Lcom/android/tools/r8/internal/Sh0;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Sh0;->a()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 11
    :pswitch_0
    iget v0, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 13
    :cond_1
    iput v2, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    .line 14
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto/16 :goto_4

    .line 16
    :pswitch_1
    iget v0, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 18
    :cond_2
    iput v2, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    .line 19
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto/16 :goto_4

    .line 21
    :pswitch_2
    iget v0, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 22
    iget-object v0, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 23
    :cond_3
    iput v1, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto/16 :goto_4

    .line 26
    :pswitch_3
    iget v0, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 27
    iget-object v0, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 28
    :cond_4
    iput v1, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto/16 :goto_4

    .line 31
    :pswitch_4
    iget v0, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 32
    iget-object v0, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 33
    :cond_5
    iput v1, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto/16 :goto_4

    .line 36
    :pswitch_5
    iget v0, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    .line 37
    iget-object v0, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 38
    :cond_6
    iput v1, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto/16 :goto_4

    .line 41
    :pswitch_6
    iget v0, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 42
    iget-object v0, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 43
    :cond_7
    iput v1, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    .line 44
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto/16 :goto_4

    .line 46
    :pswitch_7
    iget v0, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    .line 47
    iget-object v0, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 48
    :cond_8
    iput v1, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto/16 :goto_4

    .line 51
    :pswitch_8
    iget v0, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    .line 52
    iget-object v0, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 53
    :cond_9
    iput v1, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto/16 :goto_4

    .line 56
    :pswitch_9
    iget v0, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_a

    .line 57
    iget-object v0, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 58
    :cond_a
    iput v1, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 60
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto/16 :goto_4

    .line 61
    :pswitch_a
    iget v0, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    .line 62
    iget-object v0, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 63
    :cond_b
    iput v1, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 65
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto/16 :goto_4

    .line 66
    :pswitch_b
    iget v0, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    .line 67
    iget-object v0, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 68
    :cond_c
    iput v2, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    .line 69
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 70
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_4

    .line 71
    :pswitch_c
    iget v0, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 72
    iget-object v0, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/internal/Oh0;

    goto :goto_0

    .line 73
    :cond_d
    sget-object v0, Lcom/android/tools/r8/internal/Oh0;->c:Lcom/android/tools/r8/internal/Oh0;

    .line 74
    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    if-ne v2, v1, :cond_e

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 75
    sget-object v3, Lcom/android/tools/r8/internal/Oh0;->c:Lcom/android/tools/r8/internal/Oh0;

    if-eq v2, v3, :cond_e

    .line 76
    check-cast v2, Lcom/android/tools/r8/internal/Oh0;

    .line 77
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Oh0;->a()Lcom/android/tools/r8/internal/Nh0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/Nh0;->a(Lcom/android/tools/r8/internal/Oh0;)Lcom/android/tools/r8/internal/Nh0;

    move-result-object v2

    .line 78
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Nh0;->a(Lcom/android/tools/r8/internal/Oh0;)Lcom/android/tools/r8/internal/Nh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Nh0;->b()Lcom/android/tools/r8/internal/Oh0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    goto :goto_1

    .line 79
    :cond_e
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 80
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 81
    iput v1, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    goto :goto_4

    .line 82
    :pswitch_d
    iget v0, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 83
    iget-object v0, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/internal/Rh0;

    goto :goto_2

    .line 84
    :cond_f
    sget-object v0, Lcom/android/tools/r8/internal/Rh0;->c:Lcom/android/tools/r8/internal/Rh0;

    .line 85
    :goto_2
    iget v2, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    if-ne v2, v1, :cond_10

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 86
    sget-object v3, Lcom/android/tools/r8/internal/Rh0;->c:Lcom/android/tools/r8/internal/Rh0;

    if-eq v2, v3, :cond_10

    .line 87
    check-cast v2, Lcom/android/tools/r8/internal/Rh0;

    .line 88
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Rh0;->a()Lcom/android/tools/r8/internal/Qh0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/Qh0;->a(Lcom/android/tools/r8/internal/Rh0;)Lcom/android/tools/r8/internal/Qh0;

    move-result-object v2

    .line 89
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Qh0;->a(Lcom/android/tools/r8/internal/Rh0;)Lcom/android/tools/r8/internal/Qh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Qh0;->b()Lcom/android/tools/r8/internal/Rh0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    goto :goto_3

    .line 90
    :cond_10
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    .line 91
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 92
    iput v1, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    .line 93
    :goto_4
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Lh0;

    .line 95
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Lh0;

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/Sh0;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Sh0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Sh0;-><init>(Lcom/android/tools/r8/internal/Lh0;)V

    iget v1, p0, Lcom/android/tools/r8/internal/Lh0;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    :cond_2
    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    :cond_3
    const/16 v2, 0xe

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    :cond_4
    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    :cond_5
    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    :cond_6
    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    :cond_7
    const/16 v2, 0x9

    if-ne v1, v2, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    :cond_8
    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    :cond_9
    const/16 v2, 0xb

    if-ne v1, v2, :cond_a

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    :cond_a
    const/16 v2, 0xc

    if-ne v1, v2, :cond_b

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    :cond_b
    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    :cond_c
    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lh0;->c:Ljava/io/Serializable;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    :cond_d
    iput v1, v0, Lcom/android/tools/r8/internal/Sh0;->b:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lh0;->b()Lcom/android/tools/r8/internal/Sh0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Sh0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    throw v0
.end method

.method public final build()Lcom/android/tools/r8/internal/kW;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lh0;->b()Lcom/android/tools/r8/internal/Sh0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Sh0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/android/tools/r8/internal/fW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lh0;->b()Lcom/android/tools/r8/internal/Sh0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Lh0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Sh0;->e:Lcom/android/tools/r8/internal/Sh0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Sh0;->e:Lcom/android/tools/r8/internal/Sh0;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->g0:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->h0:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Sh0;

    const-class v2, Lcom/android/tools/r8/internal/Lh0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Lh0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Lh0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/Sh0;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/Sh0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Lh0;->a(Lcom/android/tools/r8/internal/Sh0;)Lcom/android/tools/r8/internal/Lh0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Lh0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Lh0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/Sh0;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/Sh0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Lh0;->a(Lcom/android/tools/r8/internal/Sh0;)Lcom/android/tools/r8/internal/Lh0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Lh0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Lh0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Lh0;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Lh0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Lh0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Lh0;

    return-object p1
.end method
