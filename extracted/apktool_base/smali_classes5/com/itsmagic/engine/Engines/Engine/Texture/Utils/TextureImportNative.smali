.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-texture-importer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static importTexture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputPath",
            "outputTexturePath",
            "outputAstcPath",
            "config",
            "parallel"
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p3, :cond_0

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    :cond_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v0, p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowOpacity:Z

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object p3, p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->opacityTextureFile:Ljava/lang/String;

    if-eqz p3, :cond_1

    move-object v5, p3

    goto :goto_0

    :cond_1
    move-object v5, v1

    :goto_0
    invoke-static {}, LO9/b;->a()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    if-nez p4, :cond_2

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, p3

    :goto_1
    if-eqz p2, :cond_3

    move-object v3, p2

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    const-class v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative;->nativeImportTexture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "outputTexturePath can\'t be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "inputPath can\'t be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeImportTexture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;
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
            "inputPath",
            "outputTexturePath",
            "outputAstcPath",
            "configJson",
            "opacityPath",
            "astcThreadCount",
            "resultClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;",
            ">;)",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;"
        }
    .end annotation
.end method
