.class public LAb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/util/List;
    .locals 0
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

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/NativeAutoSlicer;->sliceSprites(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/io/File;I)Ljava/util/List;
    .locals 0
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

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/NativeAutoSlicer;->sliceSprites(Ljava/io/File;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/io/File;II)Ljava/util/List;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/NativeAutoSlicer;->sliceSprites(Ljava/io/File;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
