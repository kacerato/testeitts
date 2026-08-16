.class public Lvn/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvn/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lvn/b;

    invoke-direct {v0}, Lvn/b;-><init>()V

    iput-object v0, p0, Lvn/d;->a:Lvn/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lvn/c;
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lpn/b;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lvn/c;

    invoke-direct {v1}, Lvn/c;-><init>()V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const v3, 0x564f584c

    if-eq v2, v3, :cond_2

    invoke-static {v2}, Lpn/b;->a(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid magic"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lvn/c;->a:I

    const v3, 0xf000

    and-int/2addr v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    and-int/lit16 v2, v2, 0xf00

    const/16 v6, 0x100

    if-ne v2, v6, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    iput v6, v1, Lvn/c;->f:F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    iput v6, v1, Lvn/c;->g:F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    iput v6, v1, Lvn/c;->h:F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    iput v6, v1, Lvn/c;->i:F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    iput v6, v1, Lvn/c;->j:F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    iput v6, v1, Lvn/c;->k:F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    iput v6, v1, Lvn/c;->l:F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, v1, Lvn/c;->m:F

    const/high16 v7, 0x3f000000    # 0.5f

    if-nez v3, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    iput v6, v1, Lvn/c;->n:F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v1, Lvn/c;->o:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    if-eqz v6, :cond_5

    move v6, v5

    goto :goto_3

    :cond_5
    move v6, v4

    :goto_3
    iput-boolean v6, v1, Lvn/c;->p:Z

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    iput v6, v1, Lvn/c;->q:F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    iput v6, v1, Lvn/c;->r:F

    goto :goto_4

    :cond_6
    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v6, v8

    iput v6, v1, Lvn/c;->n:F

    const/4 v6, 0x6

    iput v6, v1, Lvn/c;->o:I

    iput-boolean v5, v1, Lvn/c;->p:Z

    iget v6, v1, Lvn/c;->l:F

    mul-float/2addr v6, v7

    iput v6, v1, Lvn/c;->q:F

    iget v6, v1, Lvn/c;->k:F

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v8

    iput v6, v1, Lvn/c;->r:F

    :goto_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    if-eqz v6, :cond_7

    move v6, v5

    goto :goto_5

    :cond_7
    move v6, v4

    :goto_5
    iput-boolean v6, v1, Lvn/c;->s:Z

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v1, Lvn/c;->t:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v1, Lvn/c;->u:I

    iget-object v6, v1, Lvn/c;->v:[F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v8

    aput v8, v6, v4

    iget-object v6, v1, Lvn/c;->v:[F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v8

    aput v8, v6, v5

    iget-object v6, v1, Lvn/c;->v:[F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v8

    const/4 v9, 0x2

    aput v8, v6, v9

    iget-object v6, v1, Lvn/c;->w:[F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v8

    aput v8, v6, v4

    iget-object v6, v1, Lvn/c;->w:[F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v8

    aput v8, v6, v5

    iget-object v6, v1, Lvn/c;->w:[F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v8

    aput v8, v6, v9

    iget-object v6, v1, Lvn/c;->w:[F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v8

    const/4 v10, 0x3

    aput v8, v6, v10

    iget-object v6, v1, Lvn/c;->w:[F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v8

    const/4 v11, 0x4

    aput v8, v6, v11

    iget-object v6, v1, Lvn/c;->w:[F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v8

    const/4 v12, 0x5

    aput v8, v6, v12

    if-eqz v3, :cond_8

    iget-object v6, v1, Lvn/c;->w:[F

    aget v8, v6, v4

    aget v13, v6, v10

    mul-float v14, v13, v7

    sub-float/2addr v8, v14

    aput v8, v6, v4

    aget v14, v6, v5

    aget v15, v6, v11

    mul-float v16, v15, v7

    sub-float v14, v14, v16

    aput v14, v6, v5

    aget v16, v6, v9

    aget v17, v6, v12

    mul-float v7, v7, v17

    sub-float v16, v16, v7

    aput v16, v6, v9

    add-float/2addr v13, v8

    aput v13, v6, v10

    add-float/2addr v15, v14

    aput v15, v6, v11

    add-float v17, v17, v16

    aput v17, v6, v12

    :cond_8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    move v7, v4

    :goto_6
    if-ge v7, v6, :cond_b

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    new-array v8, v10, [F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v11

    aput v11, v8, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v11

    aput v11, v8, v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v11

    aput v11, v8, v9

    new-array v11, v10, [F

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v16

    aput v16, v11, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v16

    aput v16, v11, v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v16

    aput v16, v11, v9

    if-eqz v3, :cond_9

    aget v16, v8, v4

    iget-object v10, v1, Lvn/c;->w:[F

    aget v17, v10, v4

    add-float v16, v16, v17

    aput v16, v8, v4

    aget v16, v8, v5

    aget v17, v10, v5

    add-float v16, v16, v17

    aput v16, v8, v5

    aget v16, v8, v9

    aget v17, v10, v9

    add-float v16, v16, v17

    aput v16, v8, v9

    aget v16, v11, v4

    aget v17, v10, v4

    add-float v16, v16, v17

    aput v16, v11, v4

    aget v16, v11, v5

    aget v17, v10, v5

    add-float v16, v16, v17

    aput v16, v11, v5

    aget v16, v11, v9

    aget v10, v10, v9

    add-float v16, v16, v10

    aput v16, v11, v9

    :cond_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v18

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v19

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v22

    new-array v4, v10, [B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v5, p0

    if-eqz v2, :cond_a

    iget-object v9, v5, Lvn/d;->a:Lvn/b;

    invoke-virtual {v9, v4}, Lvn/b;->b([B)[B

    move-result-object v4

    :cond_a
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v9, Lvn/f;

    move-object/from16 v17, v11

    move-object v11, v9

    move-object/from16 v16, v8

    move-object/from16 v21, v4

    invoke-direct/range {v11 .. v21}, Lvn/f;-><init>(IIII[F[FFFILjava/nio/ByteBuffer;)V

    invoke-virtual {v1, v9}, Lvn/c;->a(Lvn/f;)V

    add-int v4, v22, v10

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x3

    goto/16 :goto_6

    :cond_b
    move-object/from16 v5, p0

    return-object v1
.end method
