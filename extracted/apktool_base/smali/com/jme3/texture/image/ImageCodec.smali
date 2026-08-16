.class abstract Lcom/jme3/texture/image/ImageCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLAG_F16:I = 0x1

.field public static final FLAG_F32:I = 0x2

.field public static final FLAG_GRAY:I = 0x4

.field private static final params:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/jme3/texture/Image$Format;",
            "Lcom/jme3/texture/image/ImageCodec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final bpp:I

.field protected final isGray:Z

.field protected final maxAlpha:I

.field protected final maxBlue:I

.field protected final maxGreen:I

.field protected final maxRed:I

.field protected final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/jme3/texture/Image$Format;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/texture/image/ImageCodec;->params:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    new-instance v9, Lcom/jme3/texture/image/ByteOffsetImageCodec;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/jme3/texture/image/ByteOffsetImageCodec;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    new-instance v9, Lcom/jme3/texture/image/ByteOffsetImageCodec;

    const/4 v4, 0x4

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/jme3/texture/image/ByteOffsetImageCodec;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->Luminance16F:Lcom/jme3/texture/Image$Format;

    new-instance v13, Lcom/jme3/texture/image/BitMaskImageCodec;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/jme3/texture/image/BitMaskImageCodec;-><init>(IIIIIIIIII)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->Luminance32F:Lcom/jme3/texture/Image$Format;

    new-instance v13, Lcom/jme3/texture/image/BitMaskImageCodec;

    const/4 v3, 0x4

    const/4 v4, 0x6

    const/16 v6, 0x20

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/jme3/texture/image/BitMaskImageCodec;-><init>(IIIIIIIIII)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    new-instance v9, Lcom/jme3/texture/image/ByteOffsetImageCodec;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/jme3/texture/image/ByteOffsetImageCodec;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->Luminance16FAlpha16F:Lcom/jme3/texture/Image$Format;

    new-instance v13, Lcom/jme3/texture/image/BitMaskImageCodec;

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/jme3/texture/image/BitMaskImageCodec;-><init>(IIIIIIIIII)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->BGR8:Lcom/jme3/texture/Image$Format;

    new-instance v9, Lcom/jme3/texture/image/ByteOffsetImageCodec;

    const/4 v7, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x2

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/jme3/texture/image/ByteOffsetImageCodec;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGB565:Lcom/jme3/texture/Image$Format;

    new-instance v13, Lcom/jme3/texture/image/BitMaskImageCodec;

    const/4 v11, 0x5

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/16 v10, 0xb

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/jme3/texture/image/BitMaskImageCodec;-><init>(IIIIIIIIII)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    new-instance v9, Lcom/jme3/texture/image/ByteOffsetImageCodec;

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v3, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/jme3/texture/image/ByteOffsetImageCodec;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGB32F:Lcom/jme3/texture/Image$Format;

    new-instance v13, Lcom/jme3/texture/image/ByteAlignedImageCodec;

    const/4 v11, 0x4

    const/16 v12, 0x8

    const/16 v3, 0xc

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/jme3/texture/image/ByteAlignedImageCodec;-><init>(IIIIIIIIII)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->R16F:Lcom/jme3/texture/Image$Format;

    new-instance v13, Lcom/jme3/texture/image/ByteAlignedImageCodec;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/jme3/texture/image/ByteAlignedImageCodec;-><init>(IIIIIIIIII)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->RG16F:Lcom/jme3/texture/Image$Format;

    new-instance v13, Lcom/jme3/texture/image/ByteAlignedImageCodec;

    const/4 v11, 0x2

    const/4 v3, 0x4

    const/4 v7, 0x2

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/jme3/texture/image/ByteAlignedImageCodec;-><init>(IIIIIIIIII)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/jme3/texture/image/ByteAlignedImageCodec;

    const/16 v23, 0x2

    const/16 v24, 0x4

    const/4 v15, 0x6

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x2

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v14, v1

    invoke-direct/range {v14 .. v24}, Lcom/jme3/texture/image/ByteAlignedImageCodec;-><init>(IIIIIIIIII)V

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB16F:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB16F_to_RGB111110F:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB16F_to_RGB9E5:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->ABGR8:Lcom/jme3/texture/Image$Format;

    new-instance v9, Lcom/jme3/texture/image/ByteOffsetImageCodec;

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x3

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/jme3/texture/image/ByteOffsetImageCodec;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->ARGB8:Lcom/jme3/texture/Image$Format;

    new-instance v9, Lcom/jme3/texture/image/ByteOffsetImageCodec;

    const/4 v8, 0x3

    const/4 v6, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/jme3/texture/image/ByteOffsetImageCodec;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->BGRA8:Lcom/jme3/texture/Image$Format;

    new-instance v9, Lcom/jme3/texture/image/ByteOffsetImageCodec;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/jme3/texture/image/ByteOffsetImageCodec;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGB5A1:Lcom/jme3/texture/Image$Format;

    new-instance v13, Lcom/jme3/texture/image/BitMaskImageCodec;

    const/4 v11, 0x6

    const/4 v12, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/16 v10, 0xb

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/jme3/texture/image/BitMaskImageCodec;-><init>(IIIIIIIIII)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/texture/image/BitMaskImageCodec;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jme3/texture/image/BitMaskImageCodec;->be:Z

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGB10A2:Lcom/jme3/texture/Image$Format;

    new-instance v13, Lcom/jme3/texture/image/BitMaskImageCodec;

    const/16 v11, 0xc

    const/4 v12, 0x2

    const/4 v3, 0x4

    const/4 v5, 0x2

    const/16 v6, 0xa

    const/16 v7, 0xa

    const/16 v8, 0xa

    const/16 v10, 0x16

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/jme3/texture/image/BitMaskImageCodec;-><init>(IIIIIIIIII)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    new-instance v9, Lcom/jme3/texture/image/ByteOffsetImageCodec;

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/jme3/texture/image/ByteOffsetImageCodec;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGBA16F:Lcom/jme3/texture/Image$Format;

    new-instance v13, Lcom/jme3/texture/image/ByteAlignedImageCodec;

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/jme3/texture/image/ByteAlignedImageCodec;-><init>(IIIIIIIIII)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGBA32F:Lcom/jme3/texture/Image$Format;

    new-instance v13, Lcom/jme3/texture/image/ByteAlignedImageCodec;

    const/4 v11, 0x4

    const/16 v12, 0x8

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/16 v9, 0xc

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/jme3/texture/image/ByteAlignedImageCodec;-><init>(IIIIIIIIII)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jme3/texture/image/ImageCodec;->bpp:I

    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/jme3/texture/image/ImageCodec;->isGray:Z

    and-int/lit8 p1, p2, -0x5

    iput p1, p0, Lcom/jme3/texture/image/ImageCodec;->type:I

    iput p3, p0, Lcom/jme3/texture/image/ImageCodec;->maxAlpha:I

    iput p4, p0, Lcom/jme3/texture/image/ImageCodec;->maxRed:I

    iput p5, p0, Lcom/jme3/texture/image/ImageCodec;->maxGreen:I

    iput p6, p0, Lcom/jme3/texture/image/ImageCodec;->maxBlue:I

    return-void
.end method

.method public static isSupported(Lcom/jme3/texture/Image$Format;)Z
    .locals 1

    sget-object v0, Lcom/jme3/texture/image/ImageCodec;->params:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static lookup(Lcom/jme3/texture/Image$Format;)Lcom/jme3/texture/image/ImageCodec;
    .locals 3

    sget-object v0, Lcom/jme3/texture/image/ImageCodec;->params:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/image/ImageCodec;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract readComponents(Ljava/nio/ByteBuffer;IIII[I[B)V
.end method

.method public abstract writeComponents(Ljava/nio/ByteBuffer;IIII[I[B)V
.end method
