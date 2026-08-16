.class public Lcom/threed/jpct/TextureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_PHYSICAL_TEXTURE_STAGES:I = 0x4

.field public static final MODE_ADD:I = 0x2

.field private static final MODE_BASE:I = 0x0

.field public static final MODE_BLEND:I = 0x4

.field public static final MODE_MODULATE:I = 0x1

.field public static final MODE_REPLACE:I = 0x3


# instance fields
.field mode:[I

.field stageCnt:I

.field textures:[I

.field u0:[F

.field u1:[F

.field u2:[F

.field v0:[F

.field v1:[F

.field v2:[F


# direct methods
.method public constructor <init>(I)V
    .locals 10

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/threed/jpct/TextureInfo;->textures:[I

    .line 14
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/threed/jpct/TextureInfo;->mode:[I

    .line 15
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/threed/jpct/TextureInfo;->u0:[F

    .line 16
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/threed/jpct/TextureInfo;->v0:[F

    .line 17
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/threed/jpct/TextureInfo;->u1:[F

    .line 18
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/threed/jpct/TextureInfo;->v1:[F

    .line 19
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/threed/jpct/TextureInfo;->u2:[F

    .line 20
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->v2:[F

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    .line 22
    invoke-virtual/range {v1 .. v9}, Lcom/threed/jpct/TextureInfo;->add(IFFFFFFI)V

    return-void
.end method

.method public constructor <init>(IFFFFFF)V
    .locals 10

    move-object v9, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v1, v0, [I

    iput-object v1, v9, Lcom/threed/jpct/TextureInfo;->textures:[I

    .line 3
    new-array v1, v0, [I

    iput-object v1, v9, Lcom/threed/jpct/TextureInfo;->mode:[I

    .line 4
    new-array v1, v0, [F

    iput-object v1, v9, Lcom/threed/jpct/TextureInfo;->u0:[F

    .line 5
    new-array v1, v0, [F

    iput-object v1, v9, Lcom/threed/jpct/TextureInfo;->v0:[F

    .line 6
    new-array v1, v0, [F

    iput-object v1, v9, Lcom/threed/jpct/TextureInfo;->u1:[F

    .line 7
    new-array v1, v0, [F

    iput-object v1, v9, Lcom/threed/jpct/TextureInfo;->v1:[F

    .line 8
    new-array v1, v0, [F

    iput-object v1, v9, Lcom/threed/jpct/TextureInfo;->u2:[F

    .line 9
    new-array v0, v0, [F

    iput-object v0, v9, Lcom/threed/jpct/TextureInfo;->v2:[F

    const/4 v0, 0x0

    .line 10
    iput v0, v9, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 11
    invoke-virtual/range {v0 .. v8}, Lcom/threed/jpct/TextureInfo;->add(IFFFFFFI)V

    return-void
.end method


# virtual methods
.method public add(IFFFFFFI)V
    .locals 11

    move-object v10, p0

    .line 2
    iget v2, v10, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/threed/jpct/TextureInfo;->set(IIFFFFFFI)V

    .line 3
    iget v0, v10, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    return-void
.end method

.method public add(II)V
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v8, p2

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/threed/jpct/TextureInfo;->add(IFFFFFFI)V

    return-void
.end method

.method public set(IIFFFFFFI)V
    .locals 1

    if-nez p9, :cond_0

    if-eqz p2, :cond_0

    .line 2
    const-string p1, "Wrong mode for texture blending!"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    .line 3
    :cond_0
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    if-lt p2, v0, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Maximum number of texture layer configured by Config.maxTextureLayers is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p2, Lcom/threed/jpct/Config;->maxTextureLayers:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/TextureInfo;->textures:[I

    aput p1, v0, p2

    .line 6
    iget-object p1, p0, Lcom/threed/jpct/TextureInfo;->u0:[F

    aput p3, p1, p2

    .line 7
    iget-object p1, p0, Lcom/threed/jpct/TextureInfo;->v0:[F

    aput p4, p1, p2

    .line 8
    iget-object p1, p0, Lcom/threed/jpct/TextureInfo;->u1:[F

    aput p5, p1, p2

    .line 9
    iget-object p1, p0, Lcom/threed/jpct/TextureInfo;->v1:[F

    aput p6, p1, p2

    .line 10
    iget-object p1, p0, Lcom/threed/jpct/TextureInfo;->u2:[F

    aput p7, p1, p2

    .line 11
    iget-object p1, p0, Lcom/threed/jpct/TextureInfo;->v2:[F

    aput p8, p1, p2

    .line 12
    iget-object p1, p0, Lcom/threed/jpct/TextureInfo;->mode:[I

    aput p9, p1, p2

    return-void
.end method

.method public set(III)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v9, p3

    .line 1
    invoke-virtual/range {v0 .. v9}, Lcom/threed/jpct/TextureInfo;->set(IIFFFFFFI)V

    return-void
.end method
