.class public Ljpct/ae/wrapper/JTextureInfo;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctTextureInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/TextureInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static final MAX_PHYSICAL_TEXTURE_STAGES()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static final MODE_ADD()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static final MODE_BLEND()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static final MODE_MODULATE()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final MODE_REPLACE()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method


# virtual methods
.method public Initialize(I)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/TextureInfo;

    invoke-direct {v0, p1}, Lcom/threed/jpct/TextureInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JTextureInfo;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize2(IFFFFFF)V
    .locals 9

    new-instance v8, Lcom/threed/jpct/TextureInfo;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/threed/jpct/TextureInfo;-><init>(IFFFFFF)V

    move-object v0, p0

    invoke-virtual {p0, v8}, Ljpct/ae/wrapper/JTextureInfo;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public add(II)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureInfo;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureInfo;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/TextureInfo;->add(II)V

    return-void
.end method

.method public add2(IFFFFFFI)V
    .locals 10

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureInfo;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/threed/jpct/TextureInfo;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/threed/jpct/TextureInfo;->add(IFFFFFFI)V

    return-void
.end method

.method public set(III)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureInfo;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/TextureInfo;->set(III)V

    return-void
.end method

.method public set2(IIFFFFFFI)V
    .locals 11

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureInfo;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/threed/jpct/TextureInfo;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/threed/jpct/TextureInfo;->set(IIFFFFFFI)V

    return-void
.end method
