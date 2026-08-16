.class public final Lnet/jpountz/lz4/n;
.super Lnet/jpountz/lz4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/jpountz/lz4/n$a;
    }
.end annotation


# static fields
.field public static final c:Lnet/jpountz/lz4/d;

.field public static final synthetic d:Z


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/jpountz/lz4/n;

    invoke-direct {v0}, Lnet/jpountz/lz4/n;-><init>()V

    sput-object v0, Lnet/jpountz/lz4/n;->c:Lnet/jpountz/lz4/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-direct {p0, v0}, Lnet/jpountz/lz4/n;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lnet/jpountz/lz4/d;-><init>()V

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 3
    iput v0, p0, Lnet/jpountz/lz4/n;->a:I

    .line 4
    iput p1, p0, Lnet/jpountz/lz4/n;->b:I

    return-void
.end method

.method public static synthetic i(Lnet/jpountz/lz4/n;)I
    .locals 0

    iget p0, p0, Lnet/jpountz/lz4/n;->a:I

    return p0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .locals 21

    move/from16 v0, p2

    move/from16 v3, p3

    move/from16 v1, p5

    move/from16 v6, p6

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int v7, v1, v0

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v4

    move/from16 v3, p3

    move-object v4, v5

    move v5, v7

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lnet/jpountz/lz4/n;->c([BII[BII)I

    move-result v0

    return v0

    :cond_0
    invoke-static/range {p1 .. p1}, Lnet/jpountz/util/a;->e(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static/range {p4 .. p4}, Lnet/jpountz/util/a;->e(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-static {v10, v0, v3}, Lnet/jpountz/util/a;->c(Ljava/nio/ByteBuffer;II)V

    invoke-static {v11, v1, v6}, Lnet/jpountz/util/a;->c(Ljava/nio/ByteBuffer;II)V

    add-int v12, v0, v3

    add-int v13, v1, v6

    add-int/lit8 v14, v12, -0xc

    add-int/lit8 v15, v12, -0x5

    add-int/lit8 v2, v0, 0x1

    new-instance v9, Lnet/jpountz/lz4/n$a;

    move-object/from16 v8, p0

    invoke-direct {v9, v8, v0}, Lnet/jpountz/lz4/n$a;-><init>(Lnet/jpountz/lz4/n;I)V

    new-instance v7, Lnet/jpountz/lz4/C$a;

    invoke-direct {v7}, Lnet/jpountz/lz4/C$a;-><init>()V

    new-instance v6, Lnet/jpountz/lz4/C$a;

    invoke-direct {v6}, Lnet/jpountz/lz4/C$a;-><init>()V

    new-instance v5, Lnet/jpountz/lz4/C$a;

    invoke-direct {v5}, Lnet/jpountz/lz4/C$a;-><init>()V

    new-instance v4, Lnet/jpountz/lz4/C$a;

    invoke-direct {v4}, Lnet/jpountz/lz4/C$a;-><init>()V

    move v3, v0

    move v0, v1

    :goto_0
    if-ge v2, v14, :cond_13

    invoke-virtual {v9, v10, v2, v15, v6}, Lnet/jpountz/lz4/n$a;->i(Ljava/nio/ByteBuffer;IILnet/jpountz/lz4/C$a;)Z

    move-result v16

    if-nez v16, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v6, v7}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    move/from16 v16, v0

    move v0, v3

    :goto_1
    invoke-virtual {v6}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    if-ge v2, v14, :cond_12

    invoke-virtual {v6}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    add-int/lit8 v17, v2, -0x2

    iget v2, v6, Lnet/jpountz/lz4/C$a;->a:I

    add-int/lit8 v18, v2, 0x1

    iget v3, v6, Lnet/jpountz/lz4/C$a;->c:I

    move-object v2, v9

    move/from16 v19, v3

    move-object v3, v10

    move-object/from16 p1, v4

    move/from16 v4, v17

    move-object/from16 p2, v5

    move/from16 v5, v18

    move-object v1, v6

    move v6, v15

    move/from16 p3, v12

    move-object v12, v7

    move/from16 v7, v19

    move-object/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Lnet/jpountz/lz4/n$a;->k(Ljava/nio/ByteBuffer;IIIILnet/jpountz/lz4/C$a;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v17, p1

    move-object/from16 v20, v9

    move/from16 p1, v14

    move-object/from16 v14, p2

    goto/16 :goto_7

    :cond_2
    iget v2, v12, Lnet/jpountz/lz4/C$a;->a:I

    iget v3, v1, Lnet/jpountz/lz4/C$a;->a:I

    move-object/from16 v8, p2

    if-ge v2, v3, :cond_3

    iget v2, v8, Lnet/jpountz/lz4/C$a;->a:I

    iget v4, v12, Lnet/jpountz/lz4/C$a;->c:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    invoke-static {v12, v1}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    :cond_3
    iget v2, v8, Lnet/jpountz/lz4/C$a;->a:I

    iget v3, v1, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v2, v3

    const/4 v7, 0x3

    if-ge v2, v7, :cond_4

    invoke-static {v8, v1}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    move-object/from16 v4, p1

    move-object v6, v1

    move-object v5, v8

    move-object v7, v12

    move-object/from16 v8, p0

    :goto_2
    move/from16 v12, p3

    move/from16 v1, p5

    goto :goto_1

    :cond_4
    :goto_3
    iget v2, v8, Lnet/jpountz/lz4/C$a;->a:I

    iget v3, v1, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v2, v3

    const/4 v6, 0x4

    const/16 v5, 0x12

    if-ge v2, v5, :cond_7

    iget v2, v1, Lnet/jpountz/lz4/C$a;->c:I

    if-le v2, v5, :cond_5

    move v2, v5

    :cond_5
    add-int/2addr v3, v2

    invoke-virtual {v8}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v4

    sub-int/2addr v4, v6

    if-le v3, v4, :cond_6

    iget v2, v8, Lnet/jpountz/lz4/C$a;->a:I

    iget v3, v1, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v2, v3

    iget v3, v8, Lnet/jpountz/lz4/C$a;->c:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v6

    :cond_6
    iget v3, v8, Lnet/jpountz/lz4/C$a;->a:I

    iget v4, v1, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-lez v2, :cond_7

    invoke-virtual {v8, v2}, Lnet/jpountz/lz4/C$a;->b(I)V

    :cond_7
    iget v2, v8, Lnet/jpountz/lz4/C$a;->a:I

    iget v3, v8, Lnet/jpountz/lz4/C$a;->c:I

    add-int/2addr v2, v3

    if-ge v2, v14, :cond_10

    invoke-virtual {v8}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    add-int/lit8 v4, v2, -0x3

    iget v3, v8, Lnet/jpountz/lz4/C$a;->a:I

    iget v2, v8, Lnet/jpountz/lz4/C$a;->c:I

    move/from16 v17, v2

    move-object v2, v9

    move/from16 v18, v3

    move-object v3, v10

    move-object/from16 p4, v9

    move v9, v5

    move/from16 v5, v18

    move v9, v6

    move v6, v15

    move/from16 v19, v7

    move/from16 v7, v17

    move-object v9, v8

    move-object/from16 v8, p1

    invoke-virtual/range {v2 .. v8}, Lnet/jpountz/lz4/n$a;->k(Ljava/nio/ByteBuffer;IIIILnet/jpountz/lz4/C$a;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v17, p1

    move-object/from16 v20, p4

    move/from16 p1, v14

    move-object v14, v9

    goto/16 :goto_5

    :cond_8
    move-object/from16 v8, p1

    iget v2, v8, Lnet/jpountz/lz4/C$a;->a:I

    invoke-virtual {v1}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_b

    iget v2, v8, Lnet/jpountz/lz4/C$a;->a:I

    invoke-virtual {v1}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    if-lt v2, v3, :cond_a

    iget v2, v9, Lnet/jpountz/lz4/C$a;->a:I

    invoke-virtual {v1}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-virtual {v1}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    iget v3, v9, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {v9, v2}, Lnet/jpountz/lz4/C$a;->b(I)V

    iget v2, v9, Lnet/jpountz/lz4/C$a;->c:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_9

    invoke-static {v8, v9}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    :cond_9
    iget v4, v1, Lnet/jpountz/lz4/C$a;->a:I

    iget v5, v1, Lnet/jpountz/lz4/C$a;->b:I

    iget v6, v1, Lnet/jpountz/lz4/C$a;->c:I

    move-object v2, v10

    move v3, v0

    move-object v7, v11

    move-object v0, v8

    move/from16 v8, v16

    move-object/from16 v20, p4

    move/from16 p1, v14

    move-object v14, v9

    move v9, v13

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/c;->d(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I

    move-result v16

    invoke-virtual {v1}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    invoke-static {v0, v1}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    invoke-static {v14, v12}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    move-object/from16 v8, p0

    move-object v4, v0

    move-object v6, v1

    move v0, v2

    move-object v7, v12

    move-object v5, v14

    move-object/from16 v9, v20

    move/from16 v14, p1

    goto/16 :goto_2

    :cond_a
    move-object/from16 v20, p4

    move/from16 p1, v14

    move-object v14, v9

    move-object v9, v8

    invoke-static {v9, v14}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    move-object v8, v14

    move/from16 v7, v19

    move/from16 v14, p1

    move-object/from16 p1, v9

    move-object/from16 v9, v20

    goto/16 :goto_3

    :cond_b
    move-object/from16 v20, p4

    move/from16 p1, v14

    move-object v14, v9

    move-object v9, v8

    iget v2, v14, Lnet/jpountz/lz4/C$a;->a:I

    invoke-virtual {v1}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    if-ge v2, v3, :cond_f

    iget v2, v14, Lnet/jpountz/lz4/C$a;->a:I

    iget v3, v1, Lnet/jpountz/lz4/C$a;->a:I

    sub-int v4, v2, v3

    const/16 v5, 0xf

    if-ge v4, v5, :cond_e

    iget v2, v1, Lnet/jpountz/lz4/C$a;->c:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_c

    iput v3, v1, Lnet/jpountz/lz4/C$a;->c:I

    :cond_c
    invoke-virtual {v1}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    invoke-virtual {v14}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_d

    invoke-virtual {v14}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    iget v3, v1, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    iput v2, v1, Lnet/jpountz/lz4/C$a;->c:I

    :cond_d
    invoke-virtual {v1}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    iget v3, v14, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {v14, v2}, Lnet/jpountz/lz4/C$a;->b(I)V

    goto :goto_4

    :cond_e
    sub-int/2addr v2, v3

    iput v2, v1, Lnet/jpountz/lz4/C$a;->c:I

    :cond_f
    :goto_4
    iget v4, v1, Lnet/jpountz/lz4/C$a;->a:I

    iget v5, v1, Lnet/jpountz/lz4/C$a;->b:I

    iget v6, v1, Lnet/jpountz/lz4/C$a;->c:I

    move-object v2, v10

    move v3, v0

    move-object v7, v11

    move/from16 v8, v16

    move-object v0, v9

    move v9, v13

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/c;->d(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I

    move-result v16

    invoke-virtual {v1}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    invoke-static {v14, v1}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    invoke-static {v0, v14}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    move-object v8, v14

    move/from16 v7, v19

    move-object/from16 v9, v20

    move/from16 v14, p1

    move-object/from16 p1, v0

    move v0, v2

    goto/16 :goto_3

    :cond_10
    move-object/from16 v17, p1

    move-object/from16 v20, v9

    move/from16 p1, v14

    move-object v14, v8

    :goto_5
    iget v2, v14, Lnet/jpountz/lz4/C$a;->a:I

    invoke-virtual {v1}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    if-ge v2, v3, :cond_11

    iget v2, v14, Lnet/jpountz/lz4/C$a;->a:I

    iget v3, v1, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v2, v3

    iput v2, v1, Lnet/jpountz/lz4/C$a;->c:I

    :cond_11
    iget v4, v1, Lnet/jpountz/lz4/C$a;->a:I

    iget v5, v1, Lnet/jpountz/lz4/C$a;->b:I

    iget v6, v1, Lnet/jpountz/lz4/C$a;->c:I

    move-object v2, v10

    move v3, v0

    move-object v7, v11

    move/from16 v8, v16

    move v9, v13

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/c;->d(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I

    move-result v8

    invoke-virtual {v1}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    iget v4, v14, Lnet/jpountz/lz4/C$a;->a:I

    iget v5, v14, Lnet/jpountz/lz4/C$a;->b:I

    iget v6, v14, Lnet/jpountz/lz4/C$a;->c:I

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/c;->d(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I

    move-result v0

    invoke-virtual {v14}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    :goto_6
    move-object/from16 v8, p0

    move-object v6, v1

    move v2, v3

    move-object v7, v12

    move-object v5, v14

    move-object/from16 v4, v17

    move-object/from16 v9, v20

    move/from16 v14, p1

    move/from16 v12, p3

    move/from16 v1, p5

    goto/16 :goto_0

    :cond_12
    move-object/from16 v17, v4

    move-object v1, v6

    move-object/from16 v20, v9

    move/from16 p3, v12

    move/from16 p1, v14

    move-object v14, v5

    move-object v12, v7

    :goto_7
    iget v4, v1, Lnet/jpountz/lz4/C$a;->a:I

    iget v5, v1, Lnet/jpountz/lz4/C$a;->b:I

    iget v6, v1, Lnet/jpountz/lz4/C$a;->c:I

    move-object v2, v10

    move v3, v0

    move-object v7, v11

    move/from16 v8, v16

    move v9, v13

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/c;->d(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I

    move-result v0

    invoke-virtual {v1}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    goto :goto_6

    :cond_13
    move/from16 p3, v12

    sub-int v4, p3, v3

    move-object v2, v10

    move-object v5, v11

    move v6, v0

    move v7, v13

    invoke-static/range {v2 .. v7}, Lnet/jpountz/lz4/c;->h(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    sub-int v0, v0, p5

    return v0
.end method

.method public c([BII[BII)I
    .locals 21

    move/from16 v0, p2

    invoke-static/range {p1 .. p3}, Lnet/jpountz/util/c;->c([BII)V

    invoke-static/range {p4 .. p6}, Lnet/jpountz/util/c;->c([BII)V

    add-int v1, v0, p3

    add-int v10, p5, p6

    add-int/lit8 v11, v1, -0xc

    add-int/lit8 v12, v1, -0x5

    add-int/lit8 v2, v0, 0x1

    new-instance v13, Lnet/jpountz/lz4/n$a;

    move-object/from16 v14, p0

    invoke-direct {v13, v14, v0}, Lnet/jpountz/lz4/n$a;-><init>(Lnet/jpountz/lz4/n;I)V

    new-instance v15, Lnet/jpountz/lz4/C$a;

    invoke-direct {v15}, Lnet/jpountz/lz4/C$a;-><init>()V

    new-instance v9, Lnet/jpountz/lz4/C$a;

    invoke-direct {v9}, Lnet/jpountz/lz4/C$a;-><init>()V

    new-instance v8, Lnet/jpountz/lz4/C$a;

    invoke-direct {v8}, Lnet/jpountz/lz4/C$a;-><init>()V

    new-instance v7, Lnet/jpountz/lz4/C$a;

    invoke-direct {v7}, Lnet/jpountz/lz4/C$a;-><init>()V

    move/from16 v6, p5

    move v3, v0

    :goto_0
    if-ge v2, v11, :cond_12

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v2, v12, v9}, Lnet/jpountz/lz4/n$a;->j([BIILnet/jpountz/lz4/C$a;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v9, v15}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    move/from16 v16, v3

    move/from16 v17, v6

    :goto_1
    invoke-virtual {v9}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    if-ge v2, v11, :cond_11

    invoke-virtual {v9}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    add-int/lit8 v4, v2, -0x2

    iget v2, v9, Lnet/jpountz/lz4/C$a;->a:I

    add-int/lit8 v5, v2, 0x1

    iget v6, v9, Lnet/jpountz/lz4/C$a;->c:I

    move-object v2, v13

    move-object/from16 v3, p1

    move/from16 v18, v6

    move v6, v12

    move-object/from16 p2, v7

    move/from16 v7, v18

    move-object/from16 p3, v8

    invoke-virtual/range {v2 .. v8}, Lnet/jpountz/lz4/n$a;->l([BIIIILnet/jpountz/lz4/C$a;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p3

    move/from16 p3, v11

    move-object/from16 v11, p2

    goto/16 :goto_8

    :cond_1
    iget v2, v15, Lnet/jpountz/lz4/C$a;->a:I

    iget v3, v9, Lnet/jpountz/lz4/C$a;->a:I

    move-object/from16 v8, p3

    if-ge v2, v3, :cond_2

    iget v2, v8, Lnet/jpountz/lz4/C$a;->a:I

    iget v4, v15, Lnet/jpountz/lz4/C$a;->c:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    invoke-static {v15, v9}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    :cond_2
    iget v2, v8, Lnet/jpountz/lz4/C$a;->a:I

    iget v3, v9, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v2, v3

    const/4 v7, 0x3

    if-ge v2, v7, :cond_3

    invoke-static {v8, v9}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    move-object/from16 v7, p2

    goto :goto_1

    :cond_3
    :goto_2
    iget v2, v8, Lnet/jpountz/lz4/C$a;->a:I

    iget v3, v9, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v2, v3

    const/4 v6, 0x4

    const/16 v5, 0x12

    if-ge v2, v5, :cond_6

    iget v2, v9, Lnet/jpountz/lz4/C$a;->c:I

    if-le v2, v5, :cond_4

    move v2, v5

    :cond_4
    add-int/2addr v3, v2

    invoke-virtual {v8}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v4

    sub-int/2addr v4, v6

    if-le v3, v4, :cond_5

    iget v2, v8, Lnet/jpountz/lz4/C$a;->a:I

    iget v3, v9, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v2, v3

    iget v3, v8, Lnet/jpountz/lz4/C$a;->c:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v6

    :cond_5
    iget v3, v8, Lnet/jpountz/lz4/C$a;->a:I

    iget v4, v9, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-lez v2, :cond_6

    invoke-virtual {v8, v2}, Lnet/jpountz/lz4/C$a;->b(I)V

    :cond_6
    iget v2, v8, Lnet/jpountz/lz4/C$a;->a:I

    iget v3, v8, Lnet/jpountz/lz4/C$a;->c:I

    add-int/2addr v2, v3

    if-ge v2, v11, :cond_f

    invoke-virtual {v8}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    add-int/lit8 v4, v2, -0x3

    iget v3, v8, Lnet/jpountz/lz4/C$a;->a:I

    iget v2, v8, Lnet/jpountz/lz4/C$a;->c:I

    move/from16 v18, v2

    move-object v2, v13

    move/from16 v19, v3

    move-object/from16 v3, p1

    move v0, v5

    move/from16 v5, v19

    move v0, v6

    move v6, v12

    move/from16 v20, v7

    move/from16 v7, v18

    move-object v0, v8

    move-object/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Lnet/jpountz/lz4/n$a;->l([BIIIILnet/jpountz/lz4/C$a;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_3
    move/from16 p3, v11

    move-object/from16 v11, p2

    goto/16 :goto_6

    :cond_7
    move-object/from16 v8, p2

    iget v2, v8, Lnet/jpountz/lz4/C$a;->a:I

    invoke-virtual {v9}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_a

    iget v2, v8, Lnet/jpountz/lz4/C$a;->a:I

    invoke-virtual {v9}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    if-lt v2, v3, :cond_9

    iget v2, v0, Lnet/jpountz/lz4/C$a;->a:I

    invoke-virtual {v9}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-virtual {v9}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    iget v3, v0, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lnet/jpountz/lz4/C$a;->b(I)V

    iget v2, v0, Lnet/jpountz/lz4/C$a;->c:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_8

    invoke-static {v8, v0}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    :cond_8
    iget v4, v9, Lnet/jpountz/lz4/C$a;->a:I

    iget v5, v9, Lnet/jpountz/lz4/C$a;->b:I

    iget v6, v9, Lnet/jpountz/lz4/C$a;->c:I

    move-object/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v7, p4

    move/from16 p3, v11

    move-object v11, v8

    move/from16 v8, v17

    move-object/from16 p2, v9

    move v9, v10

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/z;->e([BIIII[BII)I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v16

    move-object/from16 v9, p2

    invoke-static {v11, v9}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    invoke-static {v0, v15}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    move-object v8, v0

    move-object v7, v11

    move-object/from16 v0, p1

    move/from16 v11, p3

    goto/16 :goto_1

    :cond_9
    move/from16 p3, v11

    move-object v11, v8

    invoke-static {v11, v0}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    :goto_4
    move-object v8, v0

    move-object/from16 p2, v11

    move/from16 v7, v20

    move-object/from16 v0, p1

    move/from16 v11, p3

    goto/16 :goto_2

    :cond_a
    move/from16 p3, v11

    move-object v11, v8

    iget v2, v0, Lnet/jpountz/lz4/C$a;->a:I

    invoke-virtual {v9}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    if-ge v2, v3, :cond_e

    iget v2, v0, Lnet/jpountz/lz4/C$a;->a:I

    iget v3, v9, Lnet/jpountz/lz4/C$a;->a:I

    sub-int v4, v2, v3

    const/16 v5, 0xf

    if-ge v4, v5, :cond_d

    iget v2, v9, Lnet/jpountz/lz4/C$a;->c:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_b

    iput v3, v9, Lnet/jpountz/lz4/C$a;->c:I

    :cond_b
    invoke-virtual {v9}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    invoke-virtual {v0}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_c

    invoke-virtual {v0}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    iget v3, v9, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    iput v2, v9, Lnet/jpountz/lz4/C$a;->c:I

    :cond_c
    invoke-virtual {v9}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v2

    iget v3, v0, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lnet/jpountz/lz4/C$a;->b(I)V

    goto :goto_5

    :cond_d
    sub-int/2addr v2, v3

    iput v2, v9, Lnet/jpountz/lz4/C$a;->c:I

    :cond_e
    :goto_5
    iget v4, v9, Lnet/jpountz/lz4/C$a;->a:I

    iget v5, v9, Lnet/jpountz/lz4/C$a;->b:I

    iget v6, v9, Lnet/jpountz/lz4/C$a;->c:I

    move-object/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v7, p4

    move/from16 v8, v17

    move-object/from16 p2, v9

    move v9, v10

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/z;->e([BIIII[BII)I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v16

    move-object/from16 v9, p2

    invoke-static {v0, v9}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    invoke-static {v11, v0}, Lnet/jpountz/lz4/C;->a(Lnet/jpountz/lz4/C$a;Lnet/jpountz/lz4/C$a;)V

    goto :goto_4

    :cond_f
    move-object v0, v8

    goto/16 :goto_3

    :goto_6
    iget v2, v0, Lnet/jpountz/lz4/C$a;->a:I

    invoke-virtual {v9}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    if-ge v2, v3, :cond_10

    iget v2, v0, Lnet/jpountz/lz4/C$a;->a:I

    iget v3, v9, Lnet/jpountz/lz4/C$a;->a:I

    sub-int/2addr v2, v3

    iput v2, v9, Lnet/jpountz/lz4/C$a;->c:I

    :cond_10
    iget v4, v9, Lnet/jpountz/lz4/C$a;->a:I

    iget v5, v9, Lnet/jpountz/lz4/C$a;->b:I

    iget v6, v9, Lnet/jpountz/lz4/C$a;->c:I

    move-object/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v7, p4

    move/from16 v8, v17

    move-object/from16 p2, v9

    move v9, v10

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/z;->e([BIIII[BII)I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    iget v4, v0, Lnet/jpountz/lz4/C$a;->a:I

    iget v5, v0, Lnet/jpountz/lz4/C$a;->b:I

    iget v6, v0, Lnet/jpountz/lz4/C$a;->c:I

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/z;->e([BIIII[BII)I

    move-result v6

    invoke-virtual {v0}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    move-object/from16 v9, p2

    move-object v8, v0

    move v2, v3

    move-object v7, v11

    :goto_7
    move/from16 v11, p3

    goto/16 :goto_0

    :cond_11
    move-object v0, v8

    move/from16 p3, v11

    move-object v11, v7

    :goto_8
    iget v4, v9, Lnet/jpountz/lz4/C$a;->a:I

    iget v5, v9, Lnet/jpountz/lz4/C$a;->b:I

    iget v6, v9, Lnet/jpountz/lz4/C$a;->c:I

    move-object/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v7, p4

    move/from16 v8, v17

    move-object/from16 v16, v9

    move v9, v10

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/z;->e([BIIII[BII)I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lnet/jpountz/lz4/C$a;->a()I

    move-result v3

    move-object v8, v0

    move v2, v3

    move-object v7, v11

    move-object/from16 v9, v16

    goto :goto_7

    :cond_12
    sub-int v4, v1, v3

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move v7, v10

    invoke-static/range {v2 .. v7}, Lnet/jpountz/lz4/z;->i([BII[BII)I

    move-result v0

    sub-int v0, v0, p5

    return v0
.end method
