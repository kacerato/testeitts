.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/NativeAutoSlicer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-auto-slicer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeSliceSprites(Ljava/lang/String;II)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imagePath",
            "alphaThreshold",
            "minIslandSizePixels"
        }
    .end annotation
.end method

.method public static sliceSprites(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/NativeAutoSlicer;->sliceSprites(Ljava/io/File;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static sliceSprites(Ljava/io/File;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFile",
            "alphaThreshold"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/NativeAutoSlicer;->sliceSprites(Ljava/io/File;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static sliceSprites(Ljava/io/File;II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageFile",
            "alphaThreshold",
            "minIslandSizePixels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/NativeAutoSlicer;->nativeSliceSprites(Ljava/lang/String;II)[I

    move-result-object p0

    if-eqz p0, :cond_2

    .line 6
    array-length p1, p0

    const/4 p2, 0x2

    if-ge p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 7
    aget p1, p0, p1

    const/4 v1, 0x1

    .line 8
    aget v8, p0, v1

    :goto_0
    add-int/lit8 v1, p2, 0x3

    .line 9
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 10
    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    aget v2, p0, p2

    add-int/lit8 v3, p2, 0x1

    aget v3, p0, v3

    add-int/lit8 v4, p2, 0x2

    aget v4, p0, v4

    aget v5, p0, v1

    move-object v1, v9

    move v6, p1

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;-><init>(IIIIII)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x4

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method
