.class public final Lcom/jme3/renderer/opengl/TextureUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private formats:[[Lcom/jme3/renderer/opengl/GLImageFormat;

.field private final gl:Lcom/jme3/renderer/opengl/GL;

.field private final gl2:Lcom/jme3/renderer/opengl/GL2;

.field private final glext:Lcom/jme3/renderer/opengl/GLExt;

.field private supportUnpackRowLength:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/renderer/opengl/TextureUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/renderer/opengl/TextureUtil;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/opengl/GL;Lcom/jme3/renderer/opengl/GL2;Lcom/jme3/renderer/opengl/GLExt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    iput-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl2:Lcom/jme3/renderer/opengl/GL2;

    iput-object p3, p0, Lcom/jme3/renderer/opengl/TextureUtil;->glext:Lcom/jme3/renderer/opengl/GLExt;

    return-void
.end method

.method private setupTextureSwizzle(ILcom/jme3/texture/Image$Format;)V
    .locals 7

    sget-object v0, Lcom/jme3/renderer/opengl/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/16 v0, 0x1904

    const v1, 0x8e45

    const v2, 0x8e44

    const v3, 0x8e43

    const v4, 0x8e42

    const/16 v5, 0x1903

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    const/16 v6, 0x1906

    invoke-interface {p2, p1, v4, v6}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    const/16 v4, 0x1905

    invoke-interface {p2, p1, v3, v4}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, p1, v2, v0}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, p1, v1, v5}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, p1, v4, v5}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, p1, v3, v5}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, p1, v2, v5}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, p1, v1, v0}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, p1, v4, v5}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, p1, v3, v5}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, p1, v2, v5}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v1, v0}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    goto :goto_0

    :pswitch_3
    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v4, v0}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, p1, v3, v0}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, p1, v2, v0}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, p1, v1, v5}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private uploadTextureLevel(Lcom/jme3/renderer/opengl/GLImageFormat;IIIIIIIILjava/nio/ByteBuffer;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    iget-boolean v3, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->compressed:Z

    const v4, 0x8c1a

    const v5, 0x806f

    if-eqz v3, :cond_2

    if-eqz p10, :cond_2

    if-ne v2, v5, :cond_0

    iget-object v3, v0, Lcom/jme3/renderer/opengl/TextureUtil;->gl2:Lcom/jme3/renderer/opengl/GL2;

    iget v4, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    const/4 v8, 0x0

    move-object v1, v3

    move v2, p2

    move/from16 v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v9, p10

    invoke-interface/range {v1 .. v9}, Lcom/jme3/renderer/opengl/GL2;->glCompressedTexImage3D(IIIIIIILjava/nio/ByteBuffer;)V

    goto/16 :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    iget-object v3, v0, Lcom/jme3/renderer/opengl/TextureUtil;->gl2:Lcom/jme3/renderer/opengl/GL2;

    const/4 v9, 0x1

    iget v10, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v3

    move v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/jme3/renderer/opengl/GL2;->glCompressedTexSubImage3D(IIIIIIIIILjava/nio/ByteBuffer;)V

    goto/16 :goto_0

    :cond_1
    iget-object v3, v0, Lcom/jme3/renderer/opengl/TextureUtil;->gl2:Lcom/jme3/renderer/opengl/GL2;

    iget v4, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    const/4 v7, 0x0

    move-object v1, v3

    move v2, p2

    move/from16 v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v8, p10

    invoke-interface/range {v1 .. v8}, Lcom/jme3/renderer/opengl/GL;->glCompressedTexImage2D(IIIIIILjava/nio/ByteBuffer;)V

    goto/16 :goto_0

    :cond_2
    if-ne v2, v5, :cond_3

    iget-object v3, v0, Lcom/jme3/renderer/opengl/TextureUtil;->gl2:Lcom/jme3/renderer/opengl/GL2;

    iget v4, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    iget v9, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    iget v10, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    const/4 v8, 0x0

    move-object v1, v3

    move v2, p2

    move/from16 v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/jme3/renderer/opengl/GL2;->glTexImage3D(IIIIIIIIILjava/nio/ByteBuffer;)V

    goto/16 :goto_0

    :cond_3
    if-ne v2, v4, :cond_5

    const/4 v3, -0x1

    move/from16 v6, p4

    if-ne v6, v3, :cond_4

    iget-object v3, v0, Lcom/jme3/renderer/opengl/TextureUtil;->gl2:Lcom/jme3/renderer/opengl/GL2;

    iget v4, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    iget v9, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    iget v10, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    const/4 v8, 0x0

    move-object v1, v3

    move v2, p2

    move/from16 v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p5

    move-object/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/jme3/renderer/opengl/GL2;->glTexImage3D(IIIIIIIIILjava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/jme3/renderer/opengl/TextureUtil;->gl2:Lcom/jme3/renderer/opengl/GL2;

    iget v10, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    iget v11, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v1, v3

    move v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v12, p10

    invoke-interface/range {v1 .. v12}, Lcom/jme3/renderer/opengl/GL2;->glTexSubImage3D(IIIIIIIIIILjava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    move/from16 v4, p9

    if-le v4, v3, :cond_6

    iget-object v3, v0, Lcom/jme3/renderer/opengl/TextureUtil;->glext:Lcom/jme3/renderer/opengl/GLExt;

    iget v5, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    const/4 v7, 0x1

    move-object v1, v3

    move v2, p2

    move/from16 v3, p9

    move v4, v5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v1 .. v7}, Lcom/jme3/renderer/opengl/GLExt;->glTexImage2DMultisample(IIIIIZ)V

    goto :goto_0

    :cond_6
    iget-object v3, v0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    iget v4, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    iget v8, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    iget v9, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    const/4 v7, 0x0

    move-object v1, v3

    move v2, p2

    move/from16 v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v10, p10

    invoke-interface/range {v1 .. v10}, Lcom/jme3/renderer/opengl/GL;->glTexImage2D(IIIIIIIILjava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getImageFormat(Lcom/jme3/texture/Image$Format;Z)Lcom/jme3/renderer/opengl/GLImageFormat;
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->formats:[[Lcom/jme3/renderer/opengl/GLImageFormat;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, p2, p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/jme3/renderer/opengl/TextureUtil;->formats:[[Lcom/jme3/renderer/opengl/GLImageFormat;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, p2, p1

    return-object p1
.end method

.method public getImageFormatWithError(Lcom/jme3/texture/Image$Format;Z)Lcom/jme3/renderer/opengl/GLImageFormat;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/jme3/texture/Image$Format;->isDepthFormat()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/jme3/renderer/opengl/TextureUtil;->getImageFormat(Lcom/jme3/texture/Image$Format;Z)Lcom/jme3/renderer/opengl/GLImageFormat;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/opengl/TextureUtil;->getImageFormat(Lcom/jme3/texture/Image$Format;Z)Lcom/jme3/renderer/opengl/GLImageFormat;

    move-result-object v1

    sget-object p2, Lcom/jme3/renderer/opengl/TextureUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "No sRGB format available for \'\'{0}\'\'. Falling back to linear."

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    new-instance p2, Lcom/jme3/renderer/RendererException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image format \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is unsupported by the video hardware."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public initialize(Ljava/util/EnumSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/jme3/renderer/Caps;->UnpackRowLength:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/renderer/opengl/TextureUtil;->supportUnpackRowLength:Z

    invoke-static {p1}, Lcom/jme3/renderer/opengl/GLImageFormats;->getFormatsForCaps(Ljava/util/EnumSet;)[[Lcom/jme3/renderer/opengl/GLImageFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/renderer/opengl/TextureUtil;->formats:[[Lcom/jme3/renderer/opengl/GLImageFormat;

    sget-object p1, Lcom/jme3/renderer/opengl/TextureUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Supported texture formats: \n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Lcom/jme3/texture/Image$Format;->values()[Lcom/jme3/texture/Image$Format;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_3

    invoke-static {}, Lcom/jme3/texture/Image$Format;->values()[Lcom/jme3/texture/Image$Format;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/jme3/renderer/opengl/TextureUtil;->formats:[[Lcom/jme3/renderer/opengl/GLImageFormat;

    aget-object v4, v3, v0

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    const-string v3, "\t"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (Linear"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1

    const-string v2, "/sRGB"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, ")\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/jme3/renderer/opengl/TextureUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public uploadSubTexture(ILcom/jme3/texture/Image;IIIIIIIZ)V
    .locals 20

    move-object/from16 v0, p0

    const/16 v1, 0xde1

    move/from16 v12, p1

    if-ne v12, v1, :cond_b

    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/texture/Image;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_b

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v1

    if-nez v1, :cond_a

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v1

    if-gt v1, v2, :cond_9

    .line 22
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->isCompressed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 24
    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->isDepthFormat()Z

    move-result v3

    if-nez v3, :cond_7

    .line 25
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v3

    sget-object v4, Lcom/jme3/texture/image/ColorSpace;->sRGB:Lcom/jme3/texture/image/ColorSpace;

    const/4 v13, 0x0

    if-ne v3, v4, :cond_0

    if-eqz p10, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v13

    .line 26
    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/jme3/renderer/opengl/TextureUtil;->getImageFormatWithError(Lcom/jme3/texture/Image$Format;Z)Lcom/jme3/renderer/opengl/GLImageFormat;

    move-result-object v1

    .line 27
    invoke-virtual/range {p2 .. p3}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v3

    div-int/lit8 v15, v3, 0x8

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v11

    .line 30
    invoke-virtual {v14}, Ljava/nio/Buffer;->position()I

    move-result v10

    mul-int v3, p7, v11

    add-int v3, p6, v3

    mul-int v9, v3, v15

    .line 31
    invoke-virtual {v14, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move/from16 v8, p8

    if-eq v11, v8, :cond_1

    move/from16 v16, v2

    goto :goto_1

    :cond_1
    move/from16 v16, v13

    :goto_1
    if-eqz v16, :cond_3

    .line 32
    iget-boolean v2, v0, Lcom/jme3/renderer/opengl/TextureUtil;->supportUnpackRowLength:Z

    if-nez v2, :cond_3

    move/from16 v7, p9

    :goto_2
    if-ge v13, v7, :cond_2

    mul-int v2, v11, v15

    mul-int/2addr v2, v13

    add-int/2addr v2, v9

    .line 33
    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    iget-object v2, v0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    add-int v6, p5, v13

    iget v5, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    iget v4, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v3, p1

    move/from16 v18, v4

    move/from16 v4, v16

    move/from16 v16, v5

    move/from16 v5, p4

    move/from16 v7, p8

    move/from16 v8, v17

    move/from16 v17, v9

    move/from16 v9, v16

    move/from16 v19, v10

    move/from16 v10, v18

    move v12, v11

    move-object v11, v14

    invoke-interface/range {v2 .. v11}, Lcom/jme3/renderer/opengl/GL;->glTexSubImage2D(IIIIIIIILjava/nio/ByteBuffer;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v8, p8

    move/from16 v7, p9

    move v11, v12

    move/from16 v9, v17

    move/from16 v10, v19

    move/from16 v12, p1

    goto :goto_2

    :cond_2
    move v1, v10

    goto :goto_3

    :cond_3
    move/from16 v19, v10

    move v12, v11

    const/16 v15, 0xcf2

    if-eqz v16, :cond_4

    .line 35
    iget-object v2, v0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v2, v15, v12}, Lcom/jme3/renderer/opengl/GL;->glPixelStorei(II)V

    .line 36
    :cond_4
    iget-object v2, v0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    iget v9, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    iget v10, v1, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    const/4 v4, 0x0

    move/from16 v3, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p8

    move/from16 v8, p9

    move-object v11, v14

    invoke-interface/range {v2 .. v11}, Lcom/jme3/renderer/opengl/GL;->glTexSubImage2D(IIIIIIIILjava/nio/ByteBuffer;)V

    if-eqz v16, :cond_5

    .line 37
    iget-object v1, v0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v1, v15, v13}, Lcom/jme3/renderer/opengl/GL;->glPixelStorei(II)V

    :cond_5
    move/from16 v1, v19

    .line 38
    :goto_3
    invoke-virtual {v14, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 39
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The image index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not valid for the given image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Updating depth images is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_8
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Updating compressed images is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_9
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Updating multisampled images is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Updating mip-mapped images is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Updating non-2D texture is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public uploadSubTexture(Lcom/jme3/texture/Image;IIIIZ)V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move/from16 v1, p3

    const/16 v2, 0xde1

    move v4, p2

    if-ne v4, v2, :cond_7

    .line 1
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v2

    if-nez v2, :cond_6

    .line 3
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v2

    if-gt v2, v3, :cond_5

    .line 4
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/jme3/texture/Image$Format;->isCompressed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 6
    invoke-virtual {v2}, Lcom/jme3/texture/Image$Format;->isDepthFormat()Z

    move-result v5

    if-nez v5, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v5

    sget-object v6, Lcom/jme3/texture/image/ColorSpace;->sRGB:Lcom/jme3/texture/image/ColorSpace;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_0

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    move v3, v7

    .line 8
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/jme3/renderer/opengl/TextureUtil;->getImageFormatWithError(Lcom/jme3/texture/Image$Format;Z)Lcom/jme3/renderer/opengl/GLImageFormat;

    move-result-object v2

    move-object v3, p1

    if-ltz v1, :cond_1

    .line 9
    invoke-virtual {p1, v1}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    :goto_1
    move-object v12, v5

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :goto_2
    if-eqz v12, :cond_2

    .line 10
    invoke-virtual {v12, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    invoke-virtual {v12}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v12, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 12
    iget-object v1, v0, Lcom/jme3/renderer/opengl/TextureUtil;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v9

    iget v10, v2, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    iget v11, v2, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    const/4 v5, 0x0

    move-object v3, v1

    move v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v3 .. v12}, Lcom/jme3/renderer/opengl/GL;->glTexSubImage2D(IIIIIIIILjava/nio/ByteBuffer;)V

    return-void

    .line 13
    :cond_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The image index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not valid for the given image"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Updating depth images is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Updating compressed images is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Updating multisampled images is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_6
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Updating mip-mapped images is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Updating non-2D texture is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public uploadTexture(Lcom/jme3/texture/Image;IIZ)V
    .locals 24

    move-object/from16 v11, p0

    move/from16 v12, p3

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v0

    sget-object v1, Lcom/jme3/texture/image/ColorSpace;->sRGB:Lcom/jme3/texture/image/ColorSpace;

    const/4 v2, 0x0

    const/4 v13, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p4, :cond_0

    move v0, v13

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-virtual {v11, v1, v0}, Lcom/jme3/renderer/opengl/TextureUtil;->getImageFormatWithError(Lcom/jme3/texture/Image$Format;Z)Lcom/jme3/renderer/opengl/GLImageFormat;

    move-result-object v14

    move-object/from16 v0, p1

    if-ltz v12, :cond_1

    invoke-virtual {v0, v12}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_1
    move-object v15, v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v16, v3

    goto :goto_3

    :cond_2
    move/from16 v16, v13

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getDepth()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v15, :cond_4

    new-array v3, v13, [I

    invoke-virtual {v15}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    aput v4, v3, v2

    :cond_3
    :goto_4
    move-object v10, v3

    goto :goto_5

    :cond_4
    new-array v3, v13, [I

    mul-int v4, v17, v18

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v5

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x8

    aput v4, v3, v2

    goto :goto_4

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v20

    iget-boolean v0, v14, Lcom/jme3/renderer/opengl/GLImageFormat;->swizzleRequired:Z

    move/from16 v9, p2

    if-eqz v0, :cond_5

    invoke-direct {v11, v9, v1}, Lcom/jme3/renderer/opengl/TextureUtil;->setupTextureSwizzle(ILcom/jme3/texture/Image$Format;)V

    :cond_5
    move v7, v2

    move v8, v7

    :goto_6
    array-length v0, v10

    if-ge v8, v0, :cond_7

    shr-int v0, v17, v8

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    shr-int v0, v18, v8

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v21

    shr-int v0, v19, v8

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    if-eqz v15, :cond_6

    invoke-virtual {v15, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    aget v0, v10, v8

    add-int/2addr v0, v7

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_6
    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p2

    move v3, v8

    move/from16 v4, p3

    move/from16 v5, v16

    move/from16 v23, v7

    move/from16 v7, v21

    move/from16 v21, v8

    move/from16 v8, v22

    move/from16 v9, v20

    move-object/from16 v22, v10

    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/jme3/renderer/opengl/TextureUtil;->uploadTextureLevel(Lcom/jme3/renderer/opengl/GLImageFormat;IIIIIIIILjava/nio/ByteBuffer;)V

    aget v0, v22, v21

    add-int v7, v23, v0

    add-int/lit8 v8, v21, 0x1

    move/from16 v9, p2

    move-object/from16 v10, v22

    goto :goto_6

    :cond_7
    return-void
.end method
