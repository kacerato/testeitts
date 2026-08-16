.class public abstract Lcom/ardor3d/image/util/ImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPixelByteSize(Lcom/ardor3d/image/ImageDataFormat;Lcom/ardor3d/image/ImageDataType;)I
    .locals 0

    invoke-virtual {p0}, Lcom/ardor3d/image/ImageDataFormat;->getComponents()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Lcom/ardor3d/image/ImageDataType;->getBytesPerComponent()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static final getTextureStoreFormat(Lcom/ardor3d/image/TextureStoreFormat;Lcom/ardor3d/image/Image;)Lcom/ardor3d/image/TextureStoreFormat;
    .locals 4

    sget-object v0, Lcom/ardor3d/image/TextureStoreFormat;->GuessCompressedFormat:Lcom/ardor3d/image/TextureStoreFormat;

    if-eq p0, v0, :cond_0

    sget-object v1, Lcom/ardor3d/image/TextureStoreFormat;->GuessNoCompressedFormat:Lcom/ardor3d/image/TextureStoreFormat;

    if-eq p0, v1, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/ardor3d/image/Image;->getDataType()Lcom/ardor3d/image/ImageDataType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Image;->getDataFormat()Lcom/ardor3d/image/ImageDataFormat;

    move-result-object p1

    sget-object v2, Lcom/ardor3d/image/util/ImageUtils$1;->$SwitchMap$com$ardor3d$image$ImageDataFormat:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->NativeLATC_LA:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->NativeLATC_L:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->NativeDXT5:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->NativeDXT3:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->NativeDXT1A:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->NativeDXT1:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Depth:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/ardor3d/image/util/ImageUtils$1;->$SwitchMap$com$ardor3d$image$ImageDataType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_8
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Intensity32F:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Intensity16F:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Intensity16:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Intensity8:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/ardor3d/image/util/ImageUtils$1;->$SwitchMap$com$ardor3d$image$ImageDataType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_d
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Alpha32F:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Alpha16F:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Alpha16:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Alpha8:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_11
    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->CompressedLuminanceAlpha:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :cond_1
    sget-object p0, Lcom/ardor3d/image/util/ImageUtils$1;->$SwitchMap$com$ardor3d$image$ImageDataType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_3

    goto :goto_0

    :pswitch_12
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->LuminanceAlpha32F:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->LuminanceAlpha16F:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Luminance16Alpha16:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Luminance8Alpha8:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Luminance4Alpha4:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_17
    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->CompressedLuminance:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :cond_2
    sget-object p0, Lcom/ardor3d/image/util/ImageUtils$1;->$SwitchMap$com$ardor3d$image$ImageDataType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_4

    goto :goto_0

    :pswitch_18
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Luminance32F:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Luminance16F:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Luminance16:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->Luminance8:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_1c
    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->CompressedRGB:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :cond_3
    sget-object p0, Lcom/ardor3d/image/util/ImageUtils$1;->$SwitchMap$com$ardor3d$image$ImageDataType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_5

    goto :goto_0

    :pswitch_1d
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->RGB32F:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_1e
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->RGB16F:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_1f
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->RGB16:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_20
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->RGB8:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_21
    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->CompressedRGBA:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :cond_4
    sget-object p0, Lcom/ardor3d/image/util/ImageUtils$1;->$SwitchMap$com$ardor3d$image$ImageDataType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_6

    :goto_0
    new-instance p0, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled type / format combination: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_22
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->RGBA32F:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_23
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->RGBA16F:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_24
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->RGBA16:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :pswitch_25
    sget-object p0, Lcom/ardor3d/image/TextureStoreFormat;->RGBA8:Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unable to guess format type... Image is null."

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_1c
        :pswitch_1c
        :pswitch_17
        :pswitch_11
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch
.end method
