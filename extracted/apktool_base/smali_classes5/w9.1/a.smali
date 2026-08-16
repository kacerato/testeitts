.class public Lw9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lz9/e;

.field public b:Lz9/e;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx9/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx9/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lw9/a;->c:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lw9/a;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lw9/a;)Lz9/e;
    .locals 0

    iget-object p0, p0, Lw9/a;->a:Lz9/e;

    return-object p0
.end method

.method public static synthetic b(Lw9/a;Lz9/e;)Lz9/e;
    .locals 0

    iput-object p1, p0, Lw9/a;->a:Lz9/e;

    return-object p1
.end method

.method public static synthetic c(Lw9/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lw9/a;->c:Ljava/util/List;

    return-object p0
.end method

.method public static d()Lw9/a;
    .locals 5

    new-instance v0, Lw9/a;

    invoke-direct {v0}, Lw9/a;-><init>()V

    new-instance v1, Lz9/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lz9/e;-><init>(I)V

    iput-object v1, v0, Lw9/a;->a:Lz9/e;

    const/4 v3, 0x0

    const v4, 0x3e19999a    # 0.15f

    invoke-virtual {v1, v3, v3, v4}, Lz9/e;->i(IIF)V

    new-instance v1, Lx9/a;

    const-string v4, "GrassLayer"

    invoke-direct {v1, v4}, Lx9/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lx9/a;->i(I)Z

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v3, v4}, Lx9/a;->h(IIF)V

    iget-object v4, v0, Lw9/a;->c:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lx9/a;

    const-string v4, "RockLayer"

    invoke-direct {v1, v4}, Lx9/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lx9/a;->i(I)Z

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v3, v2}, Lx9/a;->h(IIF)V

    iget-object v2, v0, Lw9/a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static e(Ljava/io/File;)Lw9/a;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x4

    :try_start_1
    new-array v3, v2, [B

    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;->hasBinaryHeader([B)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;->read(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;

    move-result-object v2

    invoke-static {v2}, Lw9/a;->i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;)Lw9/a;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_5
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    invoke-static {v0}, Lw9/a;->h(Ljava/io/InputStream;)Lw9/a;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_5

    :catchall_2
    move-exception p0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public static f(Ljava/io/FileInputStream;)Lw9/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-static {p0}, Lw9/a;->g(Ljava/io/InputStream;)Lw9/a;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/io/InputStream;)Lw9/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;->hasBinaryHeader([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;->read([B)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;

    move-result-object p0

    invoke-static {p0}, Lw9/a;->i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;)Lw9/a;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lw9/a;->h(Ljava/io/InputStream;)Lw9/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Ljava/io/InputStream;)Lw9/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, Lw9/a;

    invoke-direct {v0}, Lw9/a;-><init>()V

    new-instance v1, Lsb/a;

    invoke-direct {v1}, Lsb/a;-><init>()V

    invoke-static {v0}, Lw9/a;->l(Lw9/a;)Lsb/a$b;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lsb/a;->c(Ljava/io/InputStream;Lsb/a$b;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Lsb/a;->d()Z

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;)Lw9/a;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadedData"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lw9/a;

    invoke-direct {v0}, Lw9/a;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;->heightBuffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lw9/a;->p(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Lz9/e;

    move-result-object v1

    iput-object v1, v0, Lw9/a;->a:Lz9/e;

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;->layerGuids:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;->layerBuffers:[Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v2, :cond_3

    array-length v1, v1

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;->layerBuffers:[Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    iget-object v4, v0, Lw9/a;->c:Ljava/util/List;

    new-instance v5, Lx9/a;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;->layerGuids:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v3}, Lw9/a;->p(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Lz9/e;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lx9/a;-><init>(Ljava/lang/String;Lz9/e;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static l(Lw9/a;)Lsb/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    new-instance v0, Lw9/a$a;

    invoke-direct {v0, p0}, Lw9/a$a;-><init>(Lw9/a;)V

    return-object v0
.end method

.method public static p(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Lz9/e;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, LNc/b;->r1(I)I

    move-result v1

    mul-int v2, v1, v1

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    new-instance v0, Lz9/e;

    new-instance v2, Lvc/e;

    invoke-direct {v2, p0, v1, v1}, Lvc/e;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    invoke-direct {v0, v2, v1}, Lz9/e;-><init>(Lvc/e;I)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terrain table buffer capacity is not a perfect square: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "buffer can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public j()Lz9/e;
    .locals 1

    iget-object v0, p0, Lw9/a;->a:Lz9/e;

    return-object v0
.end method

.method public k()Lz9/e;
    .locals 1

    iget-object v0, p0, Lw9/a;->b:Lz9/e;

    return-object v0
.end method

.method public m(I)Lx9/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lw9/a;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lw9/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx9/a;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Lx9/a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    iget-object v0, p0, Lw9/a;->c:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lw9/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lw9/a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx9/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->j()LAc/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lx9/a;->a(LAc/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o(Ljava/io/File;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, Lw9/a;->a:Lz9/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz9/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget-object v5, p0, Lw9/a;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lw9/a;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx9/a;

    invoke-virtual {v5}, Lx9/a;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lx9/a;->d()LAc/b;

    move-result-object v5

    invoke-virtual {v5}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-array v3, v3, [Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;->write(Ljava/io/File;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;[Ljava/lang/String;[Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Z

    move-result p1

    return p1
.end method

.method public q(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    iget-object v0, p0, Lw9/a;->a:Lz9/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz9/e;->g()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lw9/a;->a:Lz9/e;

    invoke-static {v0, p1}, Lz9/e;->j(Lz9/e;I)Lz9/e;

    move-result-object p1

    iput-object p1, p0, Lw9/a;->a:Lz9/e;

    const/4 p1, 0x1

    return p1
.end method

.method public r(Ljava/util/List;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layers",
            "resolution"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    move v5, v0

    :goto_1
    iget-object v6, p0, Lw9/a;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lw9/a;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx9/a;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->j()LAc/b;

    move-result-object v7

    invoke-virtual {v6, v7}, Lx9/a;->a(LAc/b;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Lx9/a;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->j()LAc/b;

    move-result-object v3

    invoke-direct {v2, v3}, Lx9/a;-><init>(LAc/b;)V

    iget-object v3, p0, Lw9/a;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_3
    iget-object v3, p0, Lw9/a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lw9/a;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx9/a;

    move v5, v0

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {v3}, Lx9/a;->d()LAc/b;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->c(LAc/b;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lw9/a;->d:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move p1, v0

    :goto_6
    iget-object v1, p0, Lw9/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    iget-object v1, p0, Lw9/a;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx9/a;

    invoke-virtual {v1}, Lx9/a;->b()V

    add-int/lit8 p1, p1, 0x1

    move v2, v4

    goto :goto_6

    :cond_6
    iget-object p1, p0, Lw9/a;->c:Ljava/util/List;

    iget-object v1, p0, Lw9/a;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lw9/a;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_7
    iget-object p1, p0, Lw9/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_8

    iget-object p1, p0, Lw9/a;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx9/a;

    invoke-virtual {p1, p2}, Lx9/a;->i(I)Z

    move-result p1

    if-eqz p1, :cond_7

    move v2, v4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    return v2
.end method

.method public s(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    iget-object v0, p0, Lw9/a;->b:Lz9/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz9/e;->g()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lw9/a;->b:Lz9/e;

    invoke-static {v0, p1}, Lz9/e;->j(Lz9/e;I)Lz9/e;

    move-result-object p1

    iput-object p1, p0, Lw9/a;->b:Lz9/e;

    const/4 p1, 0x1

    return p1
.end method
