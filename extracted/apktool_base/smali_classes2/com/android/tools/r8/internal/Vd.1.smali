.class public final Lcom/android/tools/r8/internal/Vd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:[I

.field public final d:[Ljava/lang/String;

.field public final e:[Lcom/android/tools/r8/internal/wh;

.field public final f:[I

.field public final g:I


# direct methods
.method public constructor <init>([BZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/tools/r8/internal/Vd;->b:[B

    if-eqz p2, :cond_1

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Vd;->c(I)S

    move-result v3

    const/16 v4, 0x44

    if-gt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Vd;->c(I)S

    move-result v2

    const-string v3, "Unsupported class file major version "

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    new-array v4, v3, [I

    iput-object v4, v0, Lcom/android/tools/r8/internal/Vd;->c:[I

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v0, Lcom/android/tools/r8/internal/Vd;->d:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xa

    move v8, v4

    move v9, v8

    move v10, v9

    move v7, v5

    :goto_1
    const/4 v11, 0x4

    if-ge v7, v3, :cond_3

    iget-object v12, v0, Lcom/android/tools/r8/internal/Vd;->c:[I

    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v6, 0x1

    aput v14, v12, v7

    aget-byte v12, v1, v6

    const/4 v15, 0x3

    const/16 v16, 0x5

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_1
    move v10, v5

    :goto_2
    :pswitch_2
    move/from16 v11, v16

    goto :goto_3

    :pswitch_3
    move v8, v5

    move v10, v8

    goto :goto_2

    :pswitch_4
    move v11, v15

    goto :goto_3

    :pswitch_5
    add-int/lit8 v7, v7, 0x2

    const/16 v11, 0x9

    goto :goto_4

    :pswitch_6
    invoke-virtual {v0, v14}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v7

    add-int/lit8 v11, v7, 0x3

    if-le v11, v9, :cond_2

    move v9, v11

    :cond_2
    :goto_3
    :pswitch_7
    move v7, v13

    :goto_4
    add-int/2addr v6, v11

    goto :goto_1

    :cond_3
    iput v9, v0, Lcom/android/tools/r8/internal/Vd;->g:I

    iput v6, v0, Lcom/android/tools/r8/internal/Vd;->a:I

    const/4 v1, 0x0

    if-eqz v8, :cond_4

    new-array v3, v3, [Lcom/android/tools/r8/internal/wh;

    goto :goto_5

    :cond_4
    move-object v3, v1

    :goto_5
    iput-object v3, v0, Lcom/android/tools/r8/internal/Vd;->e:[Lcom/android/tools/r8/internal/wh;

    if-eqz v10, :cond_8

    new-array v1, v9, [C

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/Vd;->a()I

    move-result v3

    add-int/lit8 v5, v3, -0x2

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v5

    :goto_6
    if-lez v5, :cond_7

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v7

    add-int/lit8 v8, v3, 0x6

    const-string v9, "BootstrapMethods"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    new-array v5, v1, [I

    add-int/2addr v3, v2

    :goto_7
    if-ge v4, v1, :cond_5

    aput v3, v5, v4

    add-int/lit8 v2, v3, 0x2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v11

    add-int/2addr v3, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_5
    move-object v1, v5

    goto :goto_8

    :cond_6
    add-int v3, v8, v7

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_8
    :goto_8
    iput-object v1, v0, Lcom/android/tools/r8/internal/Vd;->f:[I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static a(I[Lcom/android/tools/r8/internal/XQ;)V
    .locals 1

    .line 604
    aget-object v0, p1, p0

    if-nez v0, :cond_1

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Lcom/android/tools/r8/internal/XQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    aput-object v0, p1, p0

    .line 606
    :cond_0
    aget-object p0, p1, p0

    .line 607
    iget-short p1, p0, Lcom/android/tools/r8/internal/XQ;->b:S

    or-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/android/tools/r8/internal/XQ;->b:S

    :cond_1
    return-void
.end method

.method public static b(I[Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/XQ;
    .locals 1

    .line 1
    aget-object v0, p1, p0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/XQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    aput-object v0, p1, p0

    .line 3
    :cond_0
    aget-object p0, p1, p0

    .line 4
    iget-short p1, p0, Lcom/android/tools/r8/internal/XQ;->b:S

    and-int/lit8 p1, p1, -0x2

    int-to-short p1, p1

    iput-short p1, p0, Lcom/android/tools/r8/internal/XQ;->b:S

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 714
    iget v0, p0, Lcom/android/tools/r8/internal/Vd;->a:I

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 715
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    add-int/lit8 v1, v0, 0x6

    .line 716
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x8

    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    .line 717
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    move v1, v3

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 718
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_3

    add-int/lit8 v1, v0, 0x6

    .line 719
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x8

    :goto_3
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_2

    add-int/lit8 v1, v0, 0x2

    .line 720
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    move v1, v3

    goto :goto_3

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final a(I)I
    .locals 3

    .line 729
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->b:[B

    .line 730
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method public final a(I[Ljava/lang/Object;I[C[Lcom/android/tools/r8/internal/XQ;)I
    .locals 3

    .line 703
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->b:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_0

    .line 704
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 705
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result p4

    invoke-static {p4, p5}, Lcom/android/tools/r8/internal/Vd;->b(I[Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/XQ;

    move-result-object p4

    aput-object p4, p2, p3

    :goto_0
    add-int/2addr p1, v2

    return p1

    .line 706
    :pswitch_1
    invoke-virtual {p0, v1, p4}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x6

    .line 707
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, p3

    return v1

    :pswitch_3
    const/4 p1, 0x5

    .line 708
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, p3

    return v1

    :pswitch_4
    const/4 p1, 0x4

    .line 709
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, p3

    return v1

    .line 710
    :pswitch_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, p3

    return v1

    :pswitch_6
    const/4 p1, 0x2

    .line 711
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, p3

    return v1

    :pswitch_7
    const/4 p1, 0x1

    .line 712
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, p3

    return v1

    :pswitch_8
    const/4 p1, 0x0

    .line 713
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, p3

    return v1

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final a(Lcom/android/tools/r8/internal/Q2;ILjava/lang/String;[C)I
    .locals 10

    const/16 v0, 0x65

    const/16 v1, 0x5b

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_3

    .line 640
    iget-object p1, p0, Lcom/android/tools/r8/internal/Vd;->b:[B

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/4 p3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    add-int/lit8 p2, p2, 0x3

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x5

    return p2

    :cond_1
    add-int/2addr p2, v4

    .line 641
    invoke-virtual {p0, p3, p2, v3, p4}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result p1

    return p1

    :cond_2
    add-int/lit8 p2, p2, 0x3

    .line 642
    invoke-virtual {p0, p3, p2, v4, p4}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result p1

    return p1

    .line 643
    :cond_3
    iget-object v5, p0, Lcom/android/tools/r8/internal/Vd;->b:[B

    add-int/lit8 v6, p2, 0x1

    aget-byte v5, v5, p2

    and-int/lit16 v5, v5, 0xff

    if-eq v5, v2, :cond_1b

    const/16 v2, 0x46

    if-eq v5, v2, :cond_1a

    const/16 v7, 0x53

    if-eq v5, v7, :cond_19

    const/16 v8, 0x63

    if-eq v5, v8, :cond_18

    if-eq v5, v0, :cond_17

    const/16 v0, 0x73

    if-eq v5, v0, :cond_16

    const/16 v0, 0x49

    if-eq v5, v0, :cond_1a

    const/16 v8, 0x4a

    if-eq v5, v8, :cond_1a

    const/16 v9, 0x5a

    if-eq v5, v9, :cond_14

    if-eq v5, v1, :cond_4

    packed-switch v5, :pswitch_data_0

    .line 644
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 645
    :pswitch_0
    iget-object p4, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    .line 646
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    aget p4, p4, v0

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result p4

    int-to-char p4, p4

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p4

    .line 647
    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x3

    return p2

    .line 648
    :pswitch_1
    iget-object p4, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    .line 649
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    aget p4, p4, v0

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result p4

    int-to-byte p4, p4

    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    .line 650
    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x3

    return p2

    .line 651
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 p2, p2, 0x3

    if-nez v1, :cond_5

    .line 652
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    .line 653
    invoke-virtual {p0, p1, v6, v3, p4}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result p1

    return p1

    .line 654
    :cond_5
    iget-object v5, p0, Lcom/android/tools/r8/internal/Vd;->b:[B

    aget-byte v5, v5, p2

    and-int/lit16 v5, v5, 0xff

    if-eq v5, v2, :cond_12

    if-eq v5, v7, :cond_10

    if-eq v5, v9, :cond_d

    if-eq v5, v0, :cond_b

    if-eq v5, v8, :cond_9

    packed-switch v5, :pswitch_data_1

    .line 655
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    .line 656
    invoke-virtual {p0, p1, v6, v3, p4}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result p1

    return p1

    .line 657
    :pswitch_2
    new-array p4, v1, [D

    :goto_0
    if-ge v3, v1, :cond_6

    .line 658
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    add-int/lit8 v2, p2, 0x1

    .line 659
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vd;->b(I)J

    move-result-wide v4

    .line 660
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    aput-wide v4, p4, v3

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 661
    :cond_6
    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return p2

    .line 662
    :pswitch_3
    new-array p4, v1, [C

    :goto_1
    if-ge v3, v1, :cond_7

    .line 663
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v0

    int-to-char v0, v0

    aput-char v0, p4, v3

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 664
    :cond_7
    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return p2

    .line 665
    :pswitch_4
    new-array p4, v1, [B

    :goto_2
    if-ge v3, v1, :cond_8

    .line 666
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p4, v3

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 667
    :cond_8
    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return p2

    .line 668
    :cond_9
    new-array p4, v1, [J

    :goto_3
    if-ge v3, v1, :cond_a

    .line 669
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vd;->b(I)J

    move-result-wide v4

    aput-wide v4, p4, v3

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 670
    :cond_a
    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return p2

    .line 671
    :cond_b
    new-array p4, v1, [I

    :goto_4
    if-ge v3, v1, :cond_c

    .line 672
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v0

    aput v0, p4, v3

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 673
    :cond_c
    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return p2

    .line 674
    :cond_d
    new-array p4, v1, [Z

    move v0, v3

    :goto_5
    if-ge v0, v1, :cond_f

    .line 675
    iget-object v2, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v5

    aget v2, v2, v5

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v2

    if-eqz v2, :cond_e

    move v2, v4

    goto :goto_6

    :cond_e
    move v2, v3

    :goto_6
    aput-boolean v2, p4, v0

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 676
    :cond_f
    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return p2

    .line 677
    :cond_10
    new-array p4, v1, [S

    :goto_7
    if-ge v3, v1, :cond_11

    .line 678
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p4, v3

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 679
    :cond_11
    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return p2

    .line 680
    :cond_12
    new-array p4, v1, [F

    :goto_8
    if-ge v3, v1, :cond_13

    .line 681
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    add-int/lit8 v2, p2, 0x1

    .line 682
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v0

    .line 683
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    aput v0, p4, v3

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 684
    :cond_13
    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return p2

    .line 685
    :cond_14
    iget-object p4, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    aget p4, p4, v0

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result p4

    if-nez p4, :cond_15

    .line 686
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_9

    .line 687
    :cond_15
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 688
    :goto_9
    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x3

    return p2

    .line 689
    :cond_16
    invoke-virtual {p0, v6, p4}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x3

    return p2

    .line 690
    :cond_17
    invoke-virtual {p0, v6, p4}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p2, 0x3

    .line 691
    invoke-virtual {p0, v1, p4}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object p4

    .line 692
    invoke-virtual {p1, p3, v0, p4}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x5

    return p2

    .line 693
    :cond_18
    invoke-virtual {p0, v6, p4}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object p4

    .line 694
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p4, v3, v0}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p4

    .line 695
    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x3

    return p2

    .line 696
    :cond_19
    iget-object p4, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    .line 697
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    aget p4, p4, v0

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result p4

    int-to-short p4, p4

    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p4

    .line 698
    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x3

    return p2

    .line 699
    :cond_1a
    :pswitch_5
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    invoke-virtual {p0, v0, p4}, Lcom/android/tools/r8/internal/Vd;->b(I[C)Ljava/lang/Object;

    move-result-object p4

    .line 700
    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x3

    return p2

    .line 701
    :cond_1b
    invoke-virtual {p0, v6, p4}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    add-int/lit8 p2, p2, 0x3

    .line 702
    invoke-virtual {p0, p1, p2, v4, p4}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/Q2;IZ[C)I
    .locals 1

    .line 635
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    add-int/lit8 p2, p2, 0x2

    if-eqz p3, :cond_0

    :goto_0
    add-int/lit8 p3, v0, -0x1

    if-lez v0, :cond_1

    .line 636
    invoke-virtual {p0, p2, p4}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p2, p2, 0x2

    .line 637
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;ILjava/lang/String;[C)I

    move-result p2

    move v0, p3

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p3, v0, -0x1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 638
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;ILjava/lang/String;[C)I

    move-result p2

    move v0, p3

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 639
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Q2;->a()V

    :cond_2
    return p2
.end method

.method public final a(Lcom/android/tools/r8/internal/di;I)I
    .locals 9

    .line 611
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x18

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    const/high16 v3, -0x1000000

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 612
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    const v1, -0xffff01

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x4

    goto :goto_2

    :pswitch_1
    and-int/2addr v0, v3

    :goto_0
    add-int/lit8 p2, p2, 0x3

    goto :goto_2

    :pswitch_2
    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x1

    .line 613
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 p2, p2, 0x3

    .line 614
    new-array v3, v1, [Lcom/android/tools/r8/internal/XQ;

    iput-object v3, p1, Lcom/android/tools/r8/internal/di;->j:[Lcom/android/tools/r8/internal/XQ;

    .line 615
    new-array v3, v1, [Lcom/android/tools/r8/internal/XQ;

    iput-object v3, p1, Lcom/android/tools/r8/internal/di;->k:[Lcom/android/tools/r8/internal/XQ;

    .line 616
    new-array v3, v1, [I

    iput-object v3, p1, Lcom/android/tools/r8/internal/di;->l:[I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 617
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v4

    add-int/lit8 v5, p2, 0x2

    .line 618
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v5

    add-int/lit8 v6, p2, 0x4

    .line 619
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v6

    add-int/lit8 p2, p2, 0x6

    .line 620
    iget-object v7, p1, Lcom/android/tools/r8/internal/di;->j:[Lcom/android/tools/r8/internal/XQ;

    iget-object v8, p1, Lcom/android/tools/r8/internal/di;->g:[Lcom/android/tools/r8/internal/XQ;

    .line 621
    invoke-static {v4, v8}, Lcom/android/tools/r8/internal/Vd;->b(I[Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/XQ;

    move-result-object v8

    aput-object v8, v7, v3

    .line 622
    iget-object v7, p1, Lcom/android/tools/r8/internal/di;->k:[Lcom/android/tools/r8/internal/XQ;

    add-int/2addr v4, v5

    iget-object v5, p1, Lcom/android/tools/r8/internal/di;->g:[Lcom/android/tools/r8/internal/XQ;

    .line 623
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/Vd;->b(I[Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/XQ;

    move-result-object v4

    aput-object v4, v7, v3

    .line 624
    iget-object v4, p1, Lcom/android/tools/r8/internal/di;->l:[I

    aput v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_3
    and-int/2addr v0, v3

    add-int/2addr p2, v2

    goto :goto_2

    :pswitch_4
    and-int/lit16 v0, v0, -0x100

    goto :goto_0

    :cond_0
    :pswitch_5
    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x2

    .line 625
    :cond_1
    :goto_2
    iput v0, p1, Lcom/android/tools/r8/internal/di;->h:I

    .line 626
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->b:[B

    aget-byte v1, v0, p2

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    .line 627
    :cond_2
    new-instance v3, Lcom/android/tools/r8/internal/tu0;

    invoke-direct {v3, p2, v0}, Lcom/android/tools/r8/internal/tu0;-><init>(I[B)V

    move-object v0, v3

    :goto_3
    iput-object v0, p1, Lcom/android/tools/r8/internal/di;->i:Lcom/android/tools/r8/internal/tu0;

    add-int/2addr p2, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    return v1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a([II)I
    .locals 1

    if-eqz p1, :cond_1

    .line 608
    array-length v0, p1

    if-ge p2, v0, :cond_1

    aget p1, p1, p2

    .line 609
    iget-object p2, p0, Lcom/android/tools/r8/internal/Vd;->b:[B

    aget-byte p2, p2, p1

    and-int/lit16 p2, p2, 0xff

    const/16 v0, 0x43

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 610
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a([Lcom/android/tools/r8/internal/K4;Ljava/lang/String;II[CI[Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/K4;
    .locals 2

    .line 721
    array-length p5, p1

    const/4 p6, 0x0

    move p7, p6

    :goto_0
    if-ge p7, p5, :cond_1

    aget-object v0, p1, p7

    .line 722
    iget-object v1, v0, Lcom/android/tools/r8/internal/K4;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    invoke-virtual {v0, p0, p3, p4}, Lcom/android/tools/r8/internal/K4;->a(Lcom/android/tools/r8/internal/Vd;II)Lcom/android/tools/r8/internal/K4;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    .line 724
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/K4;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/K4;-><init>(Ljava/lang/String;)V

    .line 725
    new-instance p2, Lcom/android/tools/r8/internal/p8;

    .line 726
    new-array p5, p4, [B

    .line 727
    iget-object p7, p0, Lcom/android/tools/r8/internal/Vd;->b:[B

    invoke-static {p7, p3, p5, p6, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 728
    invoke-direct {p2, p5}, Lcom/android/tools/r8/internal/p8;-><init>([B)V

    iput-object p2, p1, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    return-object p1
.end method

.method public final a(I[C)Ljava/lang/String;
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a([CII)Ljava/lang/String;
    .locals 7

    add-int/2addr p3, p2

    .line 731
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->b:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge p2, p3, :cond_2

    add-int/lit8 v3, p2, 0x1

    .line 732
    aget-byte v4, v0, p2

    and-int/lit16 v5, v4, 0x80

    if-nez v5, :cond_0

    add-int/lit8 p2, v2, 0x1

    and-int/lit8 v4, v4, 0x7f

    int-to-char v4, v4

    .line 733
    aput-char v4, p1, v2

    move v2, p2

    move p2, v3

    goto :goto_0

    :cond_0
    and-int/lit16 v5, v4, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v2, 0x1

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 p2, p2, 0x2

    .line 734
    aget-byte v3, v0, v3

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v4, v3

    int-to-char v3, v4

    aput-char v3, p1, v2

    :goto_1
    move v2, v5

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v2, 0x1

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    add-int/lit8 v6, p2, 0x2

    .line 735
    aget-byte v3, v0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v4, v3

    add-int/lit8 p2, p2, 0x3

    aget-byte v3, v0, v6

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v4, v3

    int-to-char v3, v4

    aput-char v3, p1, v2

    goto :goto_1

    .line 736
    :cond_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;Lcom/android/tools/r8/internal/di;I)V
    .locals 47

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    .line 292
    iget-object v12, v8, Lcom/android/tools/r8/internal/Vd;->b:[B

    .line 293
    iget-object v13, v10, Lcom/android/tools/r8/internal/di;->c:[C

    .line 294
    invoke-virtual {v8, v11}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v14

    add-int/lit8 v0, v11, 0x2

    .line 295
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v15

    add-int/lit8 v0, v11, 0x4

    .line 296
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v7

    add-int/lit8 v16, v11, 0x8

    .line 297
    iget-object v0, v8, Lcom/android/tools/r8/internal/Vd;->b:[B

    array-length v0, v0

    sub-int v0, v0, v16

    if-gt v7, v0, :cond_6b

    add-int v6, v16, v7

    add-int/lit8 v0, v7, 0x1

    .line 298
    new-array v5, v0, [Lcom/android/tools/r8/internal/XQ;

    iput-object v5, v10, Lcom/android/tools/r8/internal/di;->g:[Lcom/android/tools/r8/internal/XQ;

    move/from16 v0, v16

    :goto_0
    const/16 v4, 0x84

    const/16 v3, 0xff

    const/4 v1, 0x4

    if-ge v0, v6, :cond_a

    sub-int v17, v0, v16

    .line 299
    aget-byte v2, v12, v0

    and-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    add-int/lit8 v1, v0, 0x1

    .line 301
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int v1, v1, v17

    .line 302
    aget-object v2, v5, v1

    if-nez v2, :cond_0

    .line 303
    new-instance v2, Lcom/android/tools/r8/internal/XQ;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    aput-object v2, v5, v1

    .line 304
    :cond_0
    aget-object v1, v5, v1

    .line 305
    iget-short v2, v1, Lcom/android/tools/r8/internal/XQ;->b:S

    and-int/lit8 v2, v2, -0x2

    int-to-short v2, v2

    iput-short v2, v1, Lcom/android/tools/r8/internal/XQ;->b:S

    goto/16 :goto_4

    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    .line 306
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v1

    add-int v1, v1, v17

    .line 307
    aget-object v2, v5, v1

    if-nez v2, :cond_1

    .line 308
    new-instance v2, Lcom/android/tools/r8/internal/XQ;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    aput-object v2, v5, v1

    .line 309
    :cond_1
    aget-object v1, v5, v1

    .line 310
    iget-short v2, v1, Lcom/android/tools/r8/internal/XQ;->b:S

    and-int/lit8 v2, v2, -0x2

    int-to-short v2, v2

    iput-short v2, v1, Lcom/android/tools/r8/internal/XQ;->b:S

    goto :goto_1

    :pswitch_2
    add-int/lit8 v1, v0, 0x1

    .line 311
    aget-byte v1, v12, v1

    and-int/2addr v1, v3

    if-eq v1, v4, :cond_3

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    :pswitch_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :goto_1
    :pswitch_4
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :pswitch_5
    and-int/lit8 v2, v17, 0x3

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 313
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v0

    add-int v0, v0, v17

    .line 314
    aget-object v2, v5, v0

    if-nez v2, :cond_4

    .line 315
    new-instance v2, Lcom/android/tools/r8/internal/XQ;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    aput-object v2, v5, v0

    .line 316
    :cond_4
    aget-object v0, v5, v0

    .line 317
    iget-short v2, v0, Lcom/android/tools/r8/internal/XQ;->b:S

    and-int/lit8 v2, v2, -0x2

    int-to-short v2, v2

    iput-short v2, v0, Lcom/android/tools/r8/internal/XQ;->b:S

    add-int/lit8 v0, v1, 0x4

    .line 318
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x8

    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_6

    add-int/lit8 v0, v1, 0x4

    .line 319
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v0

    add-int v0, v0, v17

    .line 320
    aget-object v3, v5, v0

    if-nez v3, :cond_5

    .line 321
    new-instance v3, Lcom/android/tools/r8/internal/XQ;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    aput-object v3, v5, v0

    .line 322
    :cond_5
    aget-object v0, v5, v0

    .line 323
    iget-short v3, v0, Lcom/android/tools/r8/internal/XQ;->b:S

    and-int/lit8 v3, v3, -0x2

    int-to-short v3, v3

    iput-short v3, v0, Lcom/android/tools/r8/internal/XQ;->b:S

    add-int/lit8 v1, v1, 0x8

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :pswitch_6
    and-int/lit8 v2, v17, 0x3

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 324
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v0

    add-int v0, v0, v17

    .line 325
    aget-object v2, v5, v0

    if-nez v2, :cond_7

    .line 326
    new-instance v2, Lcom/android/tools/r8/internal/XQ;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    aput-object v2, v5, v0

    .line 327
    :cond_7
    aget-object v0, v5, v0

    .line 328
    iget-short v2, v0, Lcom/android/tools/r8/internal/XQ;->b:S

    and-int/lit8 v2, v2, -0x2

    int-to-short v2, v2

    iput-short v2, v0, Lcom/android/tools/r8/internal/XQ;->b:S

    add-int/lit8 v0, v1, 0x8

    .line 329
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v0

    add-int/lit8 v2, v1, 0x4

    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0xc

    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_6

    .line 330
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v0

    add-int v0, v0, v17

    .line 331
    aget-object v3, v5, v0

    if-nez v3, :cond_8

    .line 332
    new-instance v3, Lcom/android/tools/r8/internal/XQ;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    aput-object v3, v5, v0

    .line 333
    :cond_8
    aget-object v0, v5, v0

    .line 334
    iget-short v3, v0, Lcom/android/tools/r8/internal/XQ;->b:S

    and-int/lit8 v3, v3, -0x2

    int-to-short v3, v3

    iput-short v3, v0, Lcom/android/tools/r8/internal/XQ;->b:S

    add-int/lit8 v1, v1, 0x4

    move v0, v2

    goto :goto_3

    :pswitch_7
    add-int/lit8 v1, v0, 0x1

    .line 335
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->c(I)S

    move-result v1

    add-int v1, v1, v17

    .line 336
    aget-object v2, v5, v1

    if-nez v2, :cond_9

    .line 337
    new-instance v2, Lcom/android/tools/r8/internal/XQ;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    aput-object v2, v5, v1

    .line 338
    :cond_9
    aget-object v1, v5, v1

    .line 339
    iget-short v2, v1, Lcom/android/tools/r8/internal/XQ;->b:S

    and-int/lit8 v2, v2, -0x2

    int-to-short v2, v2

    iput-short v2, v1, Lcom/android/tools/r8/internal/XQ;->b:S

    :goto_4
    :pswitch_8
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :pswitch_9
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :pswitch_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 340
    :cond_a
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    const/4 v1, 0x2

    add-int/2addr v0, v1

    :goto_5
    add-int/lit8 v19, v2, -0x1

    if-lez v2, :cond_e

    .line 341
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    .line 342
    aget-object v20, v5, v2

    if-nez v20, :cond_b

    .line 343
    new-instance v20, Lcom/android/tools/r8/internal/XQ;

    invoke-direct/range {v20 .. v20}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    aput-object v20, v5, v2

    .line 344
    :cond_b
    aget-object v2, v5, v2

    .line 345
    iget-short v3, v2, Lcom/android/tools/r8/internal/XQ;->b:S

    and-int/lit8 v3, v3, -0x2

    int-to-short v3, v3

    iput-short v3, v2, Lcom/android/tools/r8/internal/XQ;->b:S

    add-int/lit8 v3, v0, 0x2

    .line 346
    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    .line 347
    aget-object v21, v5, v3

    if-nez v21, :cond_c

    .line 348
    new-instance v21, Lcom/android/tools/r8/internal/XQ;

    invoke-direct/range {v21 .. v21}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    aput-object v21, v5, v3

    .line 349
    :cond_c
    aget-object v3, v5, v3

    .line 350
    iget-short v4, v3, Lcom/android/tools/r8/internal/XQ;->b:S

    and-int/lit8 v4, v4, -0x2

    int-to-short v4, v4

    iput-short v4, v3, Lcom/android/tools/r8/internal/XQ;->b:S

    add-int/lit8 v4, v0, 0x4

    .line 351
    invoke-virtual {v8, v4}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v4

    .line 352
    aget-object v22, v5, v4

    if-nez v22, :cond_d

    .line 353
    new-instance v22, Lcom/android/tools/r8/internal/XQ;

    invoke-direct/range {v22 .. v22}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    aput-object v22, v5, v4

    .line 354
    :cond_d
    aget-object v4, v5, v4

    .line 355
    iget-short v1, v4, Lcom/android/tools/r8/internal/XQ;->b:S

    and-int/lit8 v1, v1, -0x2

    int-to-short v1, v1

    iput-short v1, v4, Lcom/android/tools/r8/internal/XQ;->b:S

    .line 356
    iget-object v1, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    move/from16 v23, v6

    add-int/lit8 v6, v0, 0x6

    invoke-virtual {v8, v6}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v6

    aget v1, v1, v6

    invoke-virtual {v8, v1, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x8

    .line 357
    invoke-virtual {v9, v2, v3, v4, v1}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Ljava/lang/String;)V

    move/from16 v2, v19

    move/from16 v6, v23

    const/4 v1, 0x2

    const/16 v3, 0xff

    const/16 v4, 0x84

    goto :goto_5

    :cond_e
    move/from16 v23, v6

    .line 358
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v19, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_6
    add-int/lit8 v29, v1, -0x1

    if-lez v1, :cond_1d

    .line 359
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v6, v0, 0x2

    .line 360
    invoke-virtual {v8, v6}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v30

    add-int/lit8 v6, v0, 0x6

    .line 361
    const-string v4, "LocalVariableTable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 362
    iget v1, v10, Lcom/android/tools/r8/internal/di;->b:I

    const/4 v4, 0x2

    and-int/2addr v1, v4

    if-nez v1, :cond_10

    .line 363
    invoke-virtual {v8, v6}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x8

    :goto_7
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_f

    .line 364
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    .line 365
    invoke-static {v1, v5}, Lcom/android/tools/r8/internal/Vd;->a(I[Lcom/android/tools/r8/internal/XQ;)V

    move-object/from16 v32, v2

    add-int/lit8 v2, v0, 0x2

    .line 366
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 367
    invoke-static {v2, v5}, Lcom/android/tools/r8/internal/Vd;->a(I[Lcom/android/tools/r8/internal/XQ;)V

    add-int/lit8 v0, v0, 0xa

    move v1, v4

    move-object/from16 v2, v32

    goto :goto_7

    :cond_f
    move-object/from16 v32, v2

    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v27, v18

    move/from16 v41, v7

    move/from16 v40, v23

    :goto_8
    const/4 v9, 0x0

    :goto_9
    const/16 v21, 0x4

    goto/16 :goto_10

    :cond_10
    move-object/from16 v32, v2

    :cond_11
    move-object/from16 v34, v3

    move-object/from16 v36, v5

    move/from16 v37, v7

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    goto/16 :goto_e

    :cond_12
    move-object/from16 v32, v2

    .line 368
    const-string v2, "LocalVariableTypeTable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v28, v18

    move/from16 v41, v7

    move/from16 v40, v23

    move-object/from16 v2, v32

    goto :goto_8

    .line 369
    :cond_13
    const-string v2, "LineNumberTable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 370
    iget v1, v10, Lcom/android/tools/r8/internal/di;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_11

    .line 371
    invoke-virtual {v8, v6}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x8

    :goto_a
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_11

    .line 372
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    .line 373
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    const/16 v17, 0x4

    add-int/lit8 v0, v0, 0x4

    .line 374
    invoke-static {v1, v5}, Lcom/android/tools/r8/internal/Vd;->a(I[Lcom/android/tools/r8/internal/XQ;)V

    .line 375
    aget-object v1, v5, v1

    move/from16 v33, v0

    .line 376
    iget-short v0, v1, Lcom/android/tools/r8/internal/XQ;->b:S

    move-object/from16 v34, v3

    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_14

    or-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    .line 377
    iput-short v0, v1, Lcom/android/tools/r8/internal/XQ;->b:S

    int-to-short v0, v2

    .line 378
    iput-short v0, v1, Lcom/android/tools/r8/internal/XQ;->c:S

    move/from16 v35, v4

    move-object/from16 v36, v5

    move/from16 v37, v7

    goto :goto_d

    .line 379
    :cond_14
    iget-object v0, v1, Lcom/android/tools/r8/internal/XQ;->d:[I

    if-nez v0, :cond_15

    const/4 v0, 0x4

    .line 380
    new-array v3, v0, [I

    iput-object v3, v1, Lcom/android/tools/r8/internal/XQ;->d:[I

    goto :goto_b

    :cond_15
    const/4 v0, 0x4

    .line 381
    :goto_b
    iget-object v3, v1, Lcom/android/tools/r8/internal/XQ;->d:[I

    const/4 v0, 0x0

    aget v31, v3, v0

    move/from16 v35, v4

    const/16 v18, 0x1

    add-int/lit8 v4, v31, 0x1

    aput v4, v3, v0

    .line 382
    array-length v0, v3

    if-lt v4, v0, :cond_16

    .line 383
    array-length v0, v3

    const/16 v17, 0x4

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    move-object/from16 v36, v5

    .line 384
    array-length v5, v3

    move/from16 v37, v7

    const/4 v7, 0x0

    invoke-static {v3, v7, v0, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    iput-object v0, v1, Lcom/android/tools/r8/internal/XQ;->d:[I

    goto :goto_c

    :cond_16
    move-object/from16 v36, v5

    move/from16 v37, v7

    .line 386
    :goto_c
    iget-object v0, v1, Lcom/android/tools/r8/internal/XQ;->d:[I

    aput v2, v0, v4

    :goto_d
    move/from16 v0, v33

    move-object/from16 v3, v34

    move/from16 v1, v35

    move-object/from16 v5, v36

    move/from16 v7, v37

    const/4 v2, 0x2

    goto :goto_a

    :cond_17
    move-object/from16 v34, v3

    move-object/from16 v36, v5

    move/from16 v37, v7

    .line 387
    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    .line 388
    invoke-virtual {v8, v9, v10, v6, v2}, Lcom/android/tools/r8/internal/Vd;->b(Lcom/android/tools/r8/internal/DX;Lcom/android/tools/r8/internal/di;IZ)[I

    move-result-object v0

    move-object v3, v0

    move/from16 v18, v6

    move/from16 v40, v23

    move-object/from16 v2, v32

    move-object/from16 v17, v36

    move/from16 v41, v37

    goto/16 :goto_8

    :cond_18
    const/4 v2, 0x1

    .line 389
    const-string v3, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v4, 0x0

    .line 390
    invoke-virtual {v8, v9, v10, v6, v4}, Lcom/android/tools/r8/internal/Vd;->b(Lcom/android/tools/r8/internal/DX;Lcom/android/tools/r8/internal/di;IZ)[I

    move-result-object v0

    move-object v2, v0

    move v9, v4

    move/from16 v18, v6

    move/from16 v40, v23

    move-object/from16 v3, v34

    move-object/from16 v17, v36

    move/from16 v41, v37

    goto/16 :goto_9

    :cond_19
    const/4 v4, 0x0

    .line 391
    const-string v3, "StackMapTable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 392
    iget v1, v10, Lcom/android/tools/r8/internal/di;->b:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-nez v1, :cond_1a

    add-int/lit8 v0, v0, 0x8

    add-int v1, v6, v30

    move/from16 v24, v0

    move/from16 v25, v1

    :cond_1a
    :goto_e
    move/from16 v21, v3

    move v9, v4

    :goto_f
    move/from16 v18, v6

    move/from16 v40, v23

    move-object/from16 v2, v32

    move-object/from16 v3, v34

    move-object/from16 v17, v36

    move/from16 v41, v37

    goto :goto_10

    :cond_1b
    const/4 v3, 0x4

    .line 393
    const-string v5, "StackMap"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 394
    iget v1, v10, Lcom/android/tools/r8/internal/di;->b:I

    and-int/2addr v1, v3

    if-nez v1, :cond_1a

    add-int/lit8 v0, v0, 0x8

    add-int v1, v6, v30

    move/from16 v24, v0

    move/from16 v25, v1

    move/from16 v21, v3

    move v9, v4

    move/from16 v19, v9

    goto :goto_f

    .line 395
    :cond_1c
    iget-object v5, v10, Lcom/android/tools/r8/internal/di;->a:[Lcom/android/tools/r8/internal/K4;

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move v7, v3

    const/4 v3, 0x2

    move-object v1, v5

    move v5, v2

    move-object/from16 v11, v32

    move-object/from16 v2, v17

    move v9, v3

    move-object/from16 v38, v34

    move v3, v6

    move v9, v4

    move/from16 v4, v30

    move-object/from16 v17, v36

    move-object v5, v13

    move/from16 v18, v6

    move/from16 v40, v23

    move/from16 v6, p3

    move/from16 v21, v7

    move/from16 v41, v37

    move-object/from16 v7, v17

    .line 396
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/Vd;->a([Lcom/android/tools/r8/internal/K4;Ljava/lang/String;II[CI[Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/K4;

    move-result-object v0

    move-object/from16 v7, v26

    .line 397
    iput-object v7, v0, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    move-object/from16 v26, v0

    move-object v2, v11

    move-object/from16 v3, v38

    :goto_10
    add-int v0, v18, v30

    move-object/from16 v9, p1

    move/from16 v11, p3

    move-object/from16 v5, v17

    move/from16 v1, v29

    move/from16 v23, v40

    move/from16 v7, v41

    goto/16 :goto_6

    :cond_1d
    move-object v11, v2

    move-object/from16 v38, v3

    move-object/from16 v17, v5

    move/from16 v41, v7

    move/from16 v40, v23

    move-object/from16 v7, v26

    const/4 v9, 0x0

    const/16 v21, 0x4

    .line 398
    iget v0, v10, Lcom/android/tools/r8/internal/di;->b:I

    const/16 v6, 0x8

    and-int/2addr v0, v6

    if-eqz v0, :cond_1e

    const/16 v18, 0x1

    goto :goto_11

    :cond_1e
    move/from16 v18, v9

    :goto_11
    const/16 v23, 0x6

    const/4 v5, -0x1

    const/4 v4, 0x3

    if-eqz v24, :cond_30

    .line 399
    iput v5, v10, Lcom/android/tools/r8/internal/di;->m:I

    .line 400
    iput v9, v10, Lcom/android/tools/r8/internal/di;->n:I

    .line 401
    iput v9, v10, Lcom/android/tools/r8/internal/di;->o:I

    .line 402
    iput v9, v10, Lcom/android/tools/r8/internal/di;->p:I

    .line 403
    new-array v0, v15, [Ljava/lang/Object;

    iput-object v0, v10, Lcom/android/tools/r8/internal/di;->q:[Ljava/lang/Object;

    .line 404
    iput v9, v10, Lcom/android/tools/r8/internal/di;->r:I

    .line 405
    new-array v1, v14, [Ljava/lang/Object;

    iput-object v1, v10, Lcom/android/tools/r8/internal/di;->s:[Ljava/lang/Object;

    if-eqz v18, :cond_21

    .line 406
    iget-object v1, v10, Lcom/android/tools/r8/internal/di;->f:Ljava/lang/String;

    .line 407
    iget v2, v10, Lcom/android/tools/r8/internal/di;->d:I

    and-int/2addr v2, v6

    if-nez v2, :cond_20

    .line 408
    iget-object v2, v10, Lcom/android/tools/r8/internal/di;->e:Ljava/lang/String;

    const-string v3, "<init>"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 409
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v9

    :goto_12
    const/4 v2, 0x1

    goto :goto_13

    .line 410
    :cond_1f
    iget v2, v8, Lcom/android/tools/r8/internal/Vd;->a:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, v10, Lcom/android/tools/r8/internal/di;->c:[C

    invoke-virtual {v8, v2, v3}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    goto :goto_12

    :cond_20
    move v2, v9

    :goto_13
    move v3, v2

    const/4 v2, 0x1

    :goto_14
    add-int/lit8 v5, v2, 0x1

    .line 411
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v6, 0x46

    if-eq v9, v6, :cond_2a

    const/16 v6, 0x4c

    if-eq v9, v6, :cond_28

    const/16 v6, 0x53

    if-eq v9, v6, :cond_22

    const/16 v6, 0x49

    if-eq v9, v6, :cond_22

    const/16 v6, 0x4a

    if-eq v9, v6, :cond_27

    const/16 v6, 0x5a

    if-eq v9, v6, :cond_22

    const/16 v6, 0x5b

    if-eq v9, v6, :cond_23

    packed-switch v9, :pswitch_data_3

    .line 412
    iput v3, v10, Lcom/android/tools/r8/internal/di;->o:I

    :cond_21
    const/4 v9, 0x1

    goto/16 :goto_1d

    :pswitch_b
    add-int/lit8 v2, v3, 0x1

    .line 413
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    move v3, v2

    move v2, v5

    :goto_15
    const/4 v5, -0x1

    const/16 v6, 0x8

    const/4 v9, 0x0

    goto :goto_14

    :cond_22
    :pswitch_c
    const/4 v9, 0x1

    goto :goto_1b

    .line 414
    :cond_23
    :goto_16
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_24

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 415
    :cond_24
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x4c

    if-ne v6, v9, :cond_25

    const/4 v9, 0x1

    :goto_17
    add-int/2addr v5, v9

    .line 416
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v4, 0x3b

    if-eq v6, v4, :cond_26

    const/4 v4, 0x3

    goto :goto_17

    :cond_25
    const/4 v9, 0x1

    :cond_26
    add-int/lit8 v4, v3, 0x1

    add-int/2addr v5, v9

    .line 417
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    move v3, v4

    :goto_18
    move v2, v5

    :goto_19
    const/4 v4, 0x3

    goto :goto_15

    :cond_27
    const/4 v9, 0x1

    add-int/lit8 v2, v3, 0x1

    .line 418
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    :goto_1a
    move v3, v2

    goto :goto_18

    :goto_1b
    add-int/lit8 v2, v3, 0x1

    .line 419
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_1a

    :cond_28
    const/4 v9, 0x1

    move v2, v5

    .line 420
    :goto_1c
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3b

    if-eq v4, v6, :cond_29

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_29
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v6, v2, 0x1

    .line 421
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    move v3, v4

    move v2, v6

    goto :goto_19

    :cond_2a
    const/4 v9, 0x1

    add-int/lit8 v2, v3, 0x1

    const/4 v4, 0x2

    .line 422
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    goto :goto_1a

    :goto_1d
    move/from16 v0, v24

    :goto_1e
    move/from16 v6, v25

    add-int/lit8 v1, v6, -0x2

    if-ge v0, v1, :cond_2f

    .line 423
    aget-byte v1, v12, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2d

    add-int/lit8 v1, v0, 0x1

    .line 424
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    if-ltz v1, :cond_2d

    move/from16 v5, v41

    if-ge v1, v5, :cond_2c

    add-int v2, v16, v1

    .line 425
    aget-byte v2, v12, v2

    const/16 v4, 0xff

    and-int/2addr v2, v4

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_2e

    .line 426
    aget-object v2, v17, v1

    if-nez v2, :cond_2b

    .line 427
    new-instance v2, Lcom/android/tools/r8/internal/XQ;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    aput-object v2, v17, v1

    .line 428
    :cond_2b
    aget-object v1, v17, v1

    .line 429
    iget-short v2, v1, Lcom/android/tools/r8/internal/XQ;->b:S

    and-int/lit8 v2, v2, -0x2

    int-to-short v2, v2

    iput-short v2, v1, Lcom/android/tools/r8/internal/XQ;->b:S

    goto :goto_20

    :cond_2c
    :goto_1f
    const/16 v4, 0xff

    goto :goto_20

    :cond_2d
    move/from16 v5, v41

    goto :goto_1f

    :cond_2e
    :goto_20
    add-int/lit8 v0, v0, 0x1

    move/from16 v41, v5

    move/from16 v25, v6

    goto :goto_1e

    :cond_2f
    move/from16 v5, v41

    const/16 v4, 0xff

    goto :goto_21

    :cond_30
    move/from16 v6, v25

    move/from16 v5, v41

    const/16 v4, 0xff

    const/4 v9, 0x1

    :goto_21
    if-eqz v18, :cond_31

    .line 430
    iget v0, v10, Lcom/android/tools/r8/internal/di;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_31

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v2, v15

    move/from16 v29, v4

    const/4 v9, 0x3

    move/from16 v4, v20

    move/from16 v20, v5

    const/4 v9, -0x1

    move-object/from16 v5, v25

    .line 431
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/DX;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :goto_22
    move-object/from16 v5, v38

    const/4 v0, 0x0

    goto :goto_23

    :cond_31
    move/from16 v29, v4

    move/from16 v20, v5

    const/4 v9, -0x1

    goto :goto_22

    .line 432
    :goto_23
    invoke-virtual {v8, v5, v0}, Lcom/android/tools/r8/internal/Vd;->a([II)I

    move-result v1

    .line 433
    invoke-virtual {v8, v11, v0}, Lcom/android/tools/r8/internal/Vd;->a([II)I

    move-result v2

    .line 434
    iget v0, v10, Lcom/android/tools/r8/internal/di;->b:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_32

    const/16 v4, 0x21

    move/from16 v25, v4

    goto :goto_24

    :cond_32
    const/16 v25, 0x0

    :goto_24
    move/from16 v30, v2

    move/from16 v3, v16

    move/from16 v4, v24

    const/4 v0, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v24, v1

    :goto_25
    move/from16 v1, v40

    if-ge v3, v1, :cond_5d

    sub-int v9, v3, v16

    .line 435
    aget-object v2, v17, v9

    move-object/from16 v35, v7

    if-eqz v2, :cond_35

    .line 436
    iget v7, v10, Lcom/android/tools/r8/internal/di;->b:I

    const/16 v22, 0x2

    and-int/lit8 v7, v7, 0x2

    move/from16 v37, v15

    move/from16 v15, v29

    if-nez v7, :cond_33

    const/4 v7, 0x1

    :goto_26
    move/from16 v29, v14

    move-object/from16 v14, p1

    goto :goto_27

    :cond_33
    const/4 v7, 0x0

    goto :goto_26

    .line 437
    :goto_27
    invoke-virtual {v14, v2}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;)V

    if-eqz v7, :cond_34

    .line 438
    iget-short v7, v2, Lcom/android/tools/r8/internal/XQ;->b:S

    const/16 v15, 0x80

    and-int/2addr v7, v15

    if-eqz v7, :cond_34

    .line 439
    iget-short v7, v2, Lcom/android/tools/r8/internal/XQ;->c:S

    const v15, 0xffff

    and-int/2addr v7, v15

    invoke-virtual {v14, v7, v2}, Lcom/android/tools/r8/internal/DX;->b(ILcom/android/tools/r8/internal/XQ;)V

    .line 440
    iget-object v7, v2, Lcom/android/tools/r8/internal/XQ;->d:[I

    if-eqz v7, :cond_34

    const/4 v7, 0x1

    .line 441
    :goto_28
    iget-object v15, v2, Lcom/android/tools/r8/internal/XQ;->d:[I

    move/from16 v40, v0

    const/16 v31, 0x0

    aget v0, v15, v31

    if-gt v7, v0, :cond_36

    .line 442
    aget v0, v15, v7

    invoke-virtual {v14, v0, v2}, Lcom/android/tools/r8/internal/DX;->b(ILcom/android/tools/r8/internal/XQ;)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v40

    goto :goto_28

    :cond_34
    move/from16 v40, v0

    goto :goto_29

    :cond_35
    move/from16 v40, v0

    move/from16 v29, v14

    move/from16 v37, v15

    move-object/from16 v14, p1

    :cond_36
    :goto_29
    move v7, v4

    move/from16 v4, v40

    :goto_2a
    if-eqz v7, :cond_49

    .line 443
    iget v0, v10, Lcom/android/tools/r8/internal/di;->m:I

    const/4 v2, -0x1

    if-eq v0, v9, :cond_38

    if-ne v0, v2, :cond_37

    goto :goto_2c

    :cond_37
    move/from16 v42, v1

    move/from16 v44, v2

    move/from16 v34, v3

    move-object v15, v5

    move-object/from16 v43, v11

    :goto_2b
    move v11, v7

    move/from16 v7, v21

    goto/16 :goto_38

    :cond_38
    :goto_2c
    if-eq v0, v2, :cond_3b

    if-eqz v19, :cond_39

    if-eqz v18, :cond_3a

    :cond_39
    move/from16 v42, v1

    move/from16 v34, v3

    move-object v15, v5

    move-object/from16 v43, v11

    const/16 v11, 0x40

    goto :goto_2d

    .line 444
    :cond_3a
    iget v2, v10, Lcom/android/tools/r8/internal/di;->n:I

    iget v4, v10, Lcom/android/tools/r8/internal/di;->p:I

    iget-object v15, v10, Lcom/android/tools/r8/internal/di;->q:[Ljava/lang/Object;

    iget v0, v10, Lcom/android/tools/r8/internal/di;->r:I

    move-object/from16 v40, v5

    iget-object v5, v10, Lcom/android/tools/r8/internal/di;->s:[Ljava/lang/Object;

    move/from16 v41, v0

    move-object/from16 v0, p1

    move/from16 v42, v1

    move v1, v2

    move-object/from16 v43, v11

    const/16 v11, 0x40

    move v2, v4

    move/from16 v34, v3

    move-object v3, v15

    move/from16 v4, v41

    move-object/from16 v15, v40

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/DX;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_2e

    .line 445
    :goto_2d
    iget v2, v10, Lcom/android/tools/r8/internal/di;->o:I

    iget-object v3, v10, Lcom/android/tools/r8/internal/di;->q:[Ljava/lang/Object;

    iget v4, v10, Lcom/android/tools/r8/internal/di;->r:I

    iget-object v5, v10, Lcom/android/tools/r8/internal/di;->s:[Ljava/lang/Object;

    const/4 v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/DX;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :goto_2e
    const/16 v40, 0x0

    goto :goto_2f

    :cond_3b
    move/from16 v42, v1

    move/from16 v34, v3

    move-object v15, v5

    move-object/from16 v43, v11

    const/16 v11, 0x40

    move/from16 v40, v4

    :goto_2f
    if-ge v7, v6, :cond_48

    .line 446
    iget-object v5, v10, Lcom/android/tools/r8/internal/di;->c:[C

    .line 447
    iget-object v4, v10, Lcom/android/tools/r8/internal/di;->g:[Lcom/android/tools/r8/internal/XQ;

    if-eqz v19, :cond_3c

    .line 448
    iget-object v0, v8, Lcom/android/tools/r8/internal/Vd;->b:[B

    add-int/lit8 v1, v7, 0x1

    aget-byte v0, v0, v7

    const/16 v2, 0xff

    and-int/lit16 v3, v0, 0xff

    move v0, v3

    const/4 v2, 0x0

    const/4 v3, -0x1

    goto :goto_30

    :cond_3c
    const/4 v3, -0x1

    .line 449
    iput v3, v10, Lcom/android/tools/r8/internal/di;->m:I

    move v1, v7

    const/16 v0, 0xff

    const/4 v2, 0x0

    .line 450
    :goto_30
    iput v2, v10, Lcom/android/tools/r8/internal/di;->p:I

    if-ge v0, v11, :cond_3d

    const/4 v7, 0x3

    .line 451
    iput v7, v10, Lcom/android/tools/r8/internal/di;->n:I

    .line 452
    iput v2, v10, Lcom/android/tools/r8/internal/di;->r:I

    move/from16 v44, v3

    move-object/from16 p3, v4

    move/from16 v7, v21

    goto/16 :goto_37

    :cond_3d
    const/16 v7, 0x80

    if-ge v0, v7, :cond_3e

    add-int/lit8 v36, v0, -0x40

    .line 453
    iget-object v2, v10, Lcom/android/tools/r8/internal/di;->s:[Ljava/lang/Object;

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v44, v3

    move/from16 v3, v41

    move-object/from16 p3, v4

    move-object v4, v5

    move-object/from16 v5, p3

    .line 454
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Vd;->a(I[Ljava/lang/Object;I[C[Lcom/android/tools/r8/internal/XQ;)I

    move-result v0

    move/from16 v4, v21

    .line 455
    iput v4, v10, Lcom/android/tools/r8/internal/di;->n:I

    const/4 v1, 0x1

    .line 456
    iput v1, v10, Lcom/android/tools/r8/internal/di;->r:I

    move v1, v0

    move v7, v4

    move/from16 v0, v36

    goto/16 :goto_37

    :cond_3e
    move/from16 v44, v3

    move-object/from16 p3, v4

    move/from16 v4, v21

    const/16 v2, 0xf7

    if-lt v0, v2, :cond_47

    .line 457
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v21

    add-int/lit8 v2, v1, 0x2

    const/16 v3, 0xf7

    if-ne v0, v3, :cond_40

    .line 458
    iget-object v3, v10, Lcom/android/tools/r8/internal/di;->s:[Ljava/lang/Object;

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move v1, v2

    move-object v2, v3

    move/from16 v3, v36

    move v7, v4

    move-object v4, v5

    move-object/from16 v5, p3

    .line 459
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Vd;->a(I[Ljava/lang/Object;I[C[Lcom/android/tools/r8/internal/XQ;)I

    move-result v0

    .line 460
    iput v7, v10, Lcom/android/tools/r8/internal/di;->n:I

    const/4 v1, 0x1

    .line 461
    iput v1, v10, Lcom/android/tools/r8/internal/di;->r:I

    move v1, v0

    :cond_3f
    :goto_31
    move/from16 v0, v21

    goto/16 :goto_37

    :cond_40
    move v7, v4

    const/16 v3, 0xf8

    const/16 v4, 0xfb

    if-lt v0, v3, :cond_41

    if-ge v0, v4, :cond_41

    const/4 v3, 0x2

    .line 462
    iput v3, v10, Lcom/android/tools/r8/internal/di;->n:I

    rsub-int v0, v0, 0xfb

    .line 463
    iput v0, v10, Lcom/android/tools/r8/internal/di;->p:I

    .line 464
    iget v1, v10, Lcom/android/tools/r8/internal/di;->o:I

    sub-int/2addr v1, v0

    iput v1, v10, Lcom/android/tools/r8/internal/di;->o:I

    const/4 v3, 0x0

    .line 465
    iput v3, v10, Lcom/android/tools/r8/internal/di;->r:I

    goto :goto_32

    :cond_41
    const/4 v3, 0x0

    if-ne v0, v4, :cond_42

    const/4 v4, 0x3

    .line 466
    iput v4, v10, Lcom/android/tools/r8/internal/di;->n:I

    .line 467
    iput v3, v10, Lcom/android/tools/r8/internal/di;->r:I

    :goto_32
    move v1, v2

    goto :goto_31

    :cond_42
    const/16 v3, 0xff

    if-ge v0, v3, :cond_45

    if-eqz v18, :cond_43

    .line 468
    iget v4, v10, Lcom/android/tools/r8/internal/di;->o:I

    goto :goto_33

    :cond_43
    const/4 v4, 0x0

    :goto_33
    add-int/lit16 v3, v0, -0xfb

    move v1, v2

    move/from16 v41, v3

    :goto_34
    if-lez v41, :cond_44

    .line 469
    iget-object v2, v10, Lcom/android/tools/r8/internal/di;->q:[Ljava/lang/Object;

    add-int/lit8 v45, v4, 0x1

    move-object/from16 v0, p0

    move v11, v3

    move v3, v4

    move-object v4, v5

    move-object/from16 v46, v5

    move-object/from16 v5, p3

    .line 470
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Vd;->a(I[Ljava/lang/Object;I[C[Lcom/android/tools/r8/internal/XQ;)I

    move-result v1

    add-int/lit8 v41, v41, -0x1

    move v3, v11

    move/from16 v4, v45

    move-object/from16 v5, v46

    const/16 v11, 0x40

    goto :goto_34

    :cond_44
    move v11, v3

    const/4 v0, 0x1

    .line 471
    iput v0, v10, Lcom/android/tools/r8/internal/di;->n:I

    .line 472
    iput v11, v10, Lcom/android/tools/r8/internal/di;->p:I

    .line 473
    iget v0, v10, Lcom/android/tools/r8/internal/di;->o:I

    add-int/2addr v0, v11

    iput v0, v10, Lcom/android/tools/r8/internal/di;->o:I

    const/4 v0, 0x0

    .line 474
    iput v0, v10, Lcom/android/tools/r8/internal/di;->r:I

    goto :goto_31

    :cond_45
    move-object/from16 v46, v5

    const/4 v0, 0x0

    .line 475
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v11

    add-int/lit8 v1, v1, 0x4

    .line 476
    iput v0, v10, Lcom/android/tools/r8/internal/di;->n:I

    .line 477
    iput v11, v10, Lcom/android/tools/r8/internal/di;->p:I

    .line 478
    iput v11, v10, Lcom/android/tools/r8/internal/di;->o:I

    const/4 v5, 0x0

    :goto_35
    if-ge v5, v11, :cond_46

    .line 479
    iget-object v2, v10, Lcom/android/tools/r8/internal/di;->q:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move v3, v5

    move-object/from16 v4, v46

    move/from16 v41, v5

    move-object/from16 v5, p3

    .line 480
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Vd;->a(I[Ljava/lang/Object;I[C[Lcom/android/tools/r8/internal/XQ;)I

    move-result v1

    add-int/lit8 v5, v41, 0x1

    goto :goto_35

    .line 481
    :cond_46
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v11

    add-int/lit8 v1, v1, 0x2

    .line 482
    iput v11, v10, Lcom/android/tools/r8/internal/di;->r:I

    const/4 v5, 0x0

    :goto_36
    if-ge v5, v11, :cond_3f

    .line 483
    iget-object v2, v10, Lcom/android/tools/r8/internal/di;->s:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move v3, v5

    move-object/from16 v4, v46

    move/from16 v41, v5

    move-object/from16 v5, p3

    .line 484
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Vd;->a(I[Ljava/lang/Object;I[C[Lcom/android/tools/r8/internal/XQ;)I

    move-result v1

    add-int/lit8 v5, v41, 0x1

    goto :goto_36

    .line 485
    :goto_37
    iget v2, v10, Lcom/android/tools/r8/internal/di;->m:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    iput v0, v10, Lcom/android/tools/r8/internal/di;->m:I

    move-object/from16 v2, p3

    .line 486
    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/Vd;->b(I[Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/XQ;

    move/from16 v21, v7

    move-object v5, v15

    move/from16 v3, v34

    move/from16 v4, v40

    move-object/from16 v11, v43

    move v7, v1

    move/from16 v1, v42

    goto/16 :goto_2a

    .line 487
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_48
    move-object v5, v15

    move/from16 v3, v34

    move/from16 v4, v40

    move/from16 v1, v42

    move-object/from16 v11, v43

    const/4 v7, 0x0

    goto/16 :goto_2a

    :cond_49
    move/from16 v42, v1

    move/from16 v34, v3

    move-object v15, v5

    move-object/from16 v43, v11

    const/16 v44, -0x1

    goto/16 :goto_2b

    :goto_38
    if-eqz v4, :cond_4b

    .line 488
    iget v0, v10, Lcom/android/tools/r8/internal/di;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_4a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    .line 489
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/DX;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_4a
    const/16 v21, 0x0

    goto :goto_39

    :cond_4b
    move/from16 v21, v4

    .line 490
    :goto_39
    aget-byte v0, v12, v34

    const/16 v1, 0xff

    and-int/lit16 v5, v0, 0xff

    const/16 v36, 0x5

    packed-switch v5, :pswitch_data_4

    .line 491
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_d
    add-int/lit8 v3, v34, 0x1

    .line 492
    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v0

    add-int/2addr v0, v9

    aget-object v0, v17, v0

    const/16 v1, 0xc8

    .line 493
    invoke-virtual {v14, v1, v0}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/XQ;)V

    move/from16 p3, v6

    move/from16 v2, v36

    const/16 v3, 0x8

    const/16 v21, 0x1

    :goto_3a
    const/16 v39, 0x84

    goto/16 :goto_4d

    :pswitch_e
    const/16 v0, 0xda

    if-ge v5, v0, :cond_4c

    add-int/lit8 v5, v5, -0x31

    goto :goto_3b

    :cond_4c
    add-int/lit8 v5, v5, -0x14

    :goto_3b
    add-int/lit8 v3, v34, 0x1

    .line 494
    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    add-int/2addr v0, v9

    aget-object v0, v17, v0

    const/16 v1, 0xa7

    if-eq v5, v1, :cond_50

    const/16 v1, 0xa8

    if-ne v5, v1, :cond_4d

    goto :goto_3d

    :cond_4d
    const/16 v1, 0xa7

    if-ge v5, v1, :cond_4e

    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x1

    xor-int/lit8 v2, v5, 0x1

    sub-int/2addr v2, v1

    goto :goto_3c

    :cond_4e
    xor-int/lit8 v2, v5, 0x1

    :goto_3c
    add-int/lit8 v1, v9, 0x3

    .line 495
    aget-object v3, v17, v1

    if-nez v3, :cond_4f

    .line 496
    new-instance v3, Lcom/android/tools/r8/internal/XQ;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    aput-object v3, v17, v1

    .line 497
    :cond_4f
    aget-object v1, v17, v1

    .line 498
    iget-short v3, v1, Lcom/android/tools/r8/internal/XQ;->b:S

    and-int/lit8 v3, v3, -0x2

    int-to-short v3, v3

    iput-short v3, v1, Lcom/android/tools/r8/internal/XQ;->b:S

    .line 499
    invoke-virtual {v14, v2, v1}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/XQ;)V

    const/16 v1, 0xc8

    .line 500
    invoke-virtual {v14, v1, v0}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/XQ;)V

    move/from16 p3, v6

    const/4 v2, 0x1

    const/16 v39, 0x84

    goto/16 :goto_46

    :cond_50
    :goto_3d
    add-int/lit8 v5, v5, 0x21

    .line 501
    invoke-virtual {v14, v5, v0}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/XQ;)V

    move/from16 p3, v6

    const/16 v39, 0x84

    goto/16 :goto_45

    :pswitch_f
    sub-int v5, v5, v25

    add-int/lit8 v3, v34, 0x1

    .line 502
    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v0

    add-int/2addr v0, v9

    aget-object v0, v17, v0

    .line 503
    invoke-virtual {v14, v5, v0}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/XQ;)V

    :goto_3e
    move/from16 p3, v6

    move/from16 v2, v36

    :goto_3f
    const/16 v3, 0x8

    goto :goto_3a

    :pswitch_10
    add-int/lit8 v3, v34, 0x1

    .line 504
    invoke-virtual {v8, v3, v13}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v34, 0x3

    aget-byte v1, v12, v3

    const/16 v2, 0xff

    and-int/2addr v1, v2

    .line 505
    invoke-virtual {v14, v1, v0}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;)V

    move/from16 p3, v6

    move v2, v7

    goto :goto_3f

    :pswitch_11
    const/16 v2, 0xff

    add-int/lit8 v3, v34, 0x1

    .line 506
    aget-byte v0, v12, v3

    and-int/2addr v0, v2

    const/16 v4, 0x84

    if-ne v0, v4, :cond_51

    add-int/lit8 v3, v34, 0x2

    .line 507
    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    add-int/lit8 v3, v34, 0x4

    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/Vd;->c(I)S

    move-result v1

    .line 508
    invoke-virtual {v14, v0, v1}, Lcom/android/tools/r8/internal/DX;->a(II)V

    move/from16 v39, v4

    move/from16 p3, v6

    move/from16 v2, v23

    :goto_40
    const/16 v3, 0x8

    goto/16 :goto_4d

    :cond_51
    add-int/lit8 v3, v34, 0x2

    .line 509
    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    invoke-virtual {v14, v0, v1}, Lcom/android/tools/r8/internal/DX;->d(II)V

    move/from16 v39, v4

    move/from16 p3, v6

    move v2, v7

    goto :goto_40

    :pswitch_12
    const/16 v4, 0x84

    add-int/lit8 v3, v34, 0x1

    .line 510
    invoke-virtual {v8, v3, v13}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v5, v0}, Lcom/android/tools/r8/internal/DX;->c(ILjava/lang/String;)V

    move/from16 v39, v4

    move/from16 p3, v6

    :goto_41
    const/4 v2, 0x3

    goto :goto_40

    :pswitch_13
    const/16 v4, 0x84

    .line 511
    iget-object v0, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    add-int/lit8 v3, v34, 0x1

    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    aget v0, v0, v1

    .line 512
    iget-object v1, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    aget v1, v1, v2

    .line 513
    invoke-virtual {v8, v1, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    add-int/2addr v1, v3

    .line 514
    invoke-virtual {v8, v1, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v1

    .line 515
    iget-object v3, v8, Lcom/android/tools/r8/internal/Vd;->f:[I

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    aget v0, v3, v0

    .line 516
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    invoke-virtual {v8, v3, v13}, Lcom/android/tools/r8/internal/Vd;->b(I[C)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Qz;

    add-int/lit8 v5, v0, 0x2

    .line 517
    invoke-virtual {v8, v5}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v5

    new-array v4, v5, [Ljava/lang/Object;

    add-int/2addr v0, v7

    const/4 v7, 0x0

    :goto_42
    if-ge v7, v5, :cond_52

    move/from16 p3, v5

    .line 518
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v5

    invoke-virtual {v8, v5, v13}, Lcom/android/tools/r8/internal/Vd;->b(I[C)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    add-int/2addr v0, v5

    add-int/lit8 v7, v7, 0x1

    move/from16 v5, p3

    goto :goto_42

    .line 519
    :cond_52
    invoke-virtual {v14, v2, v1, v3, v4}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V

    goto/16 :goto_3e

    .line 520
    :pswitch_14
    iget-object v0, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    add-int/lit8 v3, v34, 0x1

    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    aget v0, v0, v1

    .line 521
    iget-object v1, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    aget v1, v1, v2

    .line 522
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-virtual {v8, v1, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    add-int/2addr v1, v4

    .line 524
    invoke-virtual {v8, v1, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0xb6

    if-ge v5, v1, :cond_53

    .line 525
    invoke-virtual {v14, v5, v2, v3, v4}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 p3, v6

    const/16 v39, 0x84

    move v6, v5

    goto :goto_44

    :cond_53
    add-int/lit8 v0, v0, -0x1

    .line 526
    aget-byte v0, v12, v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_54

    const/4 v7, 0x1

    goto :goto_43

    :cond_54
    const/4 v7, 0x0

    :goto_43
    move-object/from16 v0, p1

    move v1, v5

    const/16 v39, 0x84

    move/from16 p3, v6

    move v6, v5

    move v5, v7

    .line 527
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_44
    const/16 v0, 0xb9

    if-ne v6, v0, :cond_55

    move/from16 v2, v36

    goto/16 :goto_40

    :cond_55
    :goto_45
    move/from16 v2, v21

    :goto_46
    move/from16 v21, v2

    goto/16 :goto_41

    :pswitch_15
    move/from16 p3, v6

    const/16 v39, 0x84

    and-int/lit8 v0, v9, 0x3

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    add-int v0, v0, v34

    .line 528
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v1

    add-int/2addr v1, v9

    aget-object v1, v17, v1

    add-int/lit8 v2, v0, 0x4

    .line 529
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v2

    const/16 v3, 0x8

    add-int/2addr v0, v3

    .line 530
    new-array v4, v2, [I

    .line 531
    new-array v5, v2, [Lcom/android/tools/r8/internal/XQ;

    const/4 v6, 0x0

    :goto_47
    if-ge v6, v2, :cond_56

    .line 532
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v7, v0, 0x4

    .line 533
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v7

    add-int/2addr v7, v9

    aget-object v7, v17, v7

    aput-object v7, v5, v6

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 534
    :cond_56
    invoke-virtual {v14, v1, v4, v5}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;[I[Lcom/android/tools/r8/internal/XQ;)V

    :goto_48
    move v1, v0

    move/from16 v0, v21

    move/from16 v2, v24

    move/from16 v4, v32

    goto/16 :goto_4e

    :pswitch_16
    move/from16 p3, v6

    const/16 v3, 0x8

    const/16 v39, 0x84

    and-int/lit8 v0, v9, 0x3

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    add-int v0, v0, v34

    .line 535
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v2

    add-int/2addr v2, v9

    aget-object v2, v17, v2

    add-int/lit8 v4, v0, 0x4

    .line 536
    invoke-virtual {v8, v4}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v4

    add-int/lit8 v5, v0, 0x8

    .line 537
    invoke-virtual {v8, v5}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v5

    add-int/lit8 v0, v0, 0xc

    sub-int v6, v5, v4

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 538
    new-array v7, v6, [Lcom/android/tools/r8/internal/XQ;

    const/4 v1, 0x0

    :goto_49
    if-ge v1, v6, :cond_57

    .line 539
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v26

    add-int v26, v26, v9

    aget-object v26, v17, v26

    aput-object v26, v7, v1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 540
    :cond_57
    invoke-virtual {v14, v4, v5, v2, v7}, Lcom/android/tools/r8/internal/DX;->a(IILcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;)V

    goto :goto_48

    :pswitch_17
    move/from16 p3, v6

    const/16 v3, 0x8

    const/16 v39, 0x84

    move v6, v5

    add-int/lit8 v0, v34, 0x1

    .line 541
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->c(I)S

    move-result v0

    add-int/2addr v0, v9

    aget-object v0, v17, v0

    .line 542
    invoke-virtual {v14, v6, v0}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/XQ;)V

    :goto_4a
    const/4 v2, 0x3

    goto/16 :goto_4d

    :pswitch_18
    move/from16 p3, v6

    const/16 v3, 0x8

    const/16 v39, 0x84

    add-int/lit8 v0, v34, 0x1

    .line 543
    aget-byte v0, v12, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    add-int/lit8 v1, v34, 0x2

    aget-byte v1, v12, v1

    invoke-virtual {v14, v0, v1}, Lcom/android/tools/r8/internal/DX;->a(II)V

    goto :goto_4a

    :pswitch_19
    move/from16 p3, v6

    const/16 v3, 0x8

    const/16 v39, 0x84

    move v6, v5

    add-int/lit8 v5, v6, -0x3b

    shr-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x36

    const/4 v1, 0x3

    and-int/lit8 v2, v5, 0x3

    .line 544
    invoke-virtual {v14, v0, v2}, Lcom/android/tools/r8/internal/DX;->d(II)V

    :goto_4b
    const/4 v2, 0x1

    goto/16 :goto_4d

    :pswitch_1a
    move/from16 p3, v6

    const/4 v1, 0x3

    const/16 v3, 0x8

    const/16 v39, 0x84

    move v6, v5

    add-int/lit8 v5, v6, -0x1a

    shr-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x15

    and-int/lit8 v2, v5, 0x3

    .line 545
    invoke-virtual {v14, v0, v2}, Lcom/android/tools/r8/internal/DX;->d(II)V

    goto :goto_4b

    :pswitch_1b
    move/from16 p3, v6

    const/16 v3, 0x8

    const/16 v39, 0x84

    move v6, v5

    add-int/lit8 v0, v34, 0x1

    .line 546
    aget-byte v0, v12, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    invoke-virtual {v14, v6, v0}, Lcom/android/tools/r8/internal/DX;->d(II)V

    :goto_4c
    const/4 v2, 0x2

    goto :goto_4d

    :pswitch_1c
    move/from16 p3, v6

    const/16 v3, 0x8

    const/16 v39, 0x84

    add-int/lit8 v0, v34, 0x1

    .line 547
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->b(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/Object;)V

    goto :goto_4a

    :pswitch_1d
    move/from16 p3, v6

    const/16 v3, 0x8

    const/16 v39, 0x84

    add-int/lit8 v0, v34, 0x1

    .line 548
    aget-byte v0, v12, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->b(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/Object;)V

    goto :goto_4c

    :pswitch_1e
    move/from16 p3, v6

    const/16 v3, 0x8

    const/16 v39, 0x84

    move v6, v5

    add-int/lit8 v0, v34, 0x1

    .line 549
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->c(I)S

    move-result v0

    invoke-virtual {v14, v6, v0}, Lcom/android/tools/r8/internal/DX;->b(II)V

    goto/16 :goto_4a

    :pswitch_1f
    move/from16 p3, v6

    const/16 v3, 0x8

    const/16 v39, 0x84

    move v6, v5

    add-int/lit8 v0, v34, 0x1

    .line 550
    aget-byte v0, v12, v0

    invoke-virtual {v14, v6, v0}, Lcom/android/tools/r8/internal/DX;->b(II)V

    goto :goto_4c

    :pswitch_20
    move/from16 p3, v6

    const/16 v3, 0x8

    const/16 v39, 0x84

    move v6, v5

    .line 551
    invoke-virtual {v14, v6}, Lcom/android/tools/r8/internal/DX;->a(I)V

    goto :goto_4b

    :goto_4d
    add-int v0, v34, v2

    goto/16 :goto_48

    :goto_4e
    if-eqz v15, :cond_59

    .line 552
    array-length v5, v15

    if-ge v4, v5, :cond_59

    if-gt v2, v9, :cond_59

    if-ne v2, v9, :cond_58

    .line 553
    aget v2, v15, v4

    .line 554
    invoke-virtual {v8, v10, v2}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/di;I)I

    move-result v2

    .line 555
    invoke-virtual {v8, v2, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    add-int/2addr v2, v6

    .line 556
    iget v6, v10, Lcom/android/tools/r8/internal/di;->h:I

    iget-object v7, v10, Lcom/android/tools/r8/internal/di;->i:Lcom/android/tools/r8/internal/tu0;

    const/4 v3, 0x1

    .line 557
    invoke-virtual {v14, v6, v7, v5, v3}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v5

    .line 558
    invoke-virtual {v8, v5, v2, v3, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    :cond_58
    add-int/lit8 v4, v4, 0x1

    .line 559
    invoke-virtual {v8, v15, v4}, Lcom/android/tools/r8/internal/Vd;->a([II)I

    move-result v2

    const/16 v3, 0x8

    goto :goto_4e

    :cond_59
    move/from16 v3, v30

    move/from16 v5, v33

    :goto_4f
    if-eqz v43, :cond_5c

    move-object/from16 v7, v43

    .line 560
    array-length v6, v7

    if-ge v5, v6, :cond_5b

    if-gt v3, v9, :cond_5b

    if-ne v3, v9, :cond_5a

    .line 561
    aget v3, v7, v5

    .line 562
    invoke-virtual {v8, v10, v3}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/di;I)I

    move-result v3

    .line 563
    invoke-virtual {v8, v3, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x2

    add-int/lit8 v3, v3, 0x2

    move/from16 v21, v0

    .line 564
    iget v0, v10, Lcom/android/tools/r8/internal/di;->h:I

    move/from16 v24, v1

    iget-object v1, v10, Lcom/android/tools/r8/internal/di;->i:Lcom/android/tools/r8/internal/tu0;

    move/from16 v30, v9

    const/4 v9, 0x0

    .line 565
    invoke-virtual {v14, v0, v1, v6, v9}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v0

    const/4 v1, 0x1

    .line 566
    invoke-virtual {v8, v0, v3, v1, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    goto :goto_50

    :cond_5a
    move/from16 v21, v0

    move/from16 v24, v1

    move/from16 v30, v9

    const/4 v9, 0x0

    :goto_50
    add-int/lit8 v5, v5, 0x1

    .line 567
    invoke-virtual {v8, v7, v5}, Lcom/android/tools/r8/internal/Vd;->a([II)I

    move-result v3

    move-object/from16 v43, v7

    move/from16 v0, v21

    move/from16 v1, v24

    move/from16 v9, v30

    goto :goto_4f

    :cond_5b
    move/from16 v21, v0

    move/from16 v24, v1

    :goto_51
    const/4 v9, 0x0

    goto :goto_52

    :cond_5c
    move/from16 v21, v0

    move/from16 v24, v1

    move-object/from16 v7, v43

    goto :goto_51

    :goto_52
    move/from16 v6, p3

    move/from16 v30, v3

    move/from16 v32, v4

    move/from16 v33, v5

    move v4, v11

    move-object v5, v15

    move/from16 v0, v21

    move/from16 v3, v24

    move/from16 v14, v29

    move/from16 v15, v37

    move/from16 v40, v42

    move/from16 v9, v44

    const/16 v21, 0x4

    const/16 v29, 0xff

    move/from16 v24, v2

    move-object v11, v7

    move-object/from16 v7, v35

    goto/16 :goto_25

    :cond_5d
    move-object/from16 v35, v7

    move-object v7, v11

    move/from16 v29, v14

    move/from16 v37, v15

    const/4 v9, 0x0

    move-object/from16 v14, p1

    move-object v15, v5

    .line 568
    aget-object v0, v17, v20

    if-eqz v0, :cond_5e

    .line 569
    invoke-virtual {v14, v0}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;)V

    :cond_5e
    move/from16 v4, v27

    if-eqz v4, :cond_63

    .line 570
    iget v0, v10, Lcom/android/tools/r8/internal/di;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-nez v0, :cond_63

    move/from16 v0, v28

    if-eqz v0, :cond_60

    .line 571
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    const/4 v3, 0x3

    mul-int/2addr v2, v3

    new-array v6, v2, [I

    add-int/lit8 v28, v0, 0x2

    move/from16 v0, v28

    :goto_53
    if-lez v2, :cond_5f

    add-int/lit8 v1, v2, -0x1

    add-int/lit8 v3, v0, 0x6

    .line 572
    aput v3, v6, v1

    add-int/lit8 v1, v2, -0x2

    add-int/lit8 v3, v0, 0x8

    .line 573
    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    aput v3, v6, v1

    add-int/lit8 v2, v2, -0x3

    .line 574
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    aput v1, v6, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_53

    :cond_5f
    move-object v11, v6

    goto :goto_54

    :cond_60
    const/4 v11, 0x0

    .line 575
    :goto_54
    invoke-virtual {v8, v4}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    const/4 v1, 0x2

    add-int/lit8 v27, v4, 0x2

    move/from16 v1, v27

    :goto_55
    add-int/lit8 v12, v0, -0x1

    if-lez v0, :cond_63

    .line 576
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    add-int/lit8 v2, v1, 0x2

    .line 577
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    add-int/lit8 v3, v1, 0x4

    .line 578
    invoke-virtual {v8, v3, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x6

    .line 579
    invoke-virtual {v8, v4, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x8

    .line 580
    invoke-virtual {v8, v5}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v6

    add-int/lit8 v16, v1, 0xa

    if-eqz v11, :cond_62

    move v1, v9

    .line 581
    :goto_56
    array-length v5, v11

    if-ge v1, v5, :cond_62

    .line 582
    aget v5, v11, v1

    if-ne v5, v0, :cond_61

    add-int/lit8 v5, v1, 0x1

    aget v5, v11, v5

    if-ne v5, v6, :cond_61

    add-int/lit8 v1, v1, 0x2

    .line 583
    aget v1, v11, v1

    invoke-virtual {v8, v1, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_57

    :cond_61
    add-int/lit8 v1, v1, 0x3

    goto :goto_56

    :cond_62
    const/4 v5, 0x0

    .line 584
    :goto_57
    aget-object v18, v17, v0

    add-int/2addr v0, v2

    aget-object v19, v17, v0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;I)V

    move v0, v12

    move/from16 v1, v16

    goto :goto_55

    :cond_63
    if-eqz v15, :cond_66

    .line 585
    array-length v11, v15

    move v12, v9

    :goto_58
    if-ge v12, v11, :cond_66

    aget v0, v15, v12

    .line 586
    iget-object v1, v8, Lcom/android/tools/r8/internal/Vd;->b:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v2, 0x40

    if-eq v1, v2, :cond_65

    const/16 v2, 0x41

    if-ne v1, v2, :cond_64

    goto :goto_59

    :cond_64
    move/from16 v17, v11

    move-object/from16 v26, v35

    move-object v11, v7

    goto :goto_5a

    .line 587
    :cond_65
    :goto_59
    invoke-virtual {v8, v10, v0}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/di;I)I

    move-result v0

    .line 588
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x2

    add-int/lit8 v5, v0, 0x2

    .line 589
    iget v1, v10, Lcom/android/tools/r8/internal/di;->h:I

    iget-object v2, v10, Lcom/android/tools/r8/internal/di;->i:Lcom/android/tools/r8/internal/tu0;

    iget-object v3, v10, Lcom/android/tools/r8/internal/di;->j:[Lcom/android/tools/r8/internal/XQ;

    iget-object v4, v10, Lcom/android/tools/r8/internal/di;->k:[Lcom/android/tools/r8/internal/XQ;

    iget-object v0, v10, Lcom/android/tools/r8/internal/di;->l:[I

    const/16 v16, 0x1

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move v9, v5

    move-object/from16 v5, v17

    move/from16 v17, v11

    move-object/from16 v26, v35

    move-object v11, v7

    move/from16 v7, v16

    .line 590
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/tu0;[Lcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;[ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v0

    const/4 v1, 0x1

    .line 591
    invoke-virtual {v8, v0, v9, v1, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    :goto_5a
    add-int/lit8 v12, v12, 0x1

    move-object v7, v11

    move/from16 v11, v17

    move-object/from16 v35, v26

    const/4 v9, 0x0

    goto :goto_58

    :cond_66
    move-object v11, v7

    move-object/from16 v26, v35

    if-eqz v11, :cond_69

    .line 592
    array-length v9, v11

    const/4 v12, 0x0

    :goto_5b
    if-ge v12, v9, :cond_69

    aget v0, v11, v12

    .line 593
    iget-object v1, v8, Lcom/android/tools/r8/internal/Vd;->b:[B

    aget-byte v1, v1, v0

    const/16 v15, 0xff

    and-int/2addr v1, v15

    const/16 v7, 0x40

    if-eq v1, v7, :cond_68

    const/16 v2, 0x41

    if-ne v1, v2, :cond_67

    goto :goto_5c

    :cond_67
    move/from16 v18, v7

    const/4 v1, 0x1

    const/16 v16, 0x2

    goto :goto_5d

    .line 594
    :cond_68
    :goto_5c
    invoke-virtual {v8, v10, v0}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/di;I)I

    move-result v0

    .line 595
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x2

    add-int/lit8 v5, v0, 0x2

    .line 596
    iget v1, v10, Lcom/android/tools/r8/internal/di;->h:I

    iget-object v2, v10, Lcom/android/tools/r8/internal/di;->i:Lcom/android/tools/r8/internal/tu0;

    iget-object v3, v10, Lcom/android/tools/r8/internal/di;->j:[Lcom/android/tools/r8/internal/XQ;

    iget-object v4, v10, Lcom/android/tools/r8/internal/di;->k:[Lcom/android/tools/r8/internal/XQ;

    iget-object v0, v10, Lcom/android/tools/r8/internal/di;->l:[I

    const/16 v17, 0x0

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move v15, v5

    move-object/from16 v5, v18

    move/from16 v18, v7

    move/from16 v7, v17

    .line 597
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/tu0;[Lcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;[ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v0

    const/4 v1, 0x1

    .line 598
    invoke-virtual {v8, v0, v15, v1, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    :goto_5d
    add-int/lit8 v12, v12, 0x1

    goto :goto_5b

    :cond_69
    move-object/from16 v0, v26

    :goto_5e
    if-eqz v0, :cond_6a

    .line 599
    iget-object v1, v0, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    const/4 v2, 0x0

    .line 600
    iput-object v2, v0, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    .line 601
    invoke-virtual {v14, v0}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/K4;)V

    move-object v0, v1

    goto :goto_5e

    :cond_6a
    move/from16 v0, v29

    move/from16 v1, v37

    .line 602
    invoke-virtual {v14, v0, v1}, Lcom/android/tools/r8/internal/DX;->c(II)V

    return-void

    .line 603
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x36
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x42
        :pswitch_c
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_18
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_1b
        :pswitch_16
        :pswitch_15
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_1f
        :pswitch_12
        :pswitch_20
        :pswitch_20
        :pswitch_12
        :pswitch_12
        :pswitch_20
        :pswitch_20
        :pswitch_11
        :pswitch_10
        :pswitch_17
        :pswitch_17
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;Lcom/android/tools/r8/internal/di;IZ)V
    .locals 5

    .line 628
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->b:[B

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    .line 629
    invoke-virtual {p1, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(IZ)V

    .line 630
    iget-object p2, p2, Lcom/android/tools/r8/internal/di;->c:[C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 631
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    .line 632
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    .line 633
    invoke-virtual {p1, v0, v2, p4}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v2

    const/4 v4, 0x1

    .line 634
    invoke-virtual {p0, v2, v1, v4, p2}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v1

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ge;[Lcom/android/tools/r8/internal/K4;I)V
    .locals 64

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    .line 1
    new-instance v11, Lcom/android/tools/r8/internal/di;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/di;-><init>()V

    move-object/from16 v12, p2

    .line 2
    iput-object v12, v11, Lcom/android/tools/r8/internal/di;->a:[Lcom/android/tools/r8/internal/K4;

    .line 3
    iput v10, v11, Lcom/android/tools/r8/internal/di;->b:I

    .line 4
    iget v0, v8, Lcom/android/tools/r8/internal/Vd;->g:I

    new-array v13, v0, [C

    iput-object v13, v11, Lcom/android/tools/r8/internal/di;->c:[C

    .line 5
    iget v0, v8, Lcom/android/tools/r8/internal/Vd;->a:I

    .line 6
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    .line 7
    invoke-virtual {v8, v2, v13}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v2, v0, 0x4

    .line 8
    invoke-virtual {v8, v2, v13}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v2, v0, 0x6

    .line 9
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    new-array v7, v2, [Ljava/lang/String;

    add-int/lit8 v0, v0, 0x8

    move v5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 10
    invoke-virtual {v8, v5, v13}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/Vd;->a()I

    move-result v0

    add-int/lit8 v2, v0, -0x2

    .line 12
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    move v3, v1

    move/from16 v16, v2

    move-object/from16 v32, v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_1
    const-string v7, "Synthetic"

    const/high16 v33, 0x20000

    const-string v12, "Deprecated"

    move-object/from16 v34, v11

    const-string v11, "RuntimeInvisibleTypeAnnotations"

    const-string v9, "RuntimeInvisibleAnnotations"

    const-string v10, "RuntimeVisibleTypeAnnotations"

    const-string v6, "RuntimeVisibleAnnotations"

    move/from16 v36, v5

    const-string v5, "Signature"

    if-lez v16, :cond_15

    .line 13
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v37, v1

    add-int/lit8 v1, v0, 0x2

    .line 14
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x6

    move-object/from16 v38, v2

    .line 15
    const-string v2, "SourceFile"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v2

    move v9, v0

    move v11, v1

    move/from16 v39, v36

    move-object/from16 v1, v37

    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 17
    :cond_1
    const-string v2, "InnerClasses"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v9, v0

    move/from16 v21, v9

    :goto_3
    move v11, v1

    :goto_4
    move/from16 v39, v36

    move-object/from16 v1, v37

    :goto_5
    move-object/from16 v2, v38

    goto :goto_2

    .line 18
    :cond_2
    const-string v2, "EnclosingMethod"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v9, v0

    move/from16 v22, v9

    goto :goto_3

    .line 19
    :cond_3
    const-string v2, "NestHost"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v2

    move v9, v0

    move v11, v1

    move-object/from16 v27, v2

    goto :goto_4

    .line 21
    :cond_4
    const-string v2, "NestMembers"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v9, v0

    move/from16 v28, v9

    goto :goto_3

    .line 22
    :cond_5
    const-string v2, "PermittedSubclasses"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v9, v0

    move/from16 v29, v9

    goto :goto_3

    .line 23
    :cond_6
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 24
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v17

    :goto_6
    move v9, v0

    goto :goto_3

    .line 25
    :cond_7
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v9, v0

    move/from16 v23, v9

    goto :goto_3

    .line 26
    :cond_8
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v9, v0

    move/from16 v25, v9

    goto :goto_3

    .line 27
    :cond_9
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    or-int v3, v3, v33

    goto :goto_6

    .line 28
    :cond_a
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    or-int/lit16 v3, v3, 0x1000

    goto :goto_6

    .line 29
    :cond_b
    const-string v2, "SourceDebugExtension"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 30
    iget-object v2, v8, Lcom/android/tools/r8/internal/Vd;->b:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_c

    .line 31
    new-array v2, v1, [C

    .line 32
    invoke-virtual {v8, v2, v0, v1}, Lcom/android/tools/r8/internal/Vd;->a([CII)Ljava/lang/String;

    move-result-object v2

    move v9, v0

    move v11, v1

    move-object v1, v2

    move/from16 v39, v36

    goto/16 :goto_5

    .line 33
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 34
    :cond_d
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v9, v0

    move/from16 v24, v9

    goto/16 :goto_3

    .line 35
    :cond_e
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v9, v0

    move/from16 v26, v9

    goto/16 :goto_3

    .line 36
    :cond_f
    const-string v2, "Record"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/high16 v2, 0x10000

    or-int/2addr v3, v2

    move v9, v0

    move/from16 v30, v9

    goto/16 :goto_3

    .line 37
    :cond_10
    const-string v2, "Module"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v9, v0

    move/from16 v18, v9

    goto/16 :goto_3

    .line 38
    :cond_11
    const-string v2, "ModuleMainClass"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 39
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v2

    move v9, v0

    move v11, v1

    move-object/from16 v19, v2

    goto/16 :goto_4

    .line 40
    :cond_12
    const-string v2, "ModulePackages"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v9, v0

    move/from16 v20, v9

    goto/16 :goto_3

    .line 41
    :cond_13
    const-string v2, "BootstrapMethods"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v9, v0

    move-object/from16 v0, p0

    move v11, v1

    move-object/from16 v10, v37

    move-object/from16 v1, p2

    move-object/from16 v12, v38

    move-object v2, v4

    move/from16 v37, v3

    move v3, v9

    const/4 v5, 0x0

    move v4, v11

    move/from16 v39, v36

    move-object v5, v13

    move-object/from16 v33, v10

    const/4 v10, 0x0

    .line 42
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/Vd;->a([Lcom/android/tools/r8/internal/K4;Ljava/lang/String;II[CI[Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/K4;

    move-result-object v0

    move-object/from16 v4, v31

    .line 43
    iput-object v4, v0, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    move-object/from16 v31, v0

    move-object v2, v12

    move-object/from16 v1, v33

    move/from16 v3, v37

    goto :goto_7

    :cond_14
    move v9, v0

    move v11, v1

    move-object/from16 v4, v31

    move/from16 v39, v36

    move-object/from16 v33, v37

    move-object/from16 v12, v38

    const/4 v10, 0x0

    move/from16 v37, v3

    move-object v2, v12

    move-object/from16 v1, v33

    :goto_7
    add-int v0, v9, v11

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v9, p1

    move-object/from16 v12, p2

    move/from16 v10, p3

    move-object/from16 v11, v34

    move/from16 v5, v39

    goto/16 :goto_1

    :cond_15
    move/from16 v37, v3

    move-object/from16 v16, v10

    move-object/from16 v4, v31

    move/from16 v39, v36

    const/4 v10, 0x0

    move-object v3, v2

    move-object v2, v1

    .line 44
    iget-object v0, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x7

    .line 45
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v31

    move-object/from16 v0, p1

    move-object/from16 v35, v7

    move v7, v1

    move/from16 v1, v31

    move-object v10, v2

    move/from16 v2, v37

    move-object v7, v3

    move-object v3, v14

    move-object v14, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v9

    move-object v9, v5

    move-object v5, v15

    move-object v15, v6

    move-object/from16 v6, v32

    .line 46
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/ge;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v6, v16

    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_17

    if-nez v7, :cond_16

    if-eqz v10, :cond_17

    :cond_16
    move-object/from16 v5, p1

    move-object/from16 v4, v17

    goto :goto_8

    :cond_17
    move-object/from16 v5, p1

    move-object/from16 v4, v17

    goto :goto_9

    .line 47
    :goto_8
    invoke-virtual {v5, v7, v10}, Lcom/android/tools/r8/internal/ge;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    move/from16 v0, v18

    if-eqz v0, :cond_25

    move-object/from16 v10, v34

    .line 48
    iget-object v1, v10, Lcom/android/tools/r8/internal/di;->c:[C

    .line 49
    iget-object v2, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v8, v2, v1}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x2

    .line 50
    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    add-int/lit8 v7, v0, 0x4

    .line 51
    invoke-virtual {v8, v7, v1}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v7

    move-object/from16 p2, v14

    add-int/lit8 v14, v0, 0x6

    .line 52
    invoke-virtual {v5, v3, v2, v7}, Lcom/android/tools/r8/internal/ge;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/TX;

    move-result-object v2

    if-nez v2, :cond_18

    move-object/from16 v18, v11

    move-object/from16 v17, v12

    :goto_a
    move-object/from16 v0, v27

    goto/16 :goto_15

    :cond_18
    move-object/from16 v3, v19

    if-eqz v3, :cond_19

    .line 53
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/TX;->a(Ljava/lang/String;)V

    :cond_19
    move/from16 v3, v20

    if-eqz v3, :cond_1a

    .line 54
    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v7

    add-int/lit8 v20, v3, 0x2

    move/from16 v3, v20

    :goto_b
    add-int/lit8 v16, v7, -0x1

    if-lez v7, :cond_1a

    .line 55
    iget-object v7, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v17

    aget v7, v7, v17

    invoke-virtual {v8, v7, v1}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v7

    .line 56
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/TX;->b(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x2

    move/from16 v7, v16

    goto :goto_b

    .line 57
    :cond_1a
    invoke-virtual {v8, v14}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    add-int/lit8 v18, v0, 0x8

    move/from16 v0, v18

    :goto_c
    add-int/lit8 v7, v3, -0x1

    if-lez v3, :cond_1b

    .line 58
    iget-object v3, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v14

    aget v3, v3, v14

    invoke-virtual {v8, v3, v1}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v14, v0, 0x2

    .line 59
    invoke-virtual {v8, v14}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v14

    move/from16 p3, v7

    add-int/lit8 v7, v0, 0x4

    .line 60
    invoke-virtual {v8, v7, v1}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v0, v0, 0x6

    .line 61
    invoke-virtual {v2, v14, v3, v7}, Lcom/android/tools/r8/internal/TX;->a(ILjava/lang/String;Ljava/lang/String;)V

    move/from16 v3, p3

    goto :goto_c

    .line 62
    :cond_1b
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    add-int/lit8 v0, v0, 0x2

    :goto_d
    add-int/lit8 v7, v3, -0x1

    if-lez v3, :cond_1e

    .line 63
    iget-object v3, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v14

    aget v3, v3, v14

    invoke-virtual {v8, v3, v1}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v14, v0, 0x2

    .line 64
    invoke-virtual {v8, v14}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v14

    move/from16 p3, v7

    add-int/lit8 v7, v0, 0x4

    .line 65
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v7

    add-int/lit8 v0, v0, 0x6

    move/from16 v16, v0

    if-eqz v7, :cond_1d

    .line 66
    new-array v0, v7, [Ljava/lang/String;

    move-object/from16 v18, v11

    move-object/from16 v17, v12

    move/from16 v12, v16

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v7, :cond_1c

    move/from16 v19, v7

    .line 67
    iget-object v7, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    invoke-virtual {v8, v12}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v16

    aget v7, v7, v16

    invoke-virtual {v8, v7, v1}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v7

    .line 68
    aput-object v7, v0, v11

    add-int/lit8 v12, v12, 0x2

    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v19

    goto :goto_e

    :cond_1c
    move-object v7, v0

    move v0, v12

    goto :goto_f

    :cond_1d
    move-object/from16 v18, v11

    move-object/from16 v17, v12

    const/4 v7, 0x0

    .line 69
    :goto_f
    invoke-virtual {v2, v14, v3, v7}, Lcom/android/tools/r8/internal/TX;->a(ILjava/lang/String;[Ljava/lang/String;)V

    move/from16 v3, p3

    move-object/from16 v12, v17

    move-object/from16 v11, v18

    goto :goto_d

    :cond_1e
    move-object/from16 v18, v11

    move-object/from16 v17, v12

    .line 70
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    add-int/lit8 v0, v0, 0x2

    :goto_10
    add-int/lit8 v7, v3, -0x1

    if-lez v3, :cond_21

    .line 71
    iget-object v3, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v11

    aget v3, v3, v11

    invoke-virtual {v8, v3, v1}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v11, v0, 0x2

    .line 72
    invoke-virtual {v8, v11}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v11

    add-int/lit8 v12, v0, 0x4

    .line 73
    invoke-virtual {v8, v12}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v12

    add-int/lit8 v0, v0, 0x6

    if-eqz v12, :cond_1f

    .line 74
    new-array v14, v12, [Ljava/lang/String;

    move/from16 p3, v7

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v12, :cond_20

    move/from16 v16, v12

    .line 75
    iget-object v12, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v19

    aget v12, v12, v19

    invoke-virtual {v8, v12, v1}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v12

    .line 76
    aput-object v12, v14, v7

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    move/from16 v12, v16

    goto :goto_11

    :cond_1f
    move/from16 p3, v7

    const/4 v14, 0x0

    .line 77
    :cond_20
    invoke-virtual {v2, v11, v3, v14}, Lcom/android/tools/r8/internal/TX;->b(ILjava/lang/String;[Ljava/lang/String;)V

    move/from16 v3, p3

    goto :goto_10

    .line 78
    :cond_21
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    add-int/lit8 v0, v0, 0x2

    :goto_12
    add-int/lit8 v7, v3, -0x1

    if-lez v3, :cond_22

    .line 79
    invoke-virtual {v8, v0, v1}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/TX;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    move v3, v7

    goto :goto_12

    .line 80
    :cond_22
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    add-int/lit8 v0, v0, 0x2

    :goto_13
    add-int/lit8 v7, v3, -0x1

    if-lez v3, :cond_24

    .line 81
    invoke-virtual {v8, v0, v1}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v11, v0, 0x2

    .line 82
    invoke-virtual {v8, v11}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v11

    add-int/lit8 v0, v0, 0x4

    .line 83
    new-array v12, v11, [Ljava/lang/String;

    const/4 v14, 0x0

    :goto_14
    if-ge v14, v11, :cond_23

    .line 84
    invoke-virtual {v8, v0, v1}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v12, v14

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v14, v14, 0x1

    goto :goto_14

    .line 85
    :cond_23
    invoke-virtual {v2, v3, v12}, Lcom/android/tools/r8/internal/TX;->a(Ljava/lang/String;[Ljava/lang/String;)V

    move v3, v7

    goto :goto_13

    .line 86
    :cond_24
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TX;->a()V

    goto/16 :goto_a

    :cond_25
    move-object/from16 v18, v11

    move-object/from16 v17, v12

    move-object/from16 p2, v14

    move-object/from16 v10, v34

    goto/16 :goto_a

    :goto_15
    if-eqz v0, :cond_26

    .line 87
    invoke-virtual {v5, v0}, Lcom/android/tools/r8/internal/ge;->a(Ljava/lang/String;)V

    :cond_26
    move/from16 v0, v22

    if-eqz v0, :cond_29

    .line 88
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    .line 89
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    if-nez v0, :cond_27

    const/4 v2, 0x0

    goto :goto_16

    .line 90
    :cond_27
    iget-object v2, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    aget v2, v2, v0

    invoke-virtual {v8, v2, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v2

    :goto_16
    if-nez v0, :cond_28

    const/4 v0, 0x0

    goto :goto_17

    .line 91
    :cond_28
    iget-object v3, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    aget v0, v3, v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_17
    invoke-virtual {v5, v1, v2, v0}, Lcom/android/tools/r8/internal/ge;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    move/from16 v0, v23

    if-eqz v0, :cond_2a

    .line 93
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v23, v0, 0x2

    move/from16 v0, v23

    :goto_18
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2a

    .line 94
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    const/4 v3, 0x1

    .line 95
    invoke-virtual {v5, v1, v3}, Lcom/android/tools/r8/internal/ge;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v1

    .line 96
    invoke-virtual {v8, v1, v0, v3, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v0

    move v1, v2

    goto :goto_18

    :cond_2a
    move/from16 v0, v24

    if-eqz v0, :cond_2b

    .line 97
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v24, v0, 0x2

    move/from16 v0, v24

    :goto_19
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2b

    .line 98
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    .line 99
    invoke-virtual {v5, v1, v3}, Lcom/android/tools/r8/internal/ge;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v1

    const/4 v3, 0x1

    .line 100
    invoke-virtual {v8, v1, v0, v3, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v0

    move v1, v2

    goto :goto_19

    :cond_2b
    move/from16 v0, v25

    if-eqz v0, :cond_2c

    .line 101
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v25, v0, 0x2

    move/from16 v0, v25

    :goto_1a
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2c

    .line 102
    invoke-virtual {v8, v10, v0}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/di;I)I

    move-result v0

    .line 103
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    .line 104
    iget v3, v10, Lcom/android/tools/r8/internal/di;->h:I

    iget-object v7, v10, Lcom/android/tools/r8/internal/di;->i:Lcom/android/tools/r8/internal/tu0;

    const/4 v11, 0x1

    .line 105
    invoke-virtual {v5, v3, v7, v1, v11}, Lcom/android/tools/r8/internal/ge;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v1

    .line 106
    invoke-virtual {v8, v1, v0, v11, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v0

    move v1, v2

    goto :goto_1a

    :cond_2c
    move/from16 v0, v26

    if-eqz v0, :cond_2d

    .line 107
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v26, v0, 0x2

    move/from16 v0, v26

    :goto_1b
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2d

    .line 108
    invoke-virtual {v8, v10, v0}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/di;I)I

    move-result v0

    .line 109
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    .line 110
    iget v3, v10, Lcom/android/tools/r8/internal/di;->h:I

    iget-object v7, v10, Lcom/android/tools/r8/internal/di;->i:Lcom/android/tools/r8/internal/tu0;

    const/4 v11, 0x0

    .line 111
    invoke-virtual {v5, v3, v7, v1, v11}, Lcom/android/tools/r8/internal/ge;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v1

    const/4 v7, 0x1

    .line 112
    invoke-virtual {v8, v1, v0, v7, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v0

    move v1, v2

    goto :goto_1b

    :cond_2d
    const/4 v7, 0x1

    move-object/from16 v0, p2

    :goto_1c
    if-eqz v0, :cond_2e

    .line 113
    iget-object v1, v0, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    const/4 v11, 0x0

    .line 114
    iput-object v11, v0, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    .line 115
    invoke-virtual {v5, v0}, Lcom/android/tools/r8/internal/ge;->a(Lcom/android/tools/r8/internal/K4;)V

    move-object v0, v1

    goto :goto_1c

    :cond_2e
    move/from16 v0, v28

    const/4 v11, 0x0

    if-eqz v0, :cond_2f

    .line 116
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v28, v0, 0x2

    move/from16 v0, v28

    :goto_1d
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2f

    .line 117
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/ge;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    move v1, v2

    goto :goto_1d

    :cond_2f
    move/from16 v0, v29

    if-eqz v0, :cond_30

    .line 118
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v29, v0, 0x2

    move/from16 v0, v29

    :goto_1e
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_30

    .line 119
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/ge;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    move v1, v2

    goto :goto_1e

    :cond_30
    move/from16 v0, v21

    if-eqz v0, :cond_31

    .line 121
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v21, v0, 0x2

    move/from16 v0, v21

    :goto_1f
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_31

    .line 122
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v0, 0x2

    .line 123
    invoke-virtual {v8, v3, v13}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v12, v0, 0x4

    .line 124
    invoke-virtual {v8, v12, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v14, v0, 0x6

    .line 125
    invoke-virtual {v8, v14}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v14

    .line 126
    invoke-virtual {v5, v14, v1, v3, v12}, Lcom/android/tools/r8/internal/ge;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x8

    move v1, v2

    goto :goto_1f

    :cond_31
    move/from16 v0, v30

    if-eqz v0, :cond_3e

    .line 127
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v30, v0, 0x2

    move/from16 v0, v30

    :goto_20
    add-int/lit8 v12, v1, -0x1

    if-lez v1, :cond_3e

    .line 128
    iget-object v13, v10, Lcom/android/tools/r8/internal/di;->c:[C

    .line 129
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v1, v0, 0x2

    .line 130
    invoke-virtual {v8, v1, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v0, 0x4

    .line 131
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x6

    move-object v2, v11

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    :goto_21
    add-int/lit8 v16, v1, -0x1

    if-lez v1, :cond_37

    .line 132
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v7, v0, 0x2

    .line 133
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v19

    add-int/lit8 v7, v0, 0x6

    .line 134
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 135
    invoke-virtual {v8, v7, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object/from16 v46, v3

    move-object/from16 v47, v4

    move/from16 v22, v7

    :goto_22
    move/from16 p2, v12

    move-object/from16 v21, v15

    move-object/from16 v44, v18

    move-object/from16 v12, v35

    const/4 v15, 0x1

    move-object/from16 v18, v6

    goto/16 :goto_23

    .line 136
    :cond_32
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    move-object/from16 v46, v3

    move-object/from16 v47, v4

    move/from16 v22, v7

    move/from16 v40, v22

    goto :goto_22

    .line 137
    :cond_33
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    move-object/from16 v46, v3

    move-object/from16 v47, v4

    move/from16 v22, v7

    move/from16 v42, v22

    goto :goto_22

    .line 138
    :cond_34
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    move-object/from16 v46, v3

    move-object/from16 v47, v4

    move/from16 v22, v7

    move/from16 v41, v22

    goto :goto_22

    :cond_35
    move-object/from16 v0, v18

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_36

    move-object/from16 v44, v0

    move-object/from16 v46, v3

    move-object/from16 v47, v4

    move-object/from16 v18, v6

    move/from16 v22, v7

    move/from16 v43, v22

    move/from16 p2, v12

    move-object/from16 v21, v15

    move-object/from16 v12, v35

    const/4 v15, 0x1

    goto :goto_23

    :cond_36
    move-object/from16 p2, v1

    .line 140
    iget-object v1, v10, Lcom/android/tools/r8/internal/di;->a:[Lcom/android/tools/r8/internal/K4;

    const/16 v18, -0x1

    const/16 v20, 0x0

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v21, p2

    move-object/from16 v45, v2

    move-object/from16 v2, v21

    move-object/from16 v46, v3

    move v3, v7

    move-object/from16 v47, v4

    move/from16 v4, v19

    move-object v5, v13

    move/from16 p2, v12

    move-object v12, v6

    move/from16 v6, v18

    move/from16 v22, v7

    move-object/from16 v18, v12

    move-object/from16 v21, v15

    move-object/from16 v12, v35

    const/4 v15, 0x1

    move-object/from16 v7, v20

    .line 141
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/Vd;->a([Lcom/android/tools/r8/internal/K4;Ljava/lang/String;II[CI[Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/K4;

    move-result-object v0

    .line 142
    iput-object v11, v0, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    move-object v11, v0

    move-object/from16 v2, v45

    :goto_23
    add-int v0, v22, v19

    move-object/from16 v5, p1

    move-object/from16 v35, v12

    move v7, v15

    move/from16 v1, v16

    move-object/from16 v6, v18

    move-object/from16 v15, v21

    move-object/from16 v18, v44

    move-object/from16 v3, v46

    move-object/from16 v4, v47

    move/from16 v12, p2

    goto/16 :goto_21

    :cond_37
    move-object v1, v3

    move-object/from16 v47, v4

    move/from16 p2, v12

    move-object/from16 v21, v15

    move-object/from16 v44, v18

    move-object/from16 v12, v35

    move-object/from16 v18, v6

    move v15, v7

    move-object v7, v5

    .line 143
    invoke-virtual {v7, v14, v1, v2}, Lcom/android/tools/r8/internal/ge;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hc0;

    move-result-object v1

    if-nez v1, :cond_38

    goto/16 :goto_29

    :cond_38
    move/from16 v2, v40

    if-eqz v2, :cond_39

    .line 144
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    add-int/lit8 v40, v2, 0x2

    move/from16 v2, v40

    :goto_24
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_39

    .line 145
    invoke-virtual {v8, v2, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x2

    .line 146
    invoke-virtual {v1, v3, v15}, Lcom/android/tools/r8/internal/hc0;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v3

    .line 147
    invoke-virtual {v8, v3, v2, v15, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v2

    move v3, v4

    goto :goto_24

    :cond_39
    move/from16 v2, v41

    if-eqz v2, :cond_3a

    .line 148
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    add-int/lit8 v41, v2, 0x2

    move/from16 v2, v41

    :goto_25
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3a

    .line 149
    invoke-virtual {v8, v2, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x2

    const/4 v5, 0x0

    .line 150
    invoke-virtual {v1, v3, v5}, Lcom/android/tools/r8/internal/hc0;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v3

    .line 151
    invoke-virtual {v8, v3, v2, v15, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v2

    move v3, v4

    goto :goto_25

    :cond_3a
    move/from16 v2, v42

    if-eqz v2, :cond_3b

    .line 152
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    add-int/lit8 v42, v2, 0x2

    move/from16 v2, v42

    :goto_26
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3b

    .line 153
    invoke-virtual {v8, v10, v2}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/di;I)I

    move-result v2

    .line 154
    invoke-virtual {v8, v2, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x2

    .line 155
    iget v5, v10, Lcom/android/tools/r8/internal/di;->h:I

    iget-object v6, v10, Lcom/android/tools/r8/internal/di;->i:Lcom/android/tools/r8/internal/tu0;

    .line 156
    invoke-virtual {v1, v5, v6, v3, v15}, Lcom/android/tools/r8/internal/hc0;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v3

    .line 157
    invoke-virtual {v8, v3, v2, v15, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v2

    move v3, v4

    goto :goto_26

    :cond_3b
    move/from16 v2, v43

    if-eqz v2, :cond_3c

    .line 158
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    add-int/lit8 v43, v2, 0x2

    move/from16 v2, v43

    :goto_27
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3c

    .line 159
    invoke-virtual {v8, v10, v2}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/di;I)I

    move-result v2

    .line 160
    invoke-virtual {v8, v2, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x2

    .line 161
    iget v5, v10, Lcom/android/tools/r8/internal/di;->h:I

    iget-object v6, v10, Lcom/android/tools/r8/internal/di;->i:Lcom/android/tools/r8/internal/tu0;

    const/4 v14, 0x0

    .line 162
    invoke-virtual {v1, v5, v6, v3, v14}, Lcom/android/tools/r8/internal/hc0;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v3

    .line 163
    invoke-virtual {v8, v3, v2, v15, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v2

    move v3, v4

    goto :goto_27

    :cond_3c
    :goto_28
    if-eqz v11, :cond_3d

    .line 164
    iget-object v2, v11, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    const/4 v3, 0x0

    .line 165
    iput-object v3, v11, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    .line 166
    invoke-virtual {v1, v11}, Lcom/android/tools/r8/internal/hc0;->a(Lcom/android/tools/r8/internal/K4;)V

    move-object v11, v2

    goto :goto_28

    .line 167
    :cond_3d
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hc0;->a()V

    :goto_29
    move/from16 v1, p2

    move-object v5, v7

    move-object/from16 v35, v12

    move v7, v15

    move-object/from16 v6, v18

    move-object/from16 v15, v21

    move-object/from16 v18, v44

    move-object/from16 v4, v47

    const/4 v11, 0x0

    goto/16 :goto_20

    :cond_3e
    move-object/from16 v47, v4

    move-object/from16 v21, v15

    move-object/from16 v44, v18

    move-object/from16 v12, v35

    move-object/from16 v18, v6

    move v15, v7

    move-object v7, v5

    move/from16 v0, v39

    .line 168
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v5, v0, 0x2

    :goto_2a
    add-int/lit8 v11, v1, -0x1

    if-lez v1, :cond_4f

    .line 169
    iget-object v13, v10, Lcom/android/tools/r8/internal/di;->c:[C

    .line 170
    invoke-virtual {v8, v5}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    add-int/lit8 v1, v5, 0x2

    .line 171
    invoke-virtual {v8, v1, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v1, v5, 0x4

    .line 172
    invoke-virtual {v8, v1, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v1, v5, 0x6

    .line 173
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v5, v5, 0x8

    move v6, v0

    move v4, v5

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v48, 0x0

    :goto_2b
    add-int/lit8 v22, v1, -0x1

    if-lez v1, :cond_48

    .line 174
    invoke-virtual {v8, v4, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v15, v4, 0x2

    .line 175
    invoke-virtual {v8, v15}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v15

    add-int/lit8 v4, v4, 0x6

    move/from16 p2, v0

    .line 176
    const-string v0, "ConstantValue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 177
    invoke-virtual {v8, v4}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    if-nez v0, :cond_3f

    move/from16 v0, p2

    move/from16 v25, v4

    move/from16 p2, v11

    move-object/from16 v35, v12

    move-object/from16 v49, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v21

    move-object/from16 v18, v44

    move-object/from16 v17, v47

    const/16 v20, 0x0

    goto/16 :goto_30

    .line 178
    :cond_3f
    invoke-virtual {v8, v0, v13}, Lcom/android/tools/r8/internal/Vd;->b(I[C)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    move/from16 v25, v4

    move-object/from16 v35, v12

    move-object/from16 v49, v17

    :goto_2c
    move-object/from16 v12, v21

    move-object/from16 v17, v47

    :goto_2d
    move/from16 v0, p2

    :goto_2e
    move/from16 p2, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v44

    goto/16 :goto_30

    .line 179
    :cond_40
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 180
    invoke-virtual {v8, v4, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, p2

    move/from16 v25, v4

    move/from16 p2, v11

    move-object/from16 v35, v12

    move-object/from16 v49, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v21

    move-object/from16 v18, v44

    move-object/from16 v17, v47

    goto/16 :goto_30

    :cond_41
    move-object/from16 v0, v17

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_42

    or-int v6, v6, v33

    :goto_2f
    move-object/from16 v49, v0

    move/from16 v25, v4

    move-object/from16 v35, v12

    goto :goto_2c

    .line 182
    :cond_42
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_43

    or-int/lit16 v6, v6, 0x1000

    goto :goto_2f

    :cond_43
    move-object/from16 v7, v21

    .line 183
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_44

    move-object/from16 v49, v0

    move v3, v4

    move/from16 v25, v3

    move-object/from16 v35, v12

    move-object/from16 v17, v47

    move/from16 v0, p2

    move-object v12, v7

    goto :goto_2e

    :cond_44
    move-object/from16 v21, v7

    move-object/from16 v7, v18

    .line 184
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_45

    move-object/from16 v49, v0

    move v0, v4

    move/from16 v25, v0

    move/from16 p2, v11

    move-object/from16 v35, v12

    move-object/from16 v12, v21

    move-object/from16 v18, v44

    move-object/from16 v17, v47

    move-object v11, v7

    goto/16 :goto_30

    :cond_45
    move-object/from16 v18, v7

    move-object/from16 v7, v47

    .line 185
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_46

    move-object/from16 v49, v0

    move v2, v4

    move/from16 v25, v2

    move-object/from16 v17, v7

    move-object/from16 v35, v12

    move-object/from16 v12, v21

    goto/16 :goto_2d

    :cond_46
    move-object/from16 v17, v7

    move-object/from16 v7, v44

    .line 186
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_47

    move-object/from16 v49, v0

    move/from16 v25, v4

    move/from16 v48, v25

    move-object/from16 v35, v12

    move-object/from16 v12, v21

    move/from16 v0, p2

    move/from16 p2, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v7

    goto :goto_30

    :cond_47
    move-object/from16 p3, v1

    .line 187
    iget-object v1, v10, Lcom/android/tools/r8/internal/di;->a:[Lcom/android/tools/r8/internal/K4;

    const/16 v23, -0x1

    const/16 v24, 0x0

    move/from16 v50, p2

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v25, p3

    move/from16 v51, v2

    move-object/from16 v2, v25

    move/from16 v52, v3

    move v3, v4

    move/from16 v25, v4

    move v4, v15

    move-object/from16 v53, v5

    move-object v5, v13

    move/from16 v26, v6

    move/from16 v6, v23

    move/from16 p2, v11

    move-object/from16 v35, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v21

    move-object/from16 v18, v7

    move-object/from16 v7, v24

    .line 188
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/Vd;->a([Lcom/android/tools/r8/internal/K4;Ljava/lang/String;II[CI[Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/K4;

    move-result-object v0

    move-object/from16 v6, v53

    .line 189
    iput-object v6, v0, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    move-object v5, v0

    move/from16 v6, v26

    move/from16 v0, v50

    move/from16 v2, v51

    move/from16 v3, v52

    :goto_30
    add-int v4, v25, v15

    move-object/from16 v7, p1

    move-object/from16 v21, v12

    move-object/from16 v47, v17

    move-object/from16 v44, v18

    move/from16 v1, v22

    move-object/from16 v12, v35

    move-object/from16 v17, v49

    const/4 v15, 0x1

    move-object/from16 v18, v11

    move/from16 v11, p2

    goto/16 :goto_2b

    :cond_48
    move/from16 v50, v0

    move/from16 v51, v2

    move/from16 v52, v3

    move/from16 v26, v6

    move/from16 p2, v11

    move-object/from16 v35, v12

    move-object/from16 v49, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v21

    move-object/from16 v18, v44

    move-object/from16 v17, v47

    move-object v6, v5

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object v2, v14

    move-object/from16 v3, v16

    move v7, v4

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    .line 190
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/ge;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Uw;

    move-result-object v0

    if-nez v0, :cond_49

    goto/16 :goto_36

    :cond_49
    move/from16 v3, v52

    if-eqz v3, :cond_4a

    .line 191
    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v3, v3, 0x2

    :goto_31
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_4a

    .line 192
    invoke-virtual {v8, v3, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    .line 193
    invoke-virtual {v0, v1, v4}, Lcom/android/tools/r8/internal/Uw;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v1

    .line 194
    invoke-virtual {v8, v1, v3, v4, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v3

    move v1, v2

    goto :goto_31

    :cond_4a
    move/from16 v2, v51

    if-eqz v2, :cond_4b

    .line 195
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v2, v2, 0x2

    :goto_32
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_4b

    .line 196
    invoke-virtual {v8, v2, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x2

    const/4 v4, 0x0

    .line 197
    invoke-virtual {v0, v1, v4}, Lcom/android/tools/r8/internal/Uw;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v1

    const/4 v4, 0x1

    .line 198
    invoke-virtual {v8, v1, v2, v4, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v2

    move v1, v3

    goto :goto_32

    :cond_4b
    move/from16 v1, v50

    if-eqz v1, :cond_4c

    .line 199
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    :goto_33
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_4c

    .line 200
    invoke-virtual {v8, v10, v1}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/di;I)I

    move-result v1

    .line 201
    invoke-virtual {v8, v1, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    .line 202
    iget v4, v10, Lcom/android/tools/r8/internal/di;->h:I

    iget-object v5, v10, Lcom/android/tools/r8/internal/di;->i:Lcom/android/tools/r8/internal/tu0;

    const/4 v14, 0x1

    .line 203
    invoke-virtual {v0, v4, v5, v2, v14}, Lcom/android/tools/r8/internal/Uw;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v2

    .line 204
    invoke-virtual {v8, v2, v1, v14, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v1

    move v2, v3

    goto :goto_33

    :cond_4c
    move/from16 v1, v48

    if-eqz v1, :cond_4d

    .line 205
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    add-int/lit8 v48, v1, 0x2

    move/from16 v1, v48

    :goto_34
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_4d

    .line 206
    invoke-virtual {v8, v10, v1}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/di;I)I

    move-result v1

    .line 207
    invoke-virtual {v8, v1, v13}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    .line 208
    iget v4, v10, Lcom/android/tools/r8/internal/di;->h:I

    iget-object v5, v10, Lcom/android/tools/r8/internal/di;->i:Lcom/android/tools/r8/internal/tu0;

    const/4 v14, 0x0

    .line 209
    invoke-virtual {v0, v4, v5, v2, v14}, Lcom/android/tools/r8/internal/Uw;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v2

    const/4 v4, 0x1

    .line 210
    invoke-virtual {v8, v2, v1, v4, v13}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v1

    move v2, v3

    goto :goto_34

    :cond_4d
    move-object v5, v6

    :goto_35
    if-eqz v5, :cond_4e

    .line 211
    iget-object v1, v5, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    const/4 v2, 0x0

    .line 212
    iput-object v2, v5, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    .line 213
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/Uw;->a(Lcom/android/tools/r8/internal/K4;)V

    move-object v5, v1

    goto :goto_35

    .line 214
    :cond_4e
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Uw;->a()V

    :goto_36
    move/from16 v1, p2

    move v5, v7

    move-object/from16 v21, v12

    move-object/from16 v47, v17

    move-object/from16 v44, v18

    move-object/from16 v12, v35

    move-object/from16 v17, v49

    const/4 v15, 0x1

    move-object/from16 v7, p1

    move-object/from16 v18, v11

    goto/16 :goto_2a

    :cond_4f
    move-object/from16 v35, v12

    move-object/from16 v49, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v21

    move-object/from16 v18, v44

    move-object/from16 v17, v47

    .line 215
    invoke-virtual {v8, v5}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    add-int/lit8 v5, v5, 0x2

    :goto_37
    add-int/lit8 v13, v0, -0x1

    if-lez v0, :cond_6e

    .line 216
    iget-object v14, v10, Lcom/android/tools/r8/internal/di;->c:[C

    .line 217
    invoke-virtual {v8, v5}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    iput v0, v10, Lcom/android/tools/r8/internal/di;->d:I

    add-int/lit8 v0, v5, 0x2

    .line 218
    invoke-virtual {v8, v0, v14}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/tools/r8/internal/di;->e:Ljava/lang/String;

    add-int/lit8 v15, v5, 0x4

    .line 219
    invoke-virtual {v8, v15, v14}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/tools/r8/internal/di;->f:Ljava/lang/String;

    add-int/lit8 v0, v5, 0x6

    .line 220
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    add-int/lit8 v5, v5, 0x8

    move v6, v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    :goto_38
    add-int/lit8 v21, v0, -0x1

    if-lez v0, :cond_5f

    .line 221
    invoke-virtual {v8, v6, v14}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v0

    move/from16 p2, v1

    add-int/lit8 v1, v6, 0x2

    .line 222
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v22

    add-int/lit8 v1, v6, 0x6

    move/from16 p3, v2

    .line 223
    const-string v2, "Code"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 224
    iget v0, v10, Lcom/android/tools/r8/internal/di;->b:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-nez v0, :cond_50

    move/from16 v2, p3

    move/from16 v56, v1

    move-object/from16 v24, v9

    move-object/from16 v27, v17

    move-object/from16 v17, v18

    move-object/from16 v23, v35

    move-object/from16 v26, v49

    move/from16 v18, v56

    :goto_39
    move/from16 v1, p2

    goto/16 :goto_3e

    :cond_50
    move/from16 v23, v3

    move-object/from16 v3, v35

    move-object/from16 v6, v49

    goto/16 :goto_3c

    .line 225
    :cond_51
    const-string v2, "Exceptions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 226
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    add-int/lit8 v6, v6, 0x8

    move/from16 v23, v3

    move v3, v6

    const/4 v6, 0x0

    :goto_3a
    if-ge v6, v0, :cond_52

    .line 227
    invoke-virtual {v8, v3, v14}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v2, v6

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :cond_52
    move-object/from16 v16, v2

    move-object/from16 v24, v9

    move-object/from16 v27, v17

    move-object/from16 v17, v18

    move/from16 v3, v23

    move-object/from16 v23, v35

    move-object/from16 v26, v49

    move/from16 v2, p3

    :goto_3b
    move/from16 v18, v1

    goto :goto_39

    :cond_53
    move/from16 v23, v3

    .line 228
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 229
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    move/from16 v2, p3

    move/from16 v19, v0

    move-object/from16 v24, v9

    move-object/from16 v27, v17

    move-object/from16 v17, v18

    move/from16 v3, v23

    move-object/from16 v23, v35

    move-object/from16 v26, v49

    goto :goto_3b

    :cond_54
    move-object/from16 v6, v49

    .line 230
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 231
    iget v0, v10, Lcom/android/tools/r8/internal/di;->d:I

    or-int v0, v0, v33

    iput v0, v10, Lcom/android/tools/r8/internal/di;->d:I

    move-object/from16 v3, v35

    goto/16 :goto_3c

    .line 232
    :cond_55
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    move/from16 v2, p3

    move v4, v1

    move-object/from16 v26, v6

    move-object/from16 v24, v9

    move-object/from16 v27, v17

    move-object/from16 v17, v18

    move/from16 v3, v23

    move-object/from16 v23, v35

    move/from16 v18, v4

    goto/16 :goto_39

    .line 233
    :cond_56
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    move v2, v1

    move-object/from16 v26, v6

    move-object/from16 v24, v9

    move-object/from16 v27, v17

    move-object/from16 v17, v18

    move/from16 v3, v23

    move-object/from16 v23, v35

    move/from16 v1, p2

    move/from16 v18, v2

    goto/16 :goto_3e

    .line 234
    :cond_57
    const-string v2, "AnnotationDefault"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    move/from16 v2, p3

    move v5, v1

    move-object/from16 v26, v6

    move-object/from16 v24, v9

    move-object/from16 v27, v17

    move-object/from16 v17, v18

    move/from16 v3, v23

    move-object/from16 v23, v35

    move/from16 v18, v5

    goto/16 :goto_39

    :cond_58
    move-object/from16 v3, v35

    .line 235
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 236
    iget v0, v10, Lcom/android/tools/r8/internal/di;->d:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v10, Lcom/android/tools/r8/internal/di;->d:I

    :goto_3c
    move/from16 v2, p3

    move-object/from16 v26, v6

    move-object/from16 v24, v9

    move-object/from16 v27, v17

    move-object/from16 v17, v18

    move/from16 v18, v1

    move/from16 v1, p2

    move/from16 v62, v23

    move-object/from16 v23, v3

    move/from16 v3, v62

    goto/16 :goto_3e

    :cond_59
    move-object/from16 v2, v17

    .line 237
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5a

    move-object/from16 v27, v2

    move-object/from16 v23, v3

    move-object/from16 v26, v6

    move-object/from16 v24, v9

    move-object/from16 v17, v18

    move/from16 v2, p3

    move v3, v1

    move/from16 v18, v3

    goto/16 :goto_39

    :cond_5a
    move-object/from16 v17, v7

    move-object/from16 v7, v18

    .line 238
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5b

    move/from16 v18, v1

    move-object/from16 v27, v2

    move-object/from16 v26, v6

    move-object/from16 v24, v9

    :goto_3d
    move/from16 v2, p3

    move/from16 v62, v23

    move-object/from16 v23, v3

    move/from16 v3, v62

    move-object/from16 v63, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v63

    goto/16 :goto_3e

    :cond_5b
    move/from16 v18, v1

    .line 239
    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    move/from16 v1, p2

    move-object/from16 v27, v2

    move-object/from16 v26, v6

    move-object/from16 v24, v9

    move/from16 v54, v18

    goto :goto_3d

    .line 240
    :cond_5c
    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    move/from16 v1, p2

    move-object/from16 v27, v2

    move-object/from16 v26, v6

    move-object/from16 v24, v9

    move/from16 v55, v18

    goto :goto_3d

    .line 241
    :cond_5d
    const-string v1, "MethodParameters"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    move/from16 v1, p2

    move-object/from16 v27, v2

    move-object/from16 v26, v6

    move-object/from16 v24, v9

    move/from16 v20, v18

    goto :goto_3d

    .line 242
    :cond_5e
    iget-object v1, v10, Lcom/android/tools/r8/internal/di;->a:[Lcom/android/tools/r8/internal/K4;

    const/16 v24, -0x1

    const/16 v25, 0x0

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v57, p2

    move/from16 v58, p3

    move-object/from16 v27, v2

    move-object/from16 v2, v26

    move/from16 v59, v23

    move-object/from16 v23, v3

    move/from16 v3, v18

    move/from16 v60, v4

    move/from16 v4, v22

    move/from16 v61, v5

    move-object v5, v14

    move-object/from16 v26, v6

    move/from16 v6, v24

    move-object/from16 v24, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v25

    .line 243
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/Vd;->a([Lcom/android/tools/r8/internal/K4;Ljava/lang/String;II[CI[Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/K4;

    move-result-object v0

    .line 244
    iput-object v9, v0, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    move-object v7, v0

    move/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    move/from16 v4, v60

    move/from16 v5, v61

    :goto_3e
    add-int v6, v18, v22

    move-object/from16 v18, v17

    move/from16 v0, v21

    move-object/from16 v35, v23

    move-object/from16 v9, v24

    move-object/from16 v49, v26

    move-object/from16 v17, v27

    goto/16 :goto_38

    :cond_5f
    move/from16 v57, v1

    move/from16 v58, v2

    move/from16 v59, v3

    move/from16 v60, v4

    move/from16 v61, v5

    move-object/from16 v24, v9

    move-object/from16 v27, v17

    move-object/from16 v17, v18

    move-object/from16 v23, v35

    move-object/from16 v26, v49

    move-object v9, v7

    .line 245
    iget v1, v10, Lcom/android/tools/r8/internal/di;->d:I

    iget-object v2, v10, Lcom/android/tools/r8/internal/di;->e:Ljava/lang/String;

    iget-object v3, v10, Lcom/android/tools/r8/internal/di;->f:Ljava/lang/String;

    if-nez v19, :cond_60

    const/4 v4, 0x0

    goto :goto_3f

    .line 246
    :cond_60
    iget-object v0, v8, Lcom/android/tools/r8/internal/Vd;->d:[Ljava/lang/String;

    aget-object v4, v0, v19

    if-eqz v4, :cond_61

    goto :goto_3f

    .line 247
    :cond_61
    iget-object v4, v8, Lcom/android/tools/r8/internal/Vd;->c:[I

    aget v4, v4, v19

    add-int/lit8 v5, v4, 0x2

    .line 248
    invoke-virtual {v8, v4}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v4

    invoke-virtual {v8, v14, v5, v4}, Lcom/android/tools/r8/internal/Vd;->a([CII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v19

    :goto_3f
    move-object/from16 v0, p1

    move-object/from16 v5, v16

    .line 249
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/ge;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/tools/r8/internal/DX;

    move-result-object v0

    if-nez v0, :cond_62

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_46

    .line 250
    :cond_62
    instance-of v1, v0, Lcom/android/tools/r8/internal/EX;

    if-eqz v1, :cond_63

    .line 251
    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/internal/EX;

    .line 252
    invoke-virtual {v8, v15}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    .line 253
    iget-object v1, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    .line 254
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_63
    if-eqz v20, :cond_64

    .line 255
    iget v1, v10, Lcom/android/tools/r8/internal/di;->b:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_64

    .line 256
    iget-object v1, v8, Lcom/android/tools/r8/internal/Vd;->b:[B

    aget-byte v1, v1, v20

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v20, v20, 0x1

    move/from16 v2, v20

    :goto_40
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_64

    .line 257
    invoke-virtual {v8, v2, v14}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v2, 0x2

    .line 258
    invoke-virtual {v8, v4}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v4

    .line 259
    invoke-virtual {v0, v4, v1}, Lcom/android/tools/r8/internal/DX;->b(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x4

    move v1, v3

    goto :goto_40

    :cond_64
    move/from16 v5, v61

    if-eqz v5, :cond_65

    .line 260
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DX;->a()Lcom/android/tools/r8/internal/Q2;

    move-result-object v1

    const/4 v2, 0x0

    .line 261
    invoke-virtual {v8, v1, v5, v2, v14}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;ILjava/lang/String;[C)I

    if-eqz v1, :cond_65

    .line 262
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Q2;->a()V

    :cond_65
    move/from16 v4, v60

    if-eqz v4, :cond_66

    .line 263
    invoke-virtual {v8, v4}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v4, v4, 0x2

    :goto_41
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_66

    .line 264
    invoke-virtual {v8, v4, v14}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x2

    const/4 v3, 0x1

    .line 265
    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v1

    .line 266
    invoke-virtual {v8, v1, v4, v3, v14}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v4

    move v1, v2

    goto :goto_41

    :cond_66
    move/from16 v3, v59

    if-eqz v3, :cond_67

    .line 267
    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v3, v3, 0x2

    :goto_42
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_67

    .line 268
    invoke-virtual {v8, v3, v14}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    .line 269
    invoke-virtual {v0, v1, v4}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v1

    const/4 v4, 0x1

    .line 270
    invoke-virtual {v8, v1, v3, v4, v14}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v3

    move v1, v2

    goto :goto_42

    :cond_67
    move/from16 v2, v58

    if-eqz v2, :cond_68

    .line 271
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    add-int/lit8 v2, v2, 0x2

    :goto_43
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_68

    .line 272
    invoke-virtual {v8, v10, v2}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/di;I)I

    move-result v1

    .line 273
    invoke-virtual {v8, v1, v14}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    .line 274
    iget v4, v10, Lcom/android/tools/r8/internal/di;->h:I

    iget-object v5, v10, Lcom/android/tools/r8/internal/di;->i:Lcom/android/tools/r8/internal/tu0;

    const/4 v7, 0x1

    .line 275
    invoke-virtual {v0, v4, v5, v2, v7}, Lcom/android/tools/r8/internal/DX;->c(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v2

    .line 276
    invoke-virtual {v8, v2, v1, v7, v14}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v2

    move v1, v3

    goto :goto_43

    :cond_68
    move/from16 v1, v57

    if-eqz v1, :cond_69

    .line 277
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    :goto_44
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_69

    .line 278
    invoke-virtual {v8, v10, v1}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/di;I)I

    move-result v1

    .line 279
    invoke-virtual {v8, v1, v14}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    .line 280
    iget v4, v10, Lcom/android/tools/r8/internal/di;->h:I

    iget-object v5, v10, Lcom/android/tools/r8/internal/di;->i:Lcom/android/tools/r8/internal/tu0;

    const/4 v7, 0x0

    .line 281
    invoke-virtual {v0, v4, v5, v2, v7}, Lcom/android/tools/r8/internal/DX;->c(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v2

    const/4 v4, 0x1

    .line 282
    invoke-virtual {v8, v2, v1, v4, v14}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result v1

    move v2, v3

    goto :goto_44

    :cond_69
    const/4 v4, 0x1

    const/4 v7, 0x0

    move/from16 v1, v54

    if-eqz v1, :cond_6a

    .line 283
    invoke-virtual {v8, v0, v10, v1, v4}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/DX;Lcom/android/tools/r8/internal/di;IZ)V

    :cond_6a
    move/from16 v1, v55

    if-eqz v1, :cond_6b

    .line 284
    invoke-virtual {v8, v0, v10, v1, v7}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/DX;Lcom/android/tools/r8/internal/di;IZ)V

    :cond_6b
    :goto_45
    if-eqz v9, :cond_6c

    .line 285
    iget-object v1, v9, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    const/4 v2, 0x0

    .line 286
    iput-object v2, v9, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    .line 287
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/K4;)V

    move-object v9, v1

    goto :goto_45

    :cond_6c
    move/from16 v1, v56

    const/4 v2, 0x0

    if-eqz v1, :cond_6d

    .line 288
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DX;->b()V

    .line 289
    invoke-virtual {v8, v0, v10, v1}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/DX;Lcom/android/tools/r8/internal/di;I)V

    .line 290
    :cond_6d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DX;->c()V

    :goto_46
    move v5, v6

    move v0, v13

    move-object/from16 v18, v17

    move-object/from16 v35, v23

    move-object/from16 v9, v24

    move-object/from16 v49, v26

    move-object/from16 v17, v27

    goto/16 :goto_37

    .line 291
    :cond_6e
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ge;->a()V

    return-void
.end method

.method public final b(I)J
    .locals 6

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 p1, p1, 0x4

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result p1

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final b(I[C)Ljava/lang/Object;
    .locals 12

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    aget v1, v0, p1

    .line 24
    iget-object v2, p0, Lcom/android/tools/r8/internal/Vd;->b:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v2, v3

    packed-switch v3, :pswitch_data_0

    const/16 v4, 0xb

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_1

    .line 25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 26
    :pswitch_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Vd;->e:[Lcom/android/tools/r8/internal/wh;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v2, v1, 0x2

    .line 27
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    aget v0, v0, v2

    .line 28
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    .line 29
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v3, p0, Lcom/android/tools/r8/internal/Vd;->f:[I

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    aget v1, v3, v1

    .line 31
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lcom/android/tools/r8/internal/Vd;->b(I[C)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Qz;

    add-int/lit8 v4, v1, 0x2

    .line 32
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v4

    new-array v6, v4, [Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x4

    :goto_0
    if-ge v5, v4, :cond_1

    .line 33
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v7

    invoke-virtual {p0, v7, p2}, Lcom/android/tools/r8/internal/Vd;->b(I[C)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 34
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/Vd;->e:[Lcom/android/tools/r8/internal/wh;

    new-instance v1, Lcom/android/tools/r8/internal/wh;

    invoke-direct {v1, v2, v0, v3, v6}, Lcom/android/tools/r8/internal/wh;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V

    aput-object v1, p2, p1

    return-object v1

    .line 35
    :pswitch_1
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance p2, Lcom/android/tools/r8/internal/tt0;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p2, v4, v5, v0, p1}, Lcom/android/tools/r8/internal/tt0;-><init>(IIILjava/lang/String;)V

    return-object p2

    .line 37
    :pswitch_2
    aget-byte p1, v2, v1

    and-int/lit16 v7, p1, 0xff

    const/4 p1, 0x1

    add-int/2addr v1, p1

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    aget v0, v0, v1

    .line 39
    iget-object v1, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v2

    aget v1, v1, v2

    .line 40
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/Vd;->a(I[C)Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v1, v1, 0x2

    .line 42
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object v10

    .line 43
    iget-object p2, p0, Lcom/android/tools/r8/internal/Vd;->b:[B

    sub-int/2addr v0, p1

    aget-byte p2, p2, v0

    if-ne p2, v4, :cond_2

    move v11, p1

    goto :goto_1

    :cond_2
    move v11, v5

    .line 44
    :goto_1
    new-instance p1, Lcom/android/tools/r8/internal/Qz;

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/tools/r8/internal/Qz;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1

    .line 45
    :pswitch_3
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 46
    :pswitch_4
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->b(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 48
    :pswitch_6
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->b(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 50
    :pswitch_8
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/android/tools/r8/internal/DX;Lcom/android/tools/r8/internal/di;IZ)[I
    .locals 11

    .line 5
    iget-object v0, p2, Lcom/android/tools/r8/internal/di;->c:[C

    .line 6
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    new-array v2, v1, [I

    add-int/lit8 p3, p3, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 7
    aput p3, v2, v3

    .line 8
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/Vd;->a(I)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x18

    const/16 v6, 0x17

    if-eq v5, v6, :cond_0

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    .line 9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    add-int/lit8 p3, p3, 0x4

    goto :goto_2

    :pswitch_1
    add-int/lit8 v6, p3, 0x1

    .line 10
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v6

    add-int/lit8 p3, p3, 0x3

    :goto_1
    add-int/lit8 v7, v6, -0x1

    if-lez v6, :cond_1

    .line 11
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v6

    add-int/lit8 v8, p3, 0x2

    .line 12
    invoke-virtual {p0, v8}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v8

    add-int/lit8 p3, p3, 0x6

    .line 13
    iget-object v9, p2, Lcom/android/tools/r8/internal/di;->g:[Lcom/android/tools/r8/internal/XQ;

    invoke-static {v6, v9}, Lcom/android/tools/r8/internal/Vd;->b(I[Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/XQ;

    add-int/2addr v6, v8

    .line 14
    iget-object v8, p2, Lcom/android/tools/r8/internal/di;->g:[Lcom/android/tools/r8/internal/XQ;

    invoke-static {v6, v8}, Lcom/android/tools/r8/internal/Vd;->b(I[Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/XQ;

    move v6, v7

    goto :goto_1

    :cond_0
    :pswitch_2
    add-int/lit8 p3, p3, 0x3

    .line 15
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/tools/r8/internal/Vd;->b:[B

    aget-byte v7, v6, p3

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v5, v8, :cond_3

    if-nez v7, :cond_2

    goto :goto_3

    .line 16
    :cond_2
    new-instance v9, Lcom/android/tools/r8/internal/tu0;

    invoke-direct {v9, p3, v6}, Lcom/android/tools/r8/internal/tu0;-><init>(I[B)V

    :goto_3
    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v10

    add-int/2addr v7, p3

    .line 17
    invoke-virtual {p0, v7, v0}, Lcom/android/tools/r8/internal/Vd;->c(I[C)Ljava/lang/String;

    move-result-object p3

    add-int/lit8 v7, v7, 0x2

    and-int/lit16 v4, v4, -0x100

    .line 18
    invoke-virtual {p1, v4, v9, p3, p4}, Lcom/android/tools/r8/internal/DX;->b(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p3

    .line 19
    invoke-virtual {p0, p3, v7, v10, v0}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result p3

    goto :goto_4

    :cond_3
    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v7, p3

    .line 20
    invoke-virtual {p0, v9, v7, v10, v0}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/Q2;IZ[C)I

    move-result p3

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(I[C)Ljava/lang/String;
    .locals 3

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v0

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Vd;->d:[Ljava/lang/String;

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    return-object v1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Vd;->c:[I

    aget v1, v1, v0

    add-int/lit8 v2, v1, 0x2

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Vd;->d(I)I

    move-result v1

    invoke-virtual {p0, p2, v2, v1}, Lcom/android/tools/r8/internal/Vd;->a([CII)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    return-object p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(I)S
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->b:[B

    .line 2
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-short p1, p1

    return p1
.end method

.method public final d(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vd;->b:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method
