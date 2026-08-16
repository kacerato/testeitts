.class public final LJAVARuntime/Texture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Material"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/Texture$Format;,
        LJAVARuntime/Texture$ExportFormat;,
        LJAVARuntime/Texture$SliceType;,
        LJAVARuntime/Texture$SpriteRect;,
        LJAVARuntime/Texture$ExtractCallback;
    }
.end annotation


# instance fields
.field public transient instance:Lub/p;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 8
    new-instance v0, Lub/n;

    invoke-direct {v0, p1, p2}, Lub/n;-><init>(II)V

    iput-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    return-void
.end method

.method public constructor <init>(IILJAVARuntime/Texture$Format;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "format"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 17
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->m0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 21
    new-instance p3, Lub/n;

    invoke-direct {p3, p1, p2, v0}, Lub/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object p3, p0, LJAVARuntime/Texture;->instance:Lub/p;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "allowModifications"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lub/n;

    invoke-direct {v0, p1, p2, p3}, Lub/n;-><init>(IIZ)V

    iput-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    return-void
.end method

.method public constructor <init>(IIZLJAVARuntime/Texture$Format;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "allowModifications",
            "format"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 24
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    .line 25
    iput-boolean p3, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    const/4 p3, 0x0

    .line 26
    iput-boolean p3, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    .line 27
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->m0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 28
    new-instance p3, Lub/n;

    invoke-direct {p3, p1, p2, v0}, Lub/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object p3, p0, LJAVARuntime/Texture;->instance:Lub/p;

    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "allowModifications",
            "genMipmaps"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 14
    new-instance v0, Lub/n;

    invoke-direct {v0, p1, p2, p3, p4}, Lub/n;-><init>(IIZZ)V

    iput-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    return-void
.end method

.method public constructor <init>(IIZZLJAVARuntime/Texture$Format;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "allowModifications",
            "genMipmaps",
            "format"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 31
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    .line 32
    iput-boolean p3, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    .line 33
    iput-boolean p4, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    .line 34
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->m0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 35
    new-instance p3, Lub/n;

    invoke-direct {p3, p1, p2, v0}, Lub/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object p3, p0, LJAVARuntime/Texture;->instance:Lub/p;

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .annotation runtime Lo8/c;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lub/p;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Texture;->instance:Lub/p;

    return-void
.end method

.method private static ENUMCONVERT(LJAVARuntime/Texture$SliceType;)LAb/b;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LAb/b;->valueOf(Ljava/lang/String;)LAb/b;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$a;)LJAVARuntime/Texture$ExportFormat;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/Texture$ExportFormat;->valueOf(Ljava/lang/String;)LJAVARuntime/Texture$ExportFormat;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LAb/b;)LJAVARuntime/Texture$SliceType;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/Texture$SliceType;->valueOf(Ljava/lang/String;)LJAVARuntime/Texture$SliceType;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/Texture$ExportFormat;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$a;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$a;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$a;

    move-result-object p0

    return-object p0
.end method

.method public static black()LJAVARuntime/Texture;
    .locals 1

    sget-object v0, Lyb/b;->i:Lub/p;

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    return-object v0
.end method

.method public static determineBitmapIndex(III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "imageHeight"
        }
    .end annotation

    mul-int/2addr p1, p2

    add-int/2addr p1, p0

    return p1
.end method

.method public static empty()LJAVARuntime/Texture;
    .locals 1

    sget-object v0, Lyb/b;->h:Lub/p;

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    return-object v0
.end method

.method public static genericInterface()LP8/l;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/l;

    new-instance v1, LJAVARuntime/Texture$1;

    const-class v2, LJAVARuntime/Texture;

    invoke-direct {v1, v2}, LJAVARuntime/Texture$1;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/l;-><init>(LP8/m;)V

    return-object v0
.end method

.method public static inspectorController()LP8/h;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/h;

    new-instance v1, LJAVARuntime/Texture$2;

    const-class v2, LJAVARuntime/Texture;

    invoke-direct {v1, v2}, LJAVARuntime/Texture$2;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/h;-><init>(LP8/i;)V

    return-object v0
.end method

.method public static isRenderable(LJAVARuntime/Texture;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lub/p;->K(LJAVARuntime/Texture;)Z

    move-result p0

    return p0
.end method

.method public static isRenderable(Lub/p;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lub/p;->L(Lub/p;)Z

    move-result p0

    return p0
.end method

.method public static loadFile(LJAVARuntime/File;)LJAVARuntime/Texture;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 5
    const-string v0, "Loading textures from project files without using a concrete TextureFile created by itsmagic properties panel, will broken in exported APK!"

    .line 6
    invoke-static {v0}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Make sure to use this method for loading game data files that are present in device storage, not in PROJECT"

    .line 7
    invoke-static {v1}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, LJ4/d;->Y1([Ljava/lang/String;)V

    .line 9
    new-instance v0, Lub/g;

    invoke-direct {v0, p0}, Lub/g;-><init>(Ljava/io/File;)V

    .line 10
    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "File can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadFile(LJAVARuntime/TextureFile;)LJAVARuntime/Texture;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyb/b;->d(Ljava/lang/String;)Lub/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyb/b;->i(Ljava/lang/String;)Lub/g;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadInputStream(Ljava/io/InputStream;)LJAVARuntime/Texture;
    .locals 12
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string p0, "Loading textures from project files without using a concrete TextureFile created by itsmagic properties panel, will broken in exported APK!"

    invoke-static {p0}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Make sure to use this method for loading game data files that are present in device storage, not in PROJECT"

    invoke-static {v1}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJ4/d;->Y1([Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    new-instance v9, Lub/n;

    invoke-direct {v9, p0, v8}, Lub/n;-><init>(II)V

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v10}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    mul-int v1, p0, v8

    new-array v11, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, v11

    move v3, p0

    move v6, p0

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v8, :cond_0

    invoke-static {v1, v2, v8}, LJAVARuntime/Texture;->determineBitmapIndex(III)I

    move-result v3

    aget v3, v11, v3

    invoke-virtual {v10, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->J(I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v9, v1, v2, v10}, Lub/p;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lub/p;->apply()V

    invoke-virtual {v9}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to decode file"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Input stream can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadURL(Ljava/lang/String;)LJAVARuntime/Texture;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    invoke-static {p0}, Lub/n;->w0(Ljava/lang/String;)Lub/n;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newDepth(II)LJAVARuntime/Texture;
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "width",
            "height"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "h"
        }
    .end annotation

    new-instance v0, LJAVARuntime/Texture;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    sget-object v2, Lcom/google/android/filament/TextureSampler$f;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$f;

    invoke-direct {v1, p0, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;-><init>(IILcom/google/android/filament/TextureSampler$f;)V

    invoke-direct {v0, v1}, LJAVARuntime/Texture;-><init>(Lub/p;)V

    return-object v0
.end method

.method private requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;
    .locals 1

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteTextureConfig()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    return-object v0
.end method

.method private requireSpriteRect(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->B(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requireSpriteTextureConfig()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 3

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    instance-of v1, v0, Lub/g;

    const-string v2, "Texture has no sprites"

    if-eqz v1, :cond_1

    check-cast v0, Lub/g;

    invoke-virtual {v0}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static white()LJAVARuntime/Texture;
    .locals 1

    sget-object v0, Lyb/b;->g:Lub/p;

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0}, Lub/p;->apply()V

    return-void
.end method

.method public copyPixels(LJAVARuntime/Texture;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    iget-object p1, p1, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1}, Lub/p;->p(Lub/p;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Output texture can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public exportToFile(LJAVARuntime/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/16 v0, 0x64

    .line 1
    sget-object v1, LJAVARuntime/Texture$ExportFormat;->PNG:LJAVARuntime/Texture$ExportFormat;

    invoke-virtual {p0, p1, v0, v1}, LJAVARuntime/Texture;->exportToFile(LJAVARuntime/File;ILJAVARuntime/Texture$ExportFormat;)V

    return-void
.end method

.method public exportToFile(LJAVARuntime/File;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "quality"
        }
    .end annotation

    .line 2
    sget-object v0, LJAVARuntime/Texture$ExportFormat;->PNG:LJAVARuntime/Texture$ExportFormat;

    invoke-virtual {p0, p1, p2, v0}, LJAVARuntime/Texture;->exportToFile(LJAVARuntime/File;ILJAVARuntime/Texture$ExportFormat;)V

    return-void
.end method

.method public exportToFile(LJAVARuntime/File;ILJAVARuntime/Texture$ExportFormat;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "quality",
            "exportFormat"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, LJAVARuntime/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, LJAVARuntime/Texture;->ENUMCONVERT(LJAVARuntime/Texture$ExportFormat;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$a;

    move-result-object p1

    invoke-virtual {v0, v1, p2, p1}, Lub/p;->h(Ljava/io/File;ILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$a;)V

    return-void
.end method

.method public extractGPUImageToBtm(LJAVARuntime/Texture$ExtractCallback;)V
    .locals 6
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0}, Lub/p;->getWidth()I

    move-result v3

    iget-object v1, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v1}, Lub/p;->getHeight()I

    move-result v4

    new-instance v5, LJAVARuntime/Texture$3;

    invoke-direct {v5, p0, p1}, LJAVARuntime/Texture$3;-><init>(LJAVARuntime/Texture;LJAVARuntime/Texture$ExtractCallback;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lub/p;->z(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callback can`t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(II)LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0}, LJAVARuntime/Color;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, LJAVARuntime/Texture;->get(IILJAVARuntime/Color;)LJAVARuntime/Color;

    move-result-object p1

    return-object p1
.end method

.method public get(IILJAVARuntime/Color;)LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "out"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    iget-object p3, p3, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->j(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlphaThreshold()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->e()I

    move-result v0

    return v0
.end method

.method public getFloatAlpha(II)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->l(II)F

    move-result p1

    return p1
.end method

.method public getFloatBlue(II)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->m(II)F

    move-result p1

    return p1
.end method

.method public getFloatGreen(II)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->n(II)F

    move-result p1

    return p1
.end method

.method public getFloatRed(II)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->o(II)F

    move-result p1

    return p1
.end method

.method public getFramesPerSecond()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->f()I

    move-result v0

    return v0
.end method

.method public getGridCellCountX()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->g()I

    move-result v0

    return v0
.end method

.method public getGridCellCountY()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->h()I

    move-result v0

    return v0
.end method

.method public getGridCellHeight()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->i()I

    move-result v0

    return v0
.end method

.method public getGridCellWidth()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->j()I

    move-result v0

    return v0
.end method

.method public getGridOffsetX()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->k()I

    move-result v0

    return v0
.end method

.method public getGridOffsetY()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->l()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0}, Lub/p;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntAlpha(II)I
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->r(II)I

    move-result p1

    return p1
.end method

.method public getIntBlue(II)I
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->s(II)I

    move-result p1

    return p1
.end method

.method public getIntGreen(II)I
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->u(II)I

    move-result p1

    return p1
.end method

.method public getIntRed(II)I
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->v(II)I

    move-result p1

    return p1
.end method

.method public getMinIslandSizePixels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->m()I

    move-result v0

    return v0
.end method

.method public getPixel(II)LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->i(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p1

    return-object p1
.end method

.method public getPixel(LJAVARuntime/Vector2;)LJAVARuntime/Color;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "coord"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coord"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lub/p;->i(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p1

    return-object p1
.end method

.method public getSliceType()LJAVARuntime/Texture$SliceType;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->n()LAb/b;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/Texture;->ENUMCONVERT(LAb/b;)LJAVARuntime/Texture$SliceType;

    move-result-object v0

    return-object v0
.end method

.method public getSpriteCount()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v0

    return v0
.end method

.method public getSpriteFh(I)F
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0, p1}, LJAVARuntime/Texture;->requireSpriteRect(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->b()F

    move-result p1

    return p1
.end method

.method public getSpriteFw(I)F
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0, p1}, LJAVARuntime/Texture;->requireSpriteRect(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->c()F

    move-result p1

    return p1
.end method

.method public getSpriteFx(I)F
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0, p1}, LJAVARuntime/Texture;->requireSpriteRect(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->d()F

    move-result p1

    return p1
.end method

.method public getSpriteFy(I)F
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0, p1}, LJAVARuntime/Texture;->requireSpriteRect(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->e()F

    move-result p1

    return p1
.end method

.method public getSpriteHeight(I)I
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0, p1}, LJAVARuntime/Texture;->requireSpriteRect(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->g()I

    move-result p1

    return p1
.end method

.method public getSpriteImageHeight(I)I
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0, p1}, LJAVARuntime/Texture;->requireSpriteRect(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->h()I

    move-result p1

    return p1
.end method

.method public getSpriteImageWidth(I)I
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0, p1}, LJAVARuntime/Texture;->requireSpriteRect(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->i()I

    move-result p1

    return p1
.end method

.method public getSpriteLeft(I)I
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0, p1}, LJAVARuntime/Texture;->requireSpriteRect(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->k()I

    move-result p1

    return p1
.end method

.method public getSpriteRect(I)LJAVARuntime/Texture$SpriteRect;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    new-instance v0, LJAVARuntime/Texture$SpriteRect;

    invoke-direct {p0, p1}, LJAVARuntime/Texture;->requireSpriteRect(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Texture$SpriteRect;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;)V

    return-object v0
.end method

.method public getSpriteTop(I)I
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0, p1}, LJAVARuntime/Texture;->requireSpriteRect(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->l()I

    move-result p1

    return p1
.end method

.method public getSpriteWidth(I)I
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0, p1}, LJAVARuntime/Texture;->requireSpriteRect(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->j()I

    move-result p1

    return p1
.end method

.method public getWidth()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0}, Lub/p;->getWidth()I

    move-result v0

    return v0
.end method

.method public hasSpriteData()Z
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    instance-of v1, v0, Lub/g;

    if-eqz v1, :cond_0

    check-cast v0, Lub/g;

    invoke-virtual {v0}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    check-cast v0, Lub/g;

    invoke-virtual {v0}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    check-cast v0, Lub/g;

    invoke-virtual {v0}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMipmapEnabled()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0}, Lub/p;->I()Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0}, Lub/p;->N()Z

    move-result v0

    return v0
.end method

.method public saveGPUImageToFile(LJAVARuntime/File;)V
    .locals 6
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "outputFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFile"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0}, Lub/p;->getWidth()I

    move-result v3

    iget-object v1, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v1}, Lub/p;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lub/p;->W(IIIILjava/io/File;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callback can`t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveGPUImageToFile(LJAVARuntime/File;Ljava/lang/Runnable;)V
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "outputFile",
            "postRunnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputFile",
            "postRunnable"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0}, Lub/p;->getWidth()I

    move-result v3

    iget-object v1, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v1}, Lub/p;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lub/p;->X(IIIILjava/io/File;Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "postRunnable can`t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callback can`t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(IIFFF)V
    .locals 6
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "colorRed",
            "colorGreen",
            "colorBlue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lub/p;->e0(IIFFF)V

    return-void
.end method

.method public set(IIFFFF)V
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "colorRed",
            "colorGreen",
            "colorBlue",
            "colorAlpha"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lub/p;->f0(IIFFFF)V

    return-void
.end method

.method public set(IIIII)V
    .locals 6
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "colorRed",
            "colorGreen",
            "colorBlue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation

    .line 6
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lub/p;->l0(IIIII)V

    return-void
.end method

.method public set(IIIIII)V
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "colorRed",
            "colorGreen",
            "colorBlue",
            "colorAlpha"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lub/p;->m0(IIIIII)V

    return-void
.end method

.method public set(IILJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "color"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    iget-object p3, p3, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "color can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setA(IIF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->a0(IIF)V

    return-void
.end method

.method public setA(III)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->h0(III)V

    return-void
.end method

.method public setAlphaThreshold(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "alphaThreshold"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->q(I)V

    return-void
.end method

.method public setB(IIF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->b0(IIF)V

    return-void
.end method

.method public setB(III)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->i0(III)V

    return-void
.end method

.method public setFramesPerSecond(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "framesPerSecond"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->r(I)V

    return-void
.end method

.method public setG(IIF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->c0(IIF)V

    return-void
.end method

.method public setG(III)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->j0(III)V

    return-void
.end method

.method public setGridCellCountX(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "gridCellCountX"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->s(I)V

    return-void
.end method

.method public setGridCellCountY(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "gridCellCountY"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->t(I)V

    return-void
.end method

.method public setGridCellHeight(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "gridCellHeight"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->u(I)V

    return-void
.end method

.method public setGridCellWidth(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "gridCellWidth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->v(I)V

    return-void
.end method

.method public setGridOffsetX(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "gridOffsetX"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->w(I)V

    return-void
.end method

.method public setGridOffsetY(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "gridOffsetY"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->x(I)V

    return-void
.end method

.method public setMinIslandSizePixels(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "minIslandSizePixels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->y(I)V

    return-void
.end method

.method public setMipmapEnabled(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "enabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1}, Lub/p;->o0(Z)V

    return-void
.end method

.method public setPixel(IILJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "color"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    iget-object p3, p3, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public setPixel(LJAVARuntime/Vector2;LJAVARuntime/Color;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "coord",
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coord",
            "color"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object p2, p2, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, v1, p1, p2}, Lub/p;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public setR(IIF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->d0(IIF)V

    return-void
.end method

.method public setR(III)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->k0(III)V

    return-void
.end method

.method public setSliceType(LJAVARuntime/Texture$SliceType;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "sliceType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-static {p1}, LJAVARuntime/Texture;->ENUMCONVERT(LJAVARuntime/Texture$SliceType;)LAb/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->z(LAb/b;)V

    return-void
.end method

.method public setSpriteRect(ILJAVARuntime/Texture$SpriteRect;)V
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index",
            "spriteRect"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "spriteRect"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p2, :cond_1

    invoke-direct {p0}, LJAVARuntime/Texture;->requireSpriteData()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p2}, LJAVARuntime/Texture$SpriteRect;->toEngineRect()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->A(ILcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index out of bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spriteRect can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
