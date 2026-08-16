.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;
.super Lwb/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;,
        Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$g;,
        Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$h;
    }
.end annotation


# static fields
.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;


# instance fields
.field public final b:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

.field public final c:Ljava/lang/String;

.field public final d:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

.field public final e:I

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "native-file-cubemap"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v5, "pz.astc"

    const-string v6, "nz.astc"

    const-string v1, "px.astc"

    const-string v2, "nx.astc"

    const-string v3, "py.astc"

    const-string v4, "ny.astc"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->g:[Ljava/lang/String;

    const-string v5, "pz.bin"

    const-string v6, "nz.bin"

    const-string v1, "px.bin"

    const-string v2, "nx.bin"

    const-string v3, "py.bin"

    const-string v4, "ny.bin"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "maxSize"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lwb/b;-><init>()V

    const/4 v0, 0x6

    .line 27
    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->d:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-eqz p1, :cond_5

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->f:I

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->c:Ljava/lang/String;

    .line 31
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->g:[Ljava/lang/String;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->h:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lwb/e;->f(Ljava/io/InputStream;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_4

    .line 33
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 34
    invoke-static {v0}, Lwb/e;->h(Ljava/io/InputStream;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 35
    const-string v1, "invalid cubemap"

    if-eqz v0, :cond_3

    .line 36
    :try_start_3
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->c()I

    move-result v2

    if-lez v2, :cond_2

    .line 37
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->c()I

    move-result v1

    if-lez p2, :cond_0

    .line 38
    invoke-static {p2, v1}, LNc/b;->Z0(II)I

    move-result v1

    .line 39
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->e:I

    :goto_0
    move v5, v1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    const/4 p2, -0x1

    .line 40
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->e:I

    goto :goto_0

    .line 41
    :goto_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j()I

    move-result v6

    if-lez v6, :cond_1

    const/16 p2, 0x218

    :goto_2
    move v7, p2

    goto :goto_3

    :cond_1
    const/16 p2, 0x18

    goto :goto_2

    .line 42
    :goto_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$b;

    invoke-direct {v4, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;Ljava/io/File;)V

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->r(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$g;III)V

    return-void

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 45
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 46
    :cond_4
    :try_start_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cubemap doesn`t have 6 faces!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 47
    :try_start_5
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 48
    :goto_4
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 49
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file is null or not exists"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipp"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ipp",
            "maxSize"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lwb/b;-><init>()V

    const/4 v0, 0x6

    .line 3
    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->d:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->f:I

    .line 6
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->c:Ljava/lang/String;

    .line 7
    invoke-static {p1}, LX7/a;->o(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 8
    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->g:[Ljava/lang/String;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->h:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lwb/e;->f(Ljava/io/InputStream;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_4

    .line 9
    :try_start_1
    invoke-static {p1}, LX7/a;->o(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lwb/e;->h(Ljava/io/InputStream;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    const-string v1, "invalid cubemap"

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->c()I

    move-result v2

    if-lez v2, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->c()I

    move-result v1

    if-lez p2, :cond_0

    .line 14
    invoke-static {p2, v1}, LNc/b;->Z0(II)I

    move-result v1

    .line 15
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->e:I

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_0
    const/4 p2, -0x1

    .line 16
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->e:I

    goto :goto_0

    .line 17
    :goto_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j()I

    move-result v6

    if-lez v6, :cond_1

    const/16 p2, 0x218

    :goto_2
    move v7, p2

    goto :goto_3

    :cond_1
    const/16 p2, 0x18

    goto :goto_2

    .line 18
    :goto_3
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$a;

    invoke-direct {v4, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->r(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$g;III)V

    return-void

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 22
    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cubemap doesn`t have 6 faces!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 23
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 24
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cubemap not found!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ip == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->g(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;)V

    return-void
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;IIZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->h(IIZ)V

    return-void
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;)[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->d:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    return-object p0
.end method

.method public static synthetic f([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->i([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V

    return-void
.end method

.method public static i([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "faces"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->a()V

    const/4 v1, 0x0

    aput-object v1, p0, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static l(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "wantedResolution"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    iget v3, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->a:I

    if-ne v3, p1, :cond_1

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->b:I

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static native nativeLoadFacesFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;[Ljava/lang/String;I[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "assetManager",
            "assetPath",
            "faceNames",
            "wantedResolution",
            "outFaces"
        }
    .end annotation
.end method

.method private static native nativeLoadFacesFromFile(Ljava/lang/String;[Ljava/lang/String;I[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "faceNames",
            "wantedResolution",
            "outFaces"
        }
    .end annotation
.end method

.method public static t(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$h;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputPath"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "@@ASSET@@"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "^[A-Za-z]:/.*"

    invoke-virtual {p0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v3

    :goto_2
    if-nez v4, :cond_6

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v7, :cond_4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$h;

    invoke-direct {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$h;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$h;

    invoke-direct {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$h;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_6
    :goto_3
    const-string v1, ""

    if-eqz v5, :cond_7

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_8
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$h;

    invoke-direct {v0, v3, p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$h;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    const-string v0, "./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final g(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compressedCubemap"
        }
    .end annotation

    move-object/from16 v1, p1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->d:I

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->a:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    array-length v3, v3

    mul-int/2addr v2, v3

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$e;

    move-object/from16 v15, p0

    invoke-direct {v2, v15, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;)V

    const/4 v0, 0x0

    move v14, v0

    :goto_0
    :try_start_0
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->a:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    array-length v4, v3

    if-ge v14, v4, :cond_1

    aget-object v12, v3, v14

    move v13, v0

    :goto_1
    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->d:I

    if-ge v13, v3, :cond_0

    iget-object v3, v12, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->b:I

    add-int/2addr v4, v13

    aget-object v3, v3, v4

    invoke-virtual/range {p0 .. p0}, Lwb/b;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v4

    iget v8, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->a:I

    iget v9, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->b:I

    iget-object v11, v12, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget v5, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->c:I

    int-to-long v6, v5

    iget-object v10, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->e:Lcom/google/android/filament/Texture$b;

    iget v5, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->d:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v3, v4

    move v4, v13

    move/from16 v19, v5

    move/from16 v5, v16

    move-wide/from16 v20, v6

    move/from16 v6, v17

    move v7, v14

    move-object/from16 v16, v10

    move/from16 v10, v18

    move-object/from16 v17, v12

    move/from16 v18, v13

    move-wide/from16 v12, v20

    move/from16 v20, v14

    move-object/from16 v14, v16

    move/from16 v15, v19

    move-object/from16 v16, v2

    invoke-virtual/range {v3 .. v16}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->F(IIIIIIILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;JLcom/google/android/filament/Texture$b;ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v13, v18, 0x1

    move-object/from16 v15, p0

    move-object/from16 v12, v17

    move/from16 v14, v20

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    move/from16 v20, v14

    add-int/lit8 v14, v20, 0x1

    move-object/from16 v15, p0

    goto :goto_0

    :cond_1
    return-void

    :goto_2
    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->a:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->i([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V

    throw v0
.end method

.method public final h(IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "f",
            "wantedResolution",
            "genMipmaps"
        }
    .end annotation

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;

    invoke-direct {p3, p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;II)V

    invoke-static {p3}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->d:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->d:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final k(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$g;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "opener",
            "faceName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$g;->open()Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    :cond_2
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :cond_3
    const-string p1, "cubemap-face-"

    const-string p2, ".astc"

    invoke-static {p1, p2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    new-instance p2, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v0, 0x10000

    :try_start_1
    new-array v0, v0, [B

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    return-object p1

    :goto_2
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    return-object v0

    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->e:I

    return v0
.end method

.method public o()Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->c:Ljava/lang/String;

    return-object v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->f:I

    return v0
.end method

.method public final r(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$g;III)V
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
            "inputPath",
            "opener",
            "wantedResolution",
            "mips",
            "usages"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->v(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$g;I)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object p5

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->f:Lcom/google/android/filament/Texture$f;

    invoke-static {p5, v0}, Lcom/google/android/filament/Texture;->A(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture$f;)Z

    move-result p5

    if-nez p5, :cond_0

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->a:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->i([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V

    const/4 p2, 0x0

    :cond_0
    if-nez p2, :cond_1

    sget-object p5, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->h:[Ljava/lang/String;

    invoke-virtual {p0, p1, p5, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->s(Ljava/lang/String;[Ljava/lang/String;I)V

    :cond_1
    if-eqz p2, :cond_2

    iget p3, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->c:I

    :cond_2
    if-eqz p2, :cond_3

    iget p1, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->d:I

    add-int/lit8 p1, p1, -0x1

    const/4 p4, 0x0

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p4

    :cond_3
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;

    invoke-direct {p1, p0, p4, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;ILcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;I)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputPath",
            "faceNames",
            "wantedResolution"
        }
    .end annotation

    mul-int v0, p3, p3

    mul-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->d:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-direct {v3, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->t(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$h;

    move-result-object p1

    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$h;->a:Z

    if-eqz v0, :cond_2

    invoke-static {}, LN7/c;->r()Landroid/content/res/AssetManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$h;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->d:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->nativeLoadFacesFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;[Ljava/lang/String;I[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)Z

    move-result p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "AssetManager unavailable"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$h;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->d:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-static {p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->nativeLoadFacesFromFile(Ljava/lang/String;[Ljava/lang/String;I[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to load cubemap faces"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->j()V

    throw p1
.end method

.method public final v(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$g;I)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "opener",
            "wantedResolution"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    const/4 v1, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    move-object v6, v8

    move-object v7, v6

    :goto_0
    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->g:[Ljava/lang/String;

    array-length v9, v1

    if-ge v2, v9, :cond_e

    aget-object v1, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->k(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$g;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->i([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->d(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    move-result-object v9

    if-nez v9, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->i([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object v8

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    :try_start_3
    invoke-static {v9, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->l(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;I)I

    move-result v10

    if-gez v10, :cond_4

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->i([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object v8

    :cond_4
    :try_start_5
    iget-boolean v11, v9, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->d:Z

    if-eqz v11, :cond_5

    iget-object v11, v9, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    array-length v11, v11

    sub-int/2addr v11, v10

    goto :goto_1

    :cond_5
    const/4 v11, 0x1

    :goto_1
    if-gtz v11, :cond_7

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->i([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_6
    return-object v8

    :cond_7
    :try_start_7
    iget-object v12, v9, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    aget-object v12, v12, v10

    if-gez v3, :cond_8

    iget v4, v12, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->a:I

    iget-object v6, v9, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->e:Lcom/google/android/filament/Texture$b;

    iget-object v7, v9, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->f:Lcom/google/android/filament/Texture$f;

    move v3, v10

    move v5, v11

    goto :goto_2

    :cond_8
    if-ne v3, v10, :cond_b

    if-ne v5, v11, :cond_b

    iget v10, v12, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->a:I

    if-ne v4, v10, :cond_b

    iget-object v10, v9, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->e:Lcom/google/android/filament/Texture$b;

    if-ne v6, v10, :cond_b

    iget-object v10, v9, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->f:Lcom/google/android/filament/Texture$f;

    if-eq v7, v10, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    aput-object v9, v0, v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_3
    :try_start_9
    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->a()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->i([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    :cond_c
    return-object v8

    :goto_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    :cond_d
    throw p1

    :cond_e
    if-lez v4, :cond_10

    if-eqz v6, :cond_10

    if-nez v7, :cond_f

    goto :goto_5

    :cond_f
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;

    move-object v1, p1

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;-><init>([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;IIILcom/google/android/filament/Texture$b;Lcom/google/android/filament/Texture$f;)V

    return-object p1

    :cond_10
    :goto_5
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->i([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    return-object v8

    :catch_0
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->i([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V

    return-object v8
.end method
