.class public final Lcom/android/tools/r8/internal/RY;
.super Lcom/android/tools/r8/internal/F;
.source "SourceFile"


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:I

.field public final c:I

.field public d:J

.field public e:J

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/F;-><init>()V

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/tools/r8/internal/RY;->b:I

    iput v0, p0, Lcom/android/tools/r8/internal/RY;->c:I

    const/4 v0, 0x0

    int-to-long v1, v0

    iput-wide v1, p0, Lcom/android/tools/r8/internal/RY;->d:J

    iput-wide v1, p0, Lcom/android/tools/r8/internal/RY;->e:J

    iput v0, p0, Lcom/android/tools/r8/internal/RY;->f:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/fA;
    .locals 15

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/RY;->c:I

    if-lt v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/RY;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 60
    iget-object v0, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 62
    iget-object v0, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x21

    if-lez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    .line 64
    iget v3, p0, Lcom/android/tools/r8/internal/RY;->f:I

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/tools/r8/internal/RY;->f:I

    .line 65
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    const/16 v4, 0x18

    const/16 v5, 0x20

    const/16 v6, 0x28

    const/16 v7, 0x30

    const-wide/16 v8, 0x0

    const/16 v10, 0x8

    packed-switch v3, :pswitch_data_0

    .line 66
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should never get here."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/16 v3, 0xe

    .line 67
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v8, v3

    shl-long/2addr v8, v7

    :pswitch_1
    const/16 v3, 0xd

    .line 68
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v11, v3

    shl-long v6, v11, v6

    xor-long/2addr v8, v6

    :pswitch_2
    const/16 v3, 0xc

    .line 69
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    shl-long v5, v6, v5

    xor-long/2addr v8, v5

    :pswitch_3
    const/16 v3, 0xb

    .line 70
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v5, v3

    shl-long v3, v5, v4

    xor-long/2addr v8, v3

    :pswitch_4
    const/16 v3, 0xa

    .line 71
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    shl-long/2addr v3, v1

    xor-long/2addr v8, v3

    :pswitch_5
    const/16 v3, 0x9

    .line 72
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    shl-long/2addr v3, v10

    xor-long/2addr v8, v3

    .line 73
    :pswitch_6
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    xor-long/2addr v8, v3

    .line 74
    :pswitch_7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    goto :goto_7

    :pswitch_8
    const/4 v3, 0x6

    .line 75
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v11, v3

    shl-long/2addr v11, v7

    goto :goto_1

    :pswitch_9
    move-wide v11, v8

    :goto_1
    const/4 v3, 0x5

    .line 76
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v13, v3

    shl-long v6, v13, v6

    xor-long/2addr v6, v11

    goto :goto_2

    :pswitch_a
    move-wide v6, v8

    :goto_2
    const/4 v3, 0x4

    .line 77
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v11, v3

    shl-long/2addr v11, v5

    xor-long v5, v6, v11

    goto :goto_3

    :pswitch_b
    move-wide v5, v8

    :goto_3
    const/4 v3, 0x3

    .line 78
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v11, v3

    shl-long v3, v11, v4

    xor-long/2addr v3, v5

    goto :goto_4

    :pswitch_c
    move-wide v3, v8

    :goto_4
    const/4 v5, 0x2

    .line 79
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    goto :goto_5

    :pswitch_d
    move-wide v3, v8

    :goto_5
    const/4 v5, 0x1

    .line 80
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    shl-long/2addr v5, v10

    xor-long/2addr v3, v5

    goto :goto_6

    :pswitch_e
    move-wide v3, v8

    :goto_6
    const/4 v5, 0x0

    .line 81
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    xor-long/2addr v3, v5

    .line 82
    :goto_7
    iget-wide v5, p0, Lcom/android/tools/r8/internal/RY;->d:J

    const-wide v10, -0x783c846eeebdac2bL

    mul-long/2addr v3, v10

    const/16 v0, 0x1f

    .line 83
    invoke-static {v3, v4, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    const-wide v12, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr v3, v12

    xor-long/2addr v3, v5

    .line 84
    iput-wide v3, p0, Lcom/android/tools/r8/internal/RY;->d:J

    .line 85
    iget-wide v3, p0, Lcom/android/tools/r8/internal/RY;->e:J

    mul-long/2addr v8, v12

    .line 86
    invoke-static {v8, v9, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    mul-long/2addr v5, v10

    xor-long/2addr v3, v5

    .line 87
    iput-wide v3, p0, Lcom/android/tools/r8/internal/RY;->e:J

    .line 88
    iget-object v0, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v3

    .line 89
    invoke-virtual {v0, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 90
    :cond_1
    iget-wide v3, p0, Lcom/android/tools/r8/internal/RY;->d:J

    iget v0, p0, Lcom/android/tools/r8/internal/RY;->f:I

    int-to-long v5, v0

    xor-long/2addr v3, v5

    .line 91
    iget-wide v7, p0, Lcom/android/tools/r8/internal/RY;->e:J

    xor-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v5, v3

    ushr-long v7, v3, v2

    xor-long/2addr v3, v7

    const-wide v7, -0xae502812aa7333L

    mul-long/2addr v3, v7

    ushr-long v9, v3, v2

    xor-long/2addr v3, v9

    const-wide v9, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr v3, v9

    ushr-long v11, v3, v2

    xor-long/2addr v3, v11

    ushr-long v11, v5, v2

    xor-long/2addr v5, v11

    mul-long/2addr v5, v7

    ushr-long v7, v5, v2

    xor-long/2addr v5, v7

    mul-long/2addr v5, v9

    ushr-long v7, v5, v2

    xor-long/2addr v5, v7

    add-long/2addr v3, v5

    .line 92
    iput-wide v3, p0, Lcom/android/tools/r8/internal/RY;->d:J

    add-long/2addr v5, v3

    .line 93
    iput-wide v5, p0, Lcom/android/tools/r8/internal/RY;->e:J

    .line 94
    new-array v0, v1, [B

    .line 95
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 96
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/tools/r8/internal/RY;->d:J

    .line 97
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/tools/r8/internal/RY;->e:J

    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 100
    sget-object v1, Lcom/android/tools/r8/internal/gA;->b:[C

    .line 101
    new-instance v1, Lcom/android/tools/r8/internal/fA;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/fA;-><init>([B)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final a(B)Lcom/android/tools/r8/internal/lA;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 35
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    const/16 v0, 0x8

    if-ge p1, v0, :cond_1

    .line 36
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 38
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    iget v0, p0, Lcom/android/tools/r8/internal/RY;->c:I

    if-lt p1, v0, :cond_0

    .line 39
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/RY;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :cond_1
    return-object p0
.end method

.method public final a(I)Lcom/android/tools/r8/internal/lA;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    const/16 v0, 0x8

    if-ge p1, v0, :cond_1

    .line 43
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 45
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    iget v0, p0, Lcom/android/tools/r8/internal/RY;->c:I

    if-lt p1, v0, :cond_0

    .line 46
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/RY;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :cond_1
    return-object p0
.end method

.method public final a(J)Lcom/android/tools/r8/internal/lA;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 49
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    const/16 p2, 0x8

    if-ge p1, p2, :cond_1

    .line 50
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 52
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    iget p2, p0, Lcom/android/tools/r8/internal/RY;->c:I

    if-lt p1, p2, :cond_0

    .line 53
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/RY;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :cond_1
    return-object p0
.end method

.method public final a([BII)Lcom/android/tools/r8/internal/lA;
    .locals 2

    const/4 p2, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    iget-object v0, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_2

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    const/16 p2, 0x8

    if-ge p1, p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    iget p2, p0, Lcom/android/tools/r8/internal/RY;->c:I

    if-lt p1, p2, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/RY;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :cond_1
    return-object p0

    .line 10
    :cond_2
    iget p3, p0, Lcom/android/tools/r8/internal/RY;->b:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    sub-int/2addr p3, v0

    :goto_1
    if-ge p2, p3, :cond_3

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 14
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    iget p3, p0, Lcom/android/tools/r8/internal/RY;->c:I

    if-lt p2, p3, :cond_4

    .line 15
    iget-object p2, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/RY;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object p2, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 17
    :goto_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    iget p3, p0, Lcom/android/tools/r8/internal/RY;->c:I

    if-lt p2, p3, :cond_5

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/RY;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_3

    .line 19
    :cond_5
    iget-object p2, p0, Lcom/android/tools/r8/internal/RY;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 14

    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 22
    iget-wide v4, p0, Lcom/android/tools/r8/internal/RY;->d:J

    const-wide v6, -0x783c846eeebdac2bL

    mul-long/2addr v0, v6

    const/16 p1, 0x1f

    .line 23
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    const-wide v8, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr v0, v8

    xor-long/2addr v0, v4

    .line 24
    iput-wide v0, p0, Lcom/android/tools/r8/internal/RY;->d:J

    const/16 v4, 0x1b

    .line 25
    invoke-static {v0, v1, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    .line 26
    iget-wide v4, p0, Lcom/android/tools/r8/internal/RY;->e:J

    add-long/2addr v0, v4

    const-wide/16 v10, 0x5

    mul-long/2addr v0, v10

    const-wide/32 v12, 0x52dce729

    add-long/2addr v0, v12

    .line 27
    iput-wide v0, p0, Lcom/android/tools/r8/internal/RY;->d:J

    mul-long/2addr v2, v8

    const/16 v0, 0x21

    .line 28
    invoke-static {v2, v3, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    mul-long/2addr v0, v6

    xor-long/2addr v0, v4

    .line 29
    iput-wide v0, p0, Lcom/android/tools/r8/internal/RY;->e:J

    .line 30
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    .line 31
    iget-wide v2, p0, Lcom/android/tools/r8/internal/RY;->d:J

    add-long/2addr v0, v2

    mul-long/2addr v0, v10

    const-wide/32 v2, 0x38495ab5

    add-long/2addr v0, v2

    .line 32
    iput-wide v0, p0, Lcom/android/tools/r8/internal/RY;->e:J

    .line 33
    iget p1, p0, Lcom/android/tools/r8/internal/RY;->f:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/tools/r8/internal/RY;->f:I

    return-void
.end method
