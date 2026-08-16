.class public final Lcom/android/tools/r8/internal/gh0;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Lcom/android/tools/r8/internal/wz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    .line 6
    sget-object p1, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/gh0;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/hh0;->f:Lcom/android/tools/r8/internal/fh0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/hh0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/hh0;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/hh0;)Lcom/android/tools/r8/internal/gh0;

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
    check-cast p2, Lcom/android/tools/r8/internal/hh0;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/hh0;)Lcom/android/tools/r8/internal/gh0;

    .line 8
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Zh0;)Lcom/android/tools/r8/internal/gh0;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/hh0;)Lcom/android/tools/r8/internal/gh0;
    .locals 4

    .line 12
    sget-object v0, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hh0;->c()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_c

    .line 14
    :pswitch_0
    iget v0, p1, Lcom/android/tools/r8/internal/hh0;->b:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 15
    iget-object v0, p1, Lcom/android/tools/r8/internal/hh0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/Sh0;

    goto :goto_0

    .line 16
    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/Sh0;->e:Lcom/android/tools/r8/internal/Sh0;

    .line 17
    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    .line 18
    sget-object v3, Lcom/android/tools/r8/internal/Sh0;->e:Lcom/android/tools/r8/internal/Sh0;

    if-eq v2, v3, :cond_2

    .line 19
    check-cast v2, Lcom/android/tools/r8/internal/Sh0;

    .line 20
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Sh0;->b()Lcom/android/tools/r8/internal/Lh0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/Lh0;->a(Lcom/android/tools/r8/internal/Sh0;)Lcom/android/tools/r8/internal/Lh0;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Lh0;->a(Lcom/android/tools/r8/internal/Sh0;)Lcom/android/tools/r8/internal/Lh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Lh0;->b()Lcom/android/tools/r8/internal/Sh0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    goto :goto_1

    .line 22
    :cond_2
    iput-object v0, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    .line 23
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 24
    iput v1, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    goto/16 :goto_c

    .line 25
    :pswitch_1
    iget v0, p1, Lcom/android/tools/r8/internal/hh0;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 26
    iget-object v0, p1, Lcom/android/tools/r8/internal/hh0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/eh0;

    goto :goto_2

    .line 27
    :cond_3
    sget-object v0, Lcom/android/tools/r8/internal/eh0;->c:Lcom/android/tools/r8/internal/eh0;

    .line 28
    :goto_2
    iget v2, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    .line 29
    sget-object v3, Lcom/android/tools/r8/internal/eh0;->c:Lcom/android/tools/r8/internal/eh0;

    if-eq v2, v3, :cond_4

    .line 30
    check-cast v2, Lcom/android/tools/r8/internal/eh0;

    .line 31
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/eh0;->a()Lcom/android/tools/r8/internal/dh0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/dh0;->a(Lcom/android/tools/r8/internal/eh0;)Lcom/android/tools/r8/internal/dh0;

    move-result-object v2

    .line 32
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/dh0;->a(Lcom/android/tools/r8/internal/eh0;)Lcom/android/tools/r8/internal/dh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dh0;->b()Lcom/android/tools/r8/internal/eh0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    goto :goto_3

    .line 33
    :cond_4
    iput-object v0, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    .line 34
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 35
    iput v1, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    goto/16 :goto_c

    .line 36
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hh0;->a()Lcom/android/tools/r8/internal/bh0;

    move-result-object v0

    .line 37
    iget v1, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    .line 38
    sget-object v3, Lcom/android/tools/r8/internal/bh0;->e:Lcom/android/tools/r8/internal/bh0;

    if-eq v1, v3, :cond_5

    .line 39
    check-cast v1, Lcom/android/tools/r8/internal/bh0;

    .line 40
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/bh0;->b()Lcom/android/tools/r8/internal/Zg0;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/Zg0;->a(Lcom/android/tools/r8/internal/bh0;)Lcom/android/tools/r8/internal/Zg0;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Zg0;->a(Lcom/android/tools/r8/internal/bh0;)Lcom/android/tools/r8/internal/Zg0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zg0;->b()Lcom/android/tools/r8/internal/bh0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    goto :goto_4

    .line 42
    :cond_5
    iput-object v0, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    .line 43
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 44
    iput v2, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    goto/16 :goto_c

    .line 45
    :pswitch_3
    iget v0, p1, Lcom/android/tools/r8/internal/hh0;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 46
    iget-object v0, p1, Lcom/android/tools/r8/internal/hh0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/Pi0;

    goto :goto_5

    .line 47
    :cond_6
    sget-object v0, Lcom/android/tools/r8/internal/Pi0;->e:Lcom/android/tools/r8/internal/Pi0;

    .line 48
    :goto_5
    iget v2, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    if-ne v2, v1, :cond_7

    iget-object v2, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    .line 49
    sget-object v3, Lcom/android/tools/r8/internal/Pi0;->e:Lcom/android/tools/r8/internal/Pi0;

    if-eq v2, v3, :cond_7

    .line 50
    check-cast v2, Lcom/android/tools/r8/internal/Pi0;

    .line 51
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Pi0;->a()Lcom/android/tools/r8/internal/Li0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/Li0;->a(Lcom/android/tools/r8/internal/Pi0;)Lcom/android/tools/r8/internal/Li0;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Li0;->a(Lcom/android/tools/r8/internal/Pi0;)Lcom/android/tools/r8/internal/Li0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Li0;->b()Lcom/android/tools/r8/internal/Pi0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    goto :goto_6

    .line 53
    :cond_7
    iput-object v0, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    .line 54
    :goto_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 55
    iput v1, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    goto/16 :goto_c

    .line 56
    :pswitch_4
    iget v0, p1, Lcom/android/tools/r8/internal/hh0;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 57
    iget-object v0, p1, Lcom/android/tools/r8/internal/hh0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/Vh0;

    goto :goto_7

    .line 58
    :cond_8
    sget-object v0, Lcom/android/tools/r8/internal/Vh0;->d:Lcom/android/tools/r8/internal/Vh0;

    .line 59
    :goto_7
    iget v2, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    if-ne v2, v1, :cond_9

    iget-object v2, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    .line 60
    sget-object v3, Lcom/android/tools/r8/internal/Vh0;->d:Lcom/android/tools/r8/internal/Vh0;

    if-eq v2, v3, :cond_9

    .line 61
    check-cast v2, Lcom/android/tools/r8/internal/Vh0;

    .line 62
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Vh0;->a()Lcom/android/tools/r8/internal/Uh0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/Uh0;->a(Lcom/android/tools/r8/internal/Vh0;)Lcom/android/tools/r8/internal/Uh0;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Uh0;->a(Lcom/android/tools/r8/internal/Vh0;)Lcom/android/tools/r8/internal/Uh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Uh0;->b()Lcom/android/tools/r8/internal/Vh0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    goto :goto_8

    .line 64
    :cond_9
    iput-object v0, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    .line 65
    :goto_8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 66
    iput v1, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    goto :goto_c

    .line 67
    :pswitch_5
    iget v0, p1, Lcom/android/tools/r8/internal/hh0;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 68
    iget-object v0, p1, Lcom/android/tools/r8/internal/hh0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/oi0;

    goto :goto_9

    .line 69
    :cond_a
    sget-object v0, Lcom/android/tools/r8/internal/oi0;->d:Lcom/android/tools/r8/internal/oi0;

    .line 70
    :goto_9
    iget v2, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    if-ne v2, v1, :cond_b

    iget-object v2, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    .line 71
    sget-object v3, Lcom/android/tools/r8/internal/oi0;->d:Lcom/android/tools/r8/internal/oi0;

    if-eq v2, v3, :cond_b

    .line 72
    check-cast v2, Lcom/android/tools/r8/internal/oi0;

    .line 73
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/oi0;->a()Lcom/android/tools/r8/internal/ni0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/ni0;->a(Lcom/android/tools/r8/internal/oi0;)Lcom/android/tools/r8/internal/ni0;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/ni0;->a(Lcom/android/tools/r8/internal/oi0;)Lcom/android/tools/r8/internal/ni0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ni0;->b()Lcom/android/tools/r8/internal/oi0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    goto :goto_a

    .line 75
    :cond_b
    iput-object v0, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    .line 76
    :goto_a
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 77
    iput v1, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    goto :goto_c

    .line 78
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hh0;->b()Lcom/android/tools/r8/internal/Zh0;

    move-result-object v0

    .line 79
    iget v1, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    .line 80
    sget-object v3, Lcom/android/tools/r8/internal/Zh0;->j:Lcom/android/tools/r8/internal/Zh0;

    if-eq v1, v3, :cond_c

    .line 81
    check-cast v1, Lcom/android/tools/r8/internal/Zh0;

    .line 82
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Zh0;->a()Lcom/android/tools/r8/internal/Xh0;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/Xh0;->a(Lcom/android/tools/r8/internal/Zh0;)Lcom/android/tools/r8/internal/Xh0;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Xh0;->a(Lcom/android/tools/r8/internal/Zh0;)Lcom/android/tools/r8/internal/Xh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Xh0;->b()Lcom/android/tools/r8/internal/Zh0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    goto :goto_b

    .line 84
    :cond_c
    iput-object v0, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    .line 85
    :goto_b
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 86
    iput v2, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    .line 87
    :goto_c
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/gh0;

    .line 89
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    check-cast p1, Lcom/android/tools/r8/internal/gh0;

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/hh0;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gh0;->c()Lcom/android/tools/r8/internal/hh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hh0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gh0;->b()Lcom/android/tools/r8/internal/hh0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gh0;->b()Lcom/android/tools/r8/internal/hh0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/android/tools/r8/internal/fW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gh0;->c()Lcom/android/tools/r8/internal/hh0;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/hh0;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/hh0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/hh0;-><init>(Lcom/android/tools/r8/internal/gh0;)V

    iget v1, p0, Lcom/android/tools/r8/internal/gh0;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    iput-object v2, v0, Lcom/android/tools/r8/internal/hh0;->c:Lcom/android/tools/r8/internal/kW;

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    iput-object v2, v0, Lcom/android/tools/r8/internal/hh0;->c:Lcom/android/tools/r8/internal/kW;

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    iput-object v2, v0, Lcom/android/tools/r8/internal/hh0;->c:Lcom/android/tools/r8/internal/kW;

    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    iput-object v2, v0, Lcom/android/tools/r8/internal/hh0;->c:Lcom/android/tools/r8/internal/kW;

    :cond_3
    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    iput-object v2, v0, Lcom/android/tools/r8/internal/hh0;->c:Lcom/android/tools/r8/internal/kW;

    :cond_4
    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    iput-object v2, v0, Lcom/android/tools/r8/internal/hh0;->c:Lcom/android/tools/r8/internal/kW;

    :cond_5
    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/tools/r8/internal/gh0;->c:Lcom/android/tools/r8/internal/wz;

    iput-object v2, v0, Lcom/android/tools/r8/internal/hh0;->c:Lcom/android/tools/r8/internal/kW;

    :cond_6
    iput v1, v0, Lcom/android/tools/r8/internal/hh0;->b:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/gh0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->M:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->N:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/hh0;

    const-class v2, Lcom/android/tools/r8/internal/gh0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/gh0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/hh0;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/hh0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/hh0;)Lcom/android/tools/r8/internal/gh0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/gh0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/hh0;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/hh0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/hh0;)Lcom/android/tools/r8/internal/gh0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/gh0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/gh0;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/gh0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/gh0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/gh0;

    return-object p1
.end method
