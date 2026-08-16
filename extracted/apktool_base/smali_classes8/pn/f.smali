.class public Lpn/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpn/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lpn/e;

    invoke-direct {v0}, Lpn/e;-><init>()V

    iput-object v0, p0, Lpn/f;->a:Lpn/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "dungeon_all_tiles_navmesh.bin"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lpn/f;->a:Lpn/e;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lpn/e;->c(Ljava/io/InputStream;I)Ljn/v;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v2, v1}, Ljn/v;->R(II)Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljn/v;->R(II)Ljava/util/List;

    const/4 v1, 0x4

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Ljn/v;->R(II)Ljava/util/List;

    const/16 v1, 0x8

    invoke-virtual {v0, v2, v1}, Ljn/v;->R(II)Ljava/util/List;

    return-void
.end method

.method public b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "dungeon_all_tiles_navmesh_32bit.bin"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lpn/f;->a:Lpn/e;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lpn/e;->g(Ljava/io/InputStream;I)Ljn/v;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v2, v1}, Ljn/v;->R(II)Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljn/v;->R(II)Ljava/util/List;

    const/4 v1, 0x4

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Ljn/v;->R(II)Ljava/util/List;

    const/16 v1, 0x8

    invoke-virtual {v0, v2, v1}, Ljn/v;->R(II)Ljava/util/List;

    return-void
.end method

.method public c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "all_tiles_navmesh.bin"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lpn/f;->a:Lpn/e;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lpn/e;->c(Ljava/io/InputStream;I)Ljn/v;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v3}, Ljn/v;->R(II)Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljn/v;->R(II)Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Ljn/v;->R(II)Ljava/util/List;

    invoke-virtual {v0, v3, v2}, Ljn/v;->R(II)Ljava/util/List;

    return-void
.end method
