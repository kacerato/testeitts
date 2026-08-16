.class public final Lcom/android/tools/r8/internal/Sh0;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final e:Lcom/android/tools/r8/internal/Sh0;

.field public static final f:Lcom/android/tools/r8/internal/Kh0;


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Sh0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Sh0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Sh0;->e:Lcom/android/tools/r8/internal/Sh0;

    new-instance v0, Lcom/android/tools/r8/internal/Kh0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Kh0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Sh0;->f:Lcom/android/tools/r8/internal/Kh0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/android/tools/r8/internal/Sh0;->d:B

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Sh0;-><init>()V

    .line 8
    invoke-static {p2}, Lcom/android/tools/r8/internal/Ng;->a(Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

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
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    const/16 v2, 0xe

    .line 12
    iput v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    goto :goto_0

    .line 13
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    const/16 v2, 0xd

    .line 14
    iput v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    goto :goto_0

    .line 15
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    const/16 v2, 0xc

    .line 16
    iput v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    goto :goto_0

    .line 17
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    const/16 v2, 0xb

    .line 18
    iput v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    goto :goto_0

    .line 19
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    const/16 v2, 0xa

    .line 20
    iput v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    goto :goto_0

    .line 21
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    const/16 v2, 0x9

    .line 22
    iput v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    goto :goto_0

    .line 23
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    const/16 v2, 0x8

    .line 24
    iput v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    goto/16 :goto_0

    .line 25
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    const/4 v2, 0x7

    .line 26
    iput v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    goto/16 :goto_0

    .line 27
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    const/4 v2, 0x6

    .line 28
    iput v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    goto/16 :goto_0

    .line 29
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->i()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    const/4 v2, 0x5

    .line 30
    iput v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    goto/16 :goto_0

    .line 31
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->i()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    const/4 v2, 0x4

    .line 32
    iput v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    goto/16 :goto_0

    .line 33
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->i()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    const/4 v2, 0x3

    .line 34
    iput v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    goto/16 :goto_0

    .line 35
    :sswitch_c
    iget v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 36
    iget-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v2, Lcom/android/tools/r8/internal/Oh0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Oh0;->a()Lcom/android/tools/r8/internal/Nh0;

    move-result-object v3

    .line 37
    :cond_1
    sget-object v2, Lcom/android/tools/r8/internal/Oh0;->d:Lcom/android/tools/r8/internal/Mh0;

    .line 38
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 39
    check-cast v2, Lcom/android/tools/r8/internal/Oh0;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/Nh0;->a(Lcom/android/tools/r8/internal/Oh0;)Lcom/android/tools/r8/internal/Nh0;

    .line 40
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Nh0;->b()Lcom/android/tools/r8/internal/Oh0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    .line 41
    :cond_2
    iput v4, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    goto/16 :goto_0

    .line 42
    :sswitch_d
    iget v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v2, v4, :cond_3

    .line 43
    iget-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v2, Lcom/android/tools/r8/internal/Rh0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Rh0;->a()Lcom/android/tools/r8/internal/Qh0;

    move-result-object v3

    .line 44
    :cond_3
    sget-object v2, Lcom/android/tools/r8/internal/Rh0;->d:Lcom/android/tools/r8/internal/Ph0;

    .line 45
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 46
    check-cast v2, Lcom/android/tools/r8/internal/Rh0;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/Qh0;->a(Lcom/android/tools/r8/internal/Rh0;)Lcom/android/tools/r8/internal/Qh0;

    .line 47
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Qh0;->b()Lcom/android/tools/r8/internal/Rh0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    .line 48
    :cond_4
    iput v4, p0, Lcom/android/tools/r8/internal/Sh0;->b:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_e
    move v1, v4

    goto/16 :goto_0

    .line 49
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 50
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 51
    throw p2

    .line 52
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 53
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 56
    throw p1

    .line 57
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 58
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x12 -> :sswitch_c
        0x1d -> :sswitch_b
        0x25 -> :sswitch_a
        0x2d -> :sswitch_9
        0x30 -> :sswitch_8
        0x38 -> :sswitch_7
        0x40 -> :sswitch_6
        0x48 -> :sswitch_5
        0x50 -> :sswitch_4
        0x58 -> :sswitch_3
        0x60 -> :sswitch_2
        0x68 -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Lh0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 p1, -0x1

    .line 3
    iput-byte p1, p0, Lcom/android/tools/r8/internal/Sh0;->d:B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x5

    return v0

    :pswitch_1
    const/4 v0, 0x4

    return v0

    :pswitch_2
    const/16 v0, 0xc

    return v0

    :pswitch_3
    const/16 v0, 0xb

    return v0

    :pswitch_4
    const/16 v0, 0xa

    return v0

    :pswitch_5
    const/16 v0, 0x9

    return v0

    :pswitch_6
    const/16 v0, 0x8

    return v0

    :pswitch_7
    const/4 v0, 0x7

    return v0

    :pswitch_8
    const/4 v0, 0x6

    return v0

    :pswitch_9
    const/16 v0, 0xe

    return v0

    :pswitch_a
    const/16 v0, 0xd

    return v0

    :pswitch_b
    const/4 v0, 0x3

    return v0

    :pswitch_c
    const/4 v0, 0x2

    return v0

    :pswitch_d
    const/4 v0, 0x1

    return v0

    :pswitch_e
    const/16 v0, 0xf

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
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

.method public final b()Lcom/android/tools/r8/internal/Lh0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Sh0;->e:Lcom/android/tools/r8/internal/Sh0;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Lh0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Lh0;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Lh0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Lh0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Lh0;->a(Lcom/android/tools/r8/internal/Sh0;)Lcom/android/tools/r8/internal/Lh0;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/Sh0;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Sh0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Sh0;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Sh0;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/c;->b(II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_19

    :pswitch_0
    const/16 v3, 0xe

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    iget v4, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v4, v3, :cond_4

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-eq v1, v3, :cond_1f

    return v2

    :pswitch_1
    const/16 v3, 0xd

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    iget v4, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v4, v3, :cond_6

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    if-eq v1, v3, :cond_1f

    return v2

    :pswitch_2
    const/16 v3, 0xc

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    iget v4, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v4, v3, :cond_8

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    :cond_8
    move v3, v2

    :goto_5
    if-eq v1, v3, :cond_1f

    return v2

    :pswitch_3
    const/16 v3, 0xb

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_6

    :cond_9
    move v1, v2

    :goto_6
    iget v4, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v4, v3, :cond_a

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_7

    :cond_a
    move v3, v2

    :goto_7
    if-eq v1, v3, :cond_1f

    return v2

    :pswitch_4
    const/16 v3, 0xa

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_8

    :cond_b
    move v1, v2

    :goto_8
    iget v4, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v4, v3, :cond_c

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_9

    :cond_c
    move v3, v2

    :goto_9
    if-eq v1, v3, :cond_1f

    return v2

    :pswitch_5
    const/16 v3, 0x9

    if-ne v1, v3, :cond_d

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_a

    :cond_d
    move v1, v2

    :goto_a
    iget v4, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v4, v3, :cond_e

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_b

    :cond_e
    move v3, v2

    :goto_b
    if-eq v1, v3, :cond_1f

    return v2

    :pswitch_6
    const/16 v3, 0x8

    if-ne v1, v3, :cond_f

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_c

    :cond_f
    move v1, v2

    :goto_c
    iget v4, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v4, v3, :cond_10

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_d

    :cond_10
    move v3, v2

    :goto_d
    if-eq v1, v3, :cond_1f

    return v2

    :pswitch_7
    const/4 v3, 0x7

    if-ne v1, v3, :cond_11

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_e

    :cond_11
    move v1, v2

    :goto_e
    iget v4, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v4, v3, :cond_12

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_f

    :cond_12
    move v3, v2

    :goto_f
    if-eq v1, v3, :cond_1f

    return v2

    :pswitch_8
    const/4 v3, 0x6

    if-ne v1, v3, :cond_13

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_10

    :cond_13
    move v1, v2

    :goto_10
    iget v4, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v4, v3, :cond_14

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_11

    :cond_14
    move v3, v2

    :goto_11
    if-eq v1, v3, :cond_1f

    return v2

    :pswitch_9
    const/4 v4, 0x5

    if-ne v1, v4, :cond_15

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_12

    :cond_15
    move v1, v3

    :goto_12
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v5, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v5, v4, :cond_16

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_16
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_1f

    return v2

    :pswitch_a
    const/4 v4, 0x4

    if-ne v1, v4, :cond_17

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_13

    :cond_17
    move v1, v3

    :goto_13
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v5, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v5, v4, :cond_18

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_18
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_1f

    return v2

    :pswitch_b
    const/4 v4, 0x3

    if-ne v1, v4, :cond_19

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_14

    :cond_19
    move v1, v3

    :goto_14
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v5, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v5, v4, :cond_1a

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_1a
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_1f

    return v2

    :pswitch_c
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1b

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/tools/r8/internal/Oh0;

    goto :goto_15

    :cond_1b
    sget-object v1, Lcom/android/tools/r8/internal/Oh0;->c:Lcom/android/tools/r8/internal/Oh0;

    :goto_15
    iget v4, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v4, v3, :cond_1c

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v3, Lcom/android/tools/r8/internal/Oh0;

    goto :goto_16

    :cond_1c
    sget-object v3, Lcom/android/tools/r8/internal/Oh0;->c:Lcom/android/tools/r8/internal/Oh0;

    :goto_16
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Oh0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :pswitch_d
    if-ne v1, v0, :cond_1d

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/tools/r8/internal/Rh0;

    goto :goto_17

    :cond_1d
    sget-object v1, Lcom/android/tools/r8/internal/Rh0;->c:Lcom/android/tools/r8/internal/Rh0;

    :goto_17
    iget v3, p1, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v3, v0, :cond_1e

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v3, Lcom/android/tools/r8/internal/Rh0;

    goto :goto_18

    :cond_1e
    sget-object v3, Lcom/android/tools/r8/internal/Rh0;->c:Lcom/android/tools/r8/internal/Rh0;

    :goto_18
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Rh0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    :goto_19
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    return v2

    :cond_20
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/internal/Rh0;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v2, Lcom/android/tools/r8/internal/Oh0;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    :cond_3
    iget v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    :cond_4
    iget v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    :cond_5
    iget v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    iget v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_7
    iget v2, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_8
    iget v1, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_9
    iget v1, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_a
    iget v1, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_b
    iget v1, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_c
    iget v1, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_d
    iget v1, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_e
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
    .locals 6

    iget v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/vj0;->g0:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x35

    const/16 v5, 0x25

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const/16 v2, 0xe

    invoke-static {v0, v5, v2, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_1
    :goto_0
    add-int/2addr v0, v3

    goto/16 :goto_5

    :pswitch_1
    const/16 v2, 0xd

    invoke-static {v0, v5, v2, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :pswitch_2
    const/16 v2, 0xc

    invoke-static {v0, v5, v2, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :pswitch_3
    const/16 v2, 0xb

    invoke-static {v0, v5, v2, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :pswitch_4
    const/16 v2, 0xa

    invoke-static {v0, v5, v2, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x9

    invoke-static {v0, v5, v2, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :pswitch_6
    const/16 v2, 0x8

    invoke-static {v0, v5, v2, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_2
    sget-object v1, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v3, :cond_3

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_3
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    goto/16 :goto_5

    :pswitch_7
    const/4 v2, 0x7

    invoke-static {v0, v5, v2, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_0

    :pswitch_8
    const/4 v2, 0x6

    invoke-static {v0, v5, v2, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_0

    :pswitch_9
    const/4 v3, 0x5

    invoke-static {v0, v5, v3, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_4
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    goto :goto_5

    :pswitch_a
    const/4 v3, 0x4

    invoke-static {v0, v5, v3, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_5
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_2

    :pswitch_b
    const/4 v3, 0x3

    invoke-static {v0, v5, v3, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_6
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_2

    :pswitch_c
    const/4 v2, 0x2

    invoke-static {v0, v5, v2, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/tools/r8/internal/Oh0;

    goto :goto_3

    :cond_7
    sget-object v1, Lcom/android/tools/r8/internal/Oh0;->c:Lcom/android/tools/r8/internal/Oh0;

    :goto_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Oh0;->hashCode()I

    move-result v1

    goto :goto_2

    :pswitch_d
    const/4 v2, 0x1

    invoke-static {v0, v5, v2, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/tools/r8/internal/Rh0;

    goto :goto_4

    :cond_8
    sget-object v1, Lcom/android/tools/r8/internal/Rh0;->c:Lcom/android/tools/r8/internal/Rh0;

    :goto_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Rh0;->hashCode()I

    move-result v1

    goto :goto_2

    :goto_5
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/Sh0;->d:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/internal/Sh0;->d:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Sh0;->e:Lcom/android/tools/r8/internal/Sh0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Sh0;->b()Lcom/android/tools/r8/internal/Lh0;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Lh0;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Lh0;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Sh0;->b()Lcom/android/tools/r8/internal/Lh0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Sh0;->b()Lcom/android/tools/r8/internal/Lh0;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/internal/Rh0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/internal/Oh0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(II)V

    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(II)V

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(II)V

    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_6
    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_7
    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_8
    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_9
    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_a
    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_b
    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_c
    iget v0, p0, Lcom/android/tools/r8/internal/Sh0;->b:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sh0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_d
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
