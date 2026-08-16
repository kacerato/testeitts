.class public final Lcom/android/tools/r8/internal/Lg0;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final e:Lcom/android/tools/r8/internal/Lg0;

.field public static final f:Lcom/android/tools/r8/internal/Jg0;


# instance fields
.field public b:I

.field public c:Lcom/android/tools/r8/internal/kW;

.field public d:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Lg0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Lg0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Lg0;->e:Lcom/android/tools/r8/internal/Lg0;

    new-instance v0, Lcom/android/tools/r8/internal/Jg0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jg0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Lg0;->f:Lcom/android/tools/r8/internal/Jg0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/android/tools/r8/internal/Lg0;->d:B

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 6

    .line 7
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Lg0;-><init>()V

    .line 8
    invoke-static {p2}, Lcom/android/tools/r8/internal/Ng;->a(Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_14

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_10

    const/16 v4, 0x12

    if-eq v2, v4, :cond_d

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_a

    const/16 v4, 0x22

    if-eq v2, v4, :cond_7

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x32

    if-eq v2, v4, :cond_1

    .line 10
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    .line 11
    :cond_1
    iget v2, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v2, Lcom/android/tools/r8/internal/kh0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kh0;->b()Lcom/android/tools/r8/internal/jh0;

    move-result-object v5

    .line 13
    :cond_2
    sget-object v2, Lcom/android/tools/r8/internal/kh0;->i:Lcom/android/tools/r8/internal/ih0;

    .line 14
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    if-eqz v5, :cond_3

    .line 15
    check-cast v2, Lcom/android/tools/r8/internal/kh0;

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/internal/jh0;->a(Lcom/android/tools/r8/internal/kh0;)Lcom/android/tools/r8/internal/jh0;

    .line 16
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/jh0;->b()Lcom/android/tools/r8/internal/kh0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    .line 17
    :cond_3
    iput v3, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    goto :goto_0

    .line 18
    :cond_4
    iget v2, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 19
    iget-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v2, Lcom/android/tools/r8/internal/Jh0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Jh0;->b()Lcom/android/tools/r8/internal/Fh0;

    move-result-object v5

    .line 20
    :cond_5
    sget-object v2, Lcom/android/tools/r8/internal/Jh0;->e:Lcom/android/tools/r8/internal/Dh0;

    .line 21
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    if-eqz v5, :cond_6

    .line 22
    check-cast v2, Lcom/android/tools/r8/internal/Jh0;

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/internal/Fh0;->a(Lcom/android/tools/r8/internal/Jh0;)Lcom/android/tools/r8/internal/Fh0;

    .line 23
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Fh0;->b()Lcom/android/tools/r8/internal/Jh0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    .line 24
    :cond_6
    iput v3, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    goto :goto_0

    .line 25
    :cond_7
    iget v2, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 26
    iget-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v2, Lcom/android/tools/r8/internal/zg0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zg0;->b()Lcom/android/tools/r8/internal/vg0;

    move-result-object v5

    .line 27
    :cond_8
    sget-object v2, Lcom/android/tools/r8/internal/zg0;->e:Lcom/android/tools/r8/internal/ug0;

    .line 28
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    if-eqz v5, :cond_9

    .line 29
    check-cast v2, Lcom/android/tools/r8/internal/zg0;

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/internal/vg0;->a(Lcom/android/tools/r8/internal/zg0;)Lcom/android/tools/r8/internal/vg0;

    .line 30
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/vg0;->b()Lcom/android/tools/r8/internal/zg0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    .line 31
    :cond_9
    iput v3, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    goto/16 :goto_0

    .line 32
    :cond_a
    iget v2, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    .line 33
    iget-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v2, Lcom/android/tools/r8/internal/Ji0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ji0;->b()Lcom/android/tools/r8/internal/Fi0;

    move-result-object v5

    .line 34
    :cond_b
    sget-object v2, Lcom/android/tools/r8/internal/Ji0;->e:Lcom/android/tools/r8/internal/Ei0;

    .line 35
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    if-eqz v5, :cond_c

    .line 36
    check-cast v2, Lcom/android/tools/r8/internal/Ji0;

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/internal/Fi0;->a(Lcom/android/tools/r8/internal/Ji0;)Lcom/android/tools/r8/internal/Fi0;

    .line 37
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Fi0;->b()Lcom/android/tools/r8/internal/Ji0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    .line 38
    :cond_c
    iput v3, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    goto/16 :goto_0

    .line 39
    :cond_d
    iget v2, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 40
    iget-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v2, Lcom/android/tools/r8/internal/xi0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xi0;->b()Lcom/android/tools/r8/internal/ti0;

    move-result-object v5

    .line 41
    :cond_e
    sget-object v2, Lcom/android/tools/r8/internal/xi0;->g:Lcom/android/tools/r8/internal/si0;

    .line 42
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    if-eqz v5, :cond_f

    .line 43
    check-cast v2, Lcom/android/tools/r8/internal/xi0;

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/internal/ti0;->a(Lcom/android/tools/r8/internal/xi0;)Lcom/android/tools/r8/internal/ti0;

    .line 44
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ti0;->b()Lcom/android/tools/r8/internal/xi0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    .line 45
    :cond_f
    iput v3, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    goto/16 :goto_0

    .line 46
    :cond_10
    iget v2, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    if-ne v2, v3, :cond_11

    .line 47
    iget-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v2, Lcom/android/tools/r8/internal/Fg0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Fg0;->a()Lcom/android/tools/r8/internal/Bg0;

    move-result-object v5

    .line 48
    :cond_11
    sget-object v2, Lcom/android/tools/r8/internal/Fg0;->h:Lcom/android/tools/r8/internal/Ag0;

    .line 49
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    if-eqz v5, :cond_12

    .line 50
    check-cast v2, Lcom/android/tools/r8/internal/Fg0;

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/internal/Bg0;->a(Lcom/android/tools/r8/internal/Fg0;)Lcom/android/tools/r8/internal/Bg0;

    .line 51
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Bg0;->b()Lcom/android/tools/r8/internal/Fg0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    .line 52
    :cond_12
    iput v3, p0, Lcom/android/tools/r8/internal/Lg0;->b:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_13
    :goto_1
    move v1, v3

    goto/16 :goto_0

    .line 53
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 54
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 55
    throw p2

    .line 56
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 57
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 60
    throw p1

    .line 61
    :cond_14
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 62
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Kg0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 p1, -0x1

    .line 3
    iput-byte p1, p0, Lcom/android/tools/r8/internal/Lg0;->d:B

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/xi0;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/xi0;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/xi0;->f:Lcom/android/tools/r8/internal/xi0;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_6
    const/4 v0, 0x7

    return v0

    nop

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

.method public final c()Lcom/android/tools/r8/internal/Kg0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Lg0;->e:Lcom/android/tools/r8/internal/Lg0;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Kg0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Kg0;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Kg0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Kg0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Kg0;->a(Lcom/android/tools/r8/internal/Lg0;)Lcom/android/tools/r8/internal/Kg0;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/Lg0;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Lg0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lg0;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Lg0;->b()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/c;->b(II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    const/4 v3, 0x6

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/kh0;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/tools/r8/internal/kh0;->h:Lcom/android/tools/r8/internal/kh0;

    :goto_0
    iget v4, p1, Lcom/android/tools/r8/internal/Lg0;->b:I

    if-ne v4, v3, :cond_4

    iget-object v3, p1, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v3, Lcom/android/tools/r8/internal/kh0;

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/android/tools/r8/internal/kh0;->h:Lcom/android/tools/r8/internal/kh0;

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/kh0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :pswitch_1
    const/4 v3, 0x5

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/Jh0;

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/android/tools/r8/internal/Jh0;->d:Lcom/android/tools/r8/internal/Jh0;

    :goto_2
    iget v4, p1, Lcom/android/tools/r8/internal/Lg0;->b:I

    if-ne v4, v3, :cond_6

    iget-object v3, p1, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v3, Lcom/android/tools/r8/internal/Jh0;

    goto :goto_3

    :cond_6
    sget-object v3, Lcom/android/tools/r8/internal/Jh0;->d:Lcom/android/tools/r8/internal/Jh0;

    :goto_3
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Jh0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :pswitch_2
    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/zg0;

    goto :goto_4

    :cond_7
    sget-object v1, Lcom/android/tools/r8/internal/zg0;->d:Lcom/android/tools/r8/internal/zg0;

    :goto_4
    iget v4, p1, Lcom/android/tools/r8/internal/Lg0;->b:I

    if-ne v4, v3, :cond_8

    iget-object v3, p1, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v3, Lcom/android/tools/r8/internal/zg0;

    goto :goto_5

    :cond_8
    sget-object v3, Lcom/android/tools/r8/internal/zg0;->d:Lcom/android/tools/r8/internal/zg0;

    :goto_5
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/zg0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :pswitch_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/Ji0;

    goto :goto_6

    :cond_9
    sget-object v1, Lcom/android/tools/r8/internal/Ji0;->d:Lcom/android/tools/r8/internal/Ji0;

    :goto_6
    iget v4, p1, Lcom/android/tools/r8/internal/Lg0;->b:I

    if-ne v4, v3, :cond_a

    iget-object v3, p1, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v3, Lcom/android/tools/r8/internal/Ji0;

    goto :goto_7

    :cond_a
    sget-object v3, Lcom/android/tools/r8/internal/Ji0;->d:Lcom/android/tools/r8/internal/Ji0;

    :goto_7
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Ji0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lg0;->a()Lcom/android/tools/r8/internal/xi0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Lg0;->a()Lcom/android/tools/r8/internal/xi0;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/xi0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :pswitch_5
    if-ne v1, v0, :cond_b

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/Fg0;

    goto :goto_8

    :cond_b
    sget-object v1, Lcom/android/tools/r8/internal/Fg0;->g:Lcom/android/tools/r8/internal/Fg0;

    :goto_8
    iget v3, p1, Lcom/android/tools/r8/internal/Lg0;->b:I

    if-ne v3, v0, :cond_c

    iget-object v3, p1, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v3, Lcom/android/tools/r8/internal/Fg0;

    goto :goto_9

    :cond_c
    sget-object v3, Lcom/android/tools/r8/internal/Fg0;->g:Lcom/android/tools/r8/internal/Fg0;

    :goto_9
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Fg0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    :goto_a
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method public final getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/Fg0;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/xi0;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/Ji0;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/zg0;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/Jh0;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/kh0;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv0;->getSerializedSize()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/android/tools/r8/internal/pv0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/vj0;->O:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/16 v2, 0x35

    const/16 v3, 0x25

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const/4 v4, 0x6

    invoke-static {v0, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/kh0;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/tools/r8/internal/kh0;->h:Lcom/android/tools/r8/internal/kh0;

    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kh0;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    goto :goto_6

    :pswitch_1
    const/4 v4, 0x5

    invoke-static {v0, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/Jh0;

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/android/tools/r8/internal/Jh0;->d:Lcom/android/tools/r8/internal/Jh0;

    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Jh0;->hashCode()I

    move-result v1

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x4

    invoke-static {v0, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/zg0;

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/android/tools/r8/internal/zg0;->d:Lcom/android/tools/r8/internal/zg0;

    :goto_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zg0;->hashCode()I

    move-result v1

    goto :goto_1

    :pswitch_3
    const/4 v4, 0x3

    invoke-static {v0, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/Ji0;

    goto :goto_4

    :cond_4
    sget-object v1, Lcom/android/tools/r8/internal/Ji0;->d:Lcom/android/tools/r8/internal/Ji0;

    :goto_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ji0;->hashCode()I

    move-result v1

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lg0;->a()Lcom/android/tools/r8/internal/xi0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xi0;->hashCode()I

    move-result v1

    goto :goto_1

    :pswitch_5
    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/Fg0;

    goto :goto_5

    :cond_5
    sget-object v1, Lcom/android/tools/r8/internal/Fg0;->g:Lcom/android/tools/r8/internal/Fg0;

    :goto_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Fg0;->hashCode()I

    move-result v1

    goto :goto_1

    :goto_6
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/Lg0;->d:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/internal/Lg0;->d:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Lg0;->e:Lcom/android/tools/r8/internal/Lg0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Lg0;->c()Lcom/android/tools/r8/internal/Kg0;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Kg0;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Kg0;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lg0;->c()Lcom/android/tools/r8/internal/Kg0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lg0;->c()Lcom/android/tools/r8/internal/Kg0;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/Fg0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/xi0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/Ji0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/zg0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/Jh0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/Lg0;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/kh0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
