.class public LE9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LG9/a;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voxelChunk"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LG9/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LG9/a;-><init>(I)V

    iput-object v0, p0, LE9/c;->a:LG9/a;

    iput-object p1, p0, LE9/c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    return-void
.end method


# virtual methods
.method public a(IIILvc/h;IIII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "blocks",
            "chunkX",
            "chunkZ",
            "width",
            "height"
        }
    .end annotation

    if-ltz p1, :cond_0

    if-ge p1, p7, :cond_0

    if-ltz p3, :cond_0

    if-ge p3, p7, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p8, :cond_0

    invoke-virtual {p4, p1, p3, p2}, Lvc/h;->u(III)I

    move-result p1

    return p1

    :cond_0
    add-int/2addr p5, p1

    add-int/2addr p6, p3

    iget-object p1, p0, LE9/c;->a:LG9/a;

    invoke-virtual {p1, p5, p2, p6}, LG9/a;->c(III)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p5, p2, p6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getBlock(III)I

    move-result p1

    if-ltz p1, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(IILvc/h;LE9/b;IILF9/c;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "blocks",
            "data",
            "chunkX",
            "chunkZ",
            "generatorListener"
        }
    .end annotation

    move/from16 v13, p1

    new-instance v14, LJAVARuntime/Point3;

    invoke-direct {v14}, LJAVARuntime/Point3;-><init>()V

    const/4 v15, 0x0

    move v12, v15

    :goto_0
    if-ge v12, v13, :cond_2

    move v11, v15

    :goto_1
    if-ge v11, v13, :cond_1

    move/from16 v10, p2

    move v9, v15

    :goto_2
    if-ge v9, v10, :cond_0

    move-object/from16 v8, p3

    invoke-virtual {v8, v12, v11, v9}, Lvc/h;->u(III)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v12

    move v2, v9

    move v3, v11

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v16, v9

    move-object/from16 v9, p7

    move-object v10, v14

    move/from16 v17, v11

    move/from16 v11, p1

    move/from16 v18, v12

    move/from16 v12, p2

    invoke-virtual/range {v0 .. v12}, LE9/c;->c(IIIILE9/b;Lvc/h;IILF9/c;LJAVARuntime/Point3;II)V

    add-int/lit8 v9, v16, 0x1

    move/from16 v10, p2

    move/from16 v11, v17

    move/from16 v12, v18

    goto :goto_2

    :cond_0
    move/from16 v17, v11

    move/from16 v18, v12

    add-int/lit8 v11, v17, 0x1

    goto :goto_1

    :cond_1
    move/from16 v18, v12

    add-int/lit8 v12, v18, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c(IIIILE9/b;Lvc/h;IILF9/c;LJAVARuntime/Point3;II)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "blockType",
            "data",
            "blocks",
            "chunkX",
            "chunkZ",
            "generatorListener",
            "coords",
            "width",
            "height"
        }
    .end annotation

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-virtual {v14, v9, v10, v11}, LJAVARuntime/Point3;->set(III)V

    if-lez v12, :cond_5

    add-int/lit8 v2, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-virtual/range {v0 .. v8}, LE9/c;->a(IIILvc/h;IIII)I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {v13, v12, v0, v1, v14}, LF9/c;->drawFace(IIILJAVARuntime/Point3;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p5 .. p5}, LH9/a;->i(LE9/b;)V

    :cond_0
    add-int/lit8 v2, v10, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-virtual/range {v0 .. v8}, LE9/c;->a(IIILvc/h;IIII)I

    move-result v0

    const/4 v1, 0x3

    invoke-interface {v13, v12, v0, v1, v14}, LF9/c;->drawFace(IIILJAVARuntime/Point3;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static/range {p5 .. p5}, LH9/a;->i(LE9/b;)V

    :cond_1
    add-int/lit8 v3, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-virtual/range {v0 .. v8}, LE9/c;->a(IIILvc/h;IIII)I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {v13, v12, v0, v1, v14}, LF9/c;->drawFace(IIILJAVARuntime/Point3;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static/range {p5 .. p5}, LH9/a;->i(LE9/b;)V

    :cond_2
    add-int/lit8 v3, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-virtual/range {v0 .. v8}, LE9/c;->a(IIILvc/h;IIII)I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {v13, v12, v0, v1, v14}, LF9/c;->drawFace(IIILJAVARuntime/Point3;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static/range {p5 .. p5}, LH9/a;->i(LE9/b;)V

    :cond_3
    add-int/lit8 v1, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-virtual/range {v0 .. v8}, LE9/c;->a(IIILvc/h;IIII)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {v13, v12, v0, v1, v14}, LF9/c;->drawFace(IIILJAVARuntime/Point3;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static/range {p5 .. p5}, LH9/a;->i(LE9/b;)V

    :cond_4
    const/4 v15, 0x1

    add-int/lit8 v1, v9, -0x1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-virtual/range {v0 .. v8}, LE9/c;->a(IIILvc/h;IIII)I

    move-result v0

    invoke-interface {v13, v12, v0, v15, v14}, LF9/c;->drawFace(IIILJAVARuntime/Point3;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static/range {p5 .. p5}, LH9/a;->i(LE9/b;)V

    :cond_5
    return-void
.end method
