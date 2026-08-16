.class public final Lcom/android/tools/r8/internal/Kg0;
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
    iput v0, p0, Lcom/android/tools/r8/internal/Kg0;->b:I

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/Lg0;->e:Lcom/android/tools/r8/internal/Lg0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/tools/r8/internal/Kg0;->b:I

    .line 6
    sget-object p1, Lcom/android/tools/r8/internal/Lg0;->e:Lcom/android/tools/r8/internal/Lg0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Kg0;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/Lg0;->f:Lcom/android/tools/r8/internal/Jg0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/Lg0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/Lg0;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Kg0;->a(Lcom/android/tools/r8/internal/Lg0;)Lcom/android/tools/r8/internal/Kg0;

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
    check-cast p2, Lcom/android/tools/r8/internal/Lg0;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Kg0;->a(Lcom/android/tools/r8/internal/Lg0;)Lcom/android/tools/r8/internal/Kg0;

    .line 8
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Lg0;)Lcom/android/tools/r8/internal/Kg0;
    .locals 4

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/Lg0;->e:Lcom/android/tools/r8/internal/Lg0;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Lg0;->b()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v2, 0x2

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v2, :cond_a

    const/4 v2, 0x4

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_1

    goto/16 :goto_b

    .line 11
    :cond_1
    iget v0, p1, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/kh0;

    goto :goto_0

    .line 13
    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/kh0;->h:Lcom/android/tools/r8/internal/kh0;

    .line 14
    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/Kg0;->b:I

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    .line 15
    sget-object v3, Lcom/android/tools/r8/internal/kh0;->h:Lcom/android/tools/r8/internal/kh0;

    if-eq v2, v3, :cond_3

    .line 16
    check-cast v2, Lcom/android/tools/r8/internal/kh0;

    .line 17
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/kh0;->b()Lcom/android/tools/r8/internal/jh0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/jh0;->a(Lcom/android/tools/r8/internal/kh0;)Lcom/android/tools/r8/internal/jh0;

    move-result-object v2

    .line 18
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/jh0;->a(Lcom/android/tools/r8/internal/kh0;)Lcom/android/tools/r8/internal/jh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jh0;->b()Lcom/android/tools/r8/internal/kh0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    goto :goto_1

    .line 19
    :cond_3
    iput-object v0, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    .line 20
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 21
    iput v1, p0, Lcom/android/tools/r8/internal/Kg0;->b:I

    goto/16 :goto_b

    .line 22
    :cond_4
    iget v0, p1, Lcom/android/tools/r8/internal/Lg0;->b:I

    if-ne v0, v1, :cond_5

    .line 23
    iget-object v0, p1, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/Jh0;

    goto :goto_2

    .line 24
    :cond_5
    sget-object v0, Lcom/android/tools/r8/internal/Jh0;->d:Lcom/android/tools/r8/internal/Jh0;

    .line 25
    :goto_2
    iget v2, p0, Lcom/android/tools/r8/internal/Kg0;->b:I

    if-ne v2, v1, :cond_6

    iget-object v2, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    .line 26
    sget-object v3, Lcom/android/tools/r8/internal/Jh0;->d:Lcom/android/tools/r8/internal/Jh0;

    if-eq v2, v3, :cond_6

    .line 27
    check-cast v2, Lcom/android/tools/r8/internal/Jh0;

    .line 28
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Jh0;->b()Lcom/android/tools/r8/internal/Fh0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/Fh0;->a(Lcom/android/tools/r8/internal/Jh0;)Lcom/android/tools/r8/internal/Fh0;

    move-result-object v2

    .line 29
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Fh0;->a(Lcom/android/tools/r8/internal/Jh0;)Lcom/android/tools/r8/internal/Fh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Fh0;->b()Lcom/android/tools/r8/internal/Jh0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    goto :goto_3

    .line 30
    :cond_6
    iput-object v0, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    .line 31
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 32
    iput v1, p0, Lcom/android/tools/r8/internal/Kg0;->b:I

    goto/16 :goto_b

    .line 33
    :cond_7
    iget v0, p1, Lcom/android/tools/r8/internal/Lg0;->b:I

    if-ne v0, v2, :cond_8

    .line 34
    iget-object v0, p1, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/zg0;

    goto :goto_4

    .line 35
    :cond_8
    sget-object v0, Lcom/android/tools/r8/internal/zg0;->d:Lcom/android/tools/r8/internal/zg0;

    .line 36
    :goto_4
    iget v1, p0, Lcom/android/tools/r8/internal/Kg0;->b:I

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    .line 37
    sget-object v3, Lcom/android/tools/r8/internal/zg0;->d:Lcom/android/tools/r8/internal/zg0;

    if-eq v1, v3, :cond_9

    .line 38
    check-cast v1, Lcom/android/tools/r8/internal/zg0;

    .line 39
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zg0;->b()Lcom/android/tools/r8/internal/vg0;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/vg0;->a(Lcom/android/tools/r8/internal/zg0;)Lcom/android/tools/r8/internal/vg0;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/vg0;->a(Lcom/android/tools/r8/internal/zg0;)Lcom/android/tools/r8/internal/vg0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vg0;->b()Lcom/android/tools/r8/internal/zg0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    goto :goto_5

    .line 41
    :cond_9
    iput-object v0, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    .line 42
    :goto_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 43
    iput v2, p0, Lcom/android/tools/r8/internal/Kg0;->b:I

    goto/16 :goto_b

    .line 44
    :cond_a
    iget v0, p1, Lcom/android/tools/r8/internal/Lg0;->b:I

    if-ne v0, v1, :cond_b

    .line 45
    iget-object v0, p1, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/Ji0;

    goto :goto_6

    .line 46
    :cond_b
    sget-object v0, Lcom/android/tools/r8/internal/Ji0;->d:Lcom/android/tools/r8/internal/Ji0;

    .line 47
    :goto_6
    iget v2, p0, Lcom/android/tools/r8/internal/Kg0;->b:I

    if-ne v2, v1, :cond_c

    iget-object v2, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    .line 48
    sget-object v3, Lcom/android/tools/r8/internal/Ji0;->d:Lcom/android/tools/r8/internal/Ji0;

    if-eq v2, v3, :cond_c

    .line 49
    check-cast v2, Lcom/android/tools/r8/internal/Ji0;

    .line 50
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ji0;->b()Lcom/android/tools/r8/internal/Fi0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/Fi0;->a(Lcom/android/tools/r8/internal/Ji0;)Lcom/android/tools/r8/internal/Fi0;

    move-result-object v2

    .line 51
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Fi0;->a(Lcom/android/tools/r8/internal/Ji0;)Lcom/android/tools/r8/internal/Fi0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Fi0;->b()Lcom/android/tools/r8/internal/Ji0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    goto :goto_7

    .line 52
    :cond_c
    iput-object v0, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    .line 53
    :goto_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 54
    iput v1, p0, Lcom/android/tools/r8/internal/Kg0;->b:I

    goto :goto_b

    .line 55
    :cond_d
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Lg0;->a()Lcom/android/tools/r8/internal/xi0;

    move-result-object v0

    .line 56
    iget v1, p0, Lcom/android/tools/r8/internal/Kg0;->b:I

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    .line 57
    sget-object v3, Lcom/android/tools/r8/internal/xi0;->f:Lcom/android/tools/r8/internal/xi0;

    if-eq v1, v3, :cond_e

    .line 58
    check-cast v1, Lcom/android/tools/r8/internal/xi0;

    .line 59
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xi0;->b()Lcom/android/tools/r8/internal/ti0;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/ti0;->a(Lcom/android/tools/r8/internal/xi0;)Lcom/android/tools/r8/internal/ti0;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/ti0;->a(Lcom/android/tools/r8/internal/xi0;)Lcom/android/tools/r8/internal/ti0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ti0;->b()Lcom/android/tools/r8/internal/xi0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    goto :goto_8

    .line 61
    :cond_e
    iput-object v0, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    .line 62
    :goto_8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 63
    iput v2, p0, Lcom/android/tools/r8/internal/Kg0;->b:I

    goto :goto_b

    .line 64
    :cond_f
    iget v0, p1, Lcom/android/tools/r8/internal/Lg0;->b:I

    if-ne v0, v1, :cond_10

    .line 65
    iget-object v0, p1, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/Fg0;

    goto :goto_9

    .line 66
    :cond_10
    sget-object v0, Lcom/android/tools/r8/internal/Fg0;->g:Lcom/android/tools/r8/internal/Fg0;

    .line 67
    :goto_9
    iget v2, p0, Lcom/android/tools/r8/internal/Kg0;->b:I

    if-ne v2, v1, :cond_11

    iget-object v2, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    .line 68
    sget-object v3, Lcom/android/tools/r8/internal/Fg0;->g:Lcom/android/tools/r8/internal/Fg0;

    if-eq v2, v3, :cond_11

    .line 69
    check-cast v2, Lcom/android/tools/r8/internal/Fg0;

    .line 70
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Fg0;->a()Lcom/android/tools/r8/internal/Bg0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/Bg0;->a(Lcom/android/tools/r8/internal/Fg0;)Lcom/android/tools/r8/internal/Bg0;

    move-result-object v2

    .line 71
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Bg0;->a(Lcom/android/tools/r8/internal/Fg0;)Lcom/android/tools/r8/internal/Bg0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Bg0;->b()Lcom/android/tools/r8/internal/Fg0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    goto :goto_a

    .line 72
    :cond_11
    iput-object v0, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    .line 73
    :goto_a
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 74
    iput v1, p0, Lcom/android/tools/r8/internal/Kg0;->b:I

    .line 75
    :goto_b
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Kg0;

    .line 77
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Kg0;

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/Lg0;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Lg0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Lg0;-><init>(Lcom/android/tools/r8/internal/Kg0;)V

    iget v1, p0, Lcom/android/tools/r8/internal/Kg0;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    :cond_3
    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    :cond_4
    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/Kg0;->c:Lcom/android/tools/r8/internal/wz;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    :cond_5
    iput v1, v0, Lcom/android/tools/r8/internal/Lg0;->b:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kg0;->b()Lcom/android/tools/r8/internal/Lg0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Lg0;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kg0;->b()Lcom/android/tools/r8/internal/Lg0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Lg0;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kg0;->b()Lcom/android/tools/r8/internal/Lg0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Kg0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Lg0;->e:Lcom/android/tools/r8/internal/Lg0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Lg0;->e:Lcom/android/tools/r8/internal/Lg0;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->O:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->P:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Lg0;

    const-class v2, Lcom/android/tools/r8/internal/Kg0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Kg0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Kg0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/Lg0;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/Lg0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kg0;->a(Lcom/android/tools/r8/internal/Lg0;)Lcom/android/tools/r8/internal/Kg0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Kg0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Kg0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/Lg0;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/Lg0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kg0;->a(Lcom/android/tools/r8/internal/Lg0;)Lcom/android/tools/r8/internal/Kg0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Kg0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Kg0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Kg0;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Kg0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Kg0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Kg0;

    return-object p1
.end method
