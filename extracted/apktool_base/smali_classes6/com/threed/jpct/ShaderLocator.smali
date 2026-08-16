.class public Lcom/threed/jpct/ShaderLocator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private assets:Landroid/content/res/AssetManager;

.field private rawResourceId:Ljava/lang/Integer;

.field private res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->assets:Landroid/content/res/AssetManager;

    .line 3
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->rawResourceId:Ljava/lang/Integer;

    .line 4
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->res:Landroid/content/res/Resources;

    .line 5
    const-string v0, "Accessing shaders via JAR!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->rawResourceId:Ljava/lang/Integer;

    .line 8
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->res:Landroid/content/res/Resources;

    .line 9
    iput-object p1, p0, Lcom/threed/jpct/ShaderLocator;->assets:Landroid/content/res/AssetManager;

    .line 10
    const-string p1, "Accessing shaders via assets directory!"

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->assets:Landroid/content/res/AssetManager;

    .line 13
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->rawResourceId:Ljava/lang/Integer;

    .line 14
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->res:Landroid/content/res/Resources;

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/threed/jpct/ShaderLocator;->rawResourceId:Ljava/lang/Integer;

    .line 16
    iput-object p1, p0, Lcom/threed/jpct/ShaderLocator;->res:Landroid/content/res/Resources;

    .line 17
    const-string p1, "Accessing shaders via res/raw directory!"

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getFileFromZip(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const-string p2, "/"

    const-string v1, ""

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Loading "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from zip file!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/threed/jpct/Loader;->loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method private loadFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/threed/jpct/ShaderLocator;->assets:Landroid/content/res/AssetManager;

    const-string v2, "jpct_shaders.zip"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/ShaderLocator;->getFileFromZip(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw p1
.end method

.method private loadFromJar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/threed/jpct/Loader;->loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw p1
.end method

.method private loadFromRaw(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/threed/jpct/ShaderLocator;->res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/threed/jpct/ShaderLocator;->rawResourceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/ShaderLocator;->getFileFromZip(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw p1
.end method


# virtual methods
.method public getShaderCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/threed/jpct/ShaderLocator;->assets:Landroid/content/res/AssetManager;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/threed/jpct/ShaderLocator;->rawResourceId:Ljava/lang/Integer;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/threed/jpct/ShaderLocator;->loadFromJar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/threed/jpct/ShaderLocator;->loadFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/ShaderLocator;->rawResourceId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/threed/jpct/ShaderLocator;->loadFromRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
