.class public LFb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFb/c$g;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LHb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LHb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LHb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LFb/c$a;

    invoke-direct {v0}, LFb/c$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->h(Lx8/b;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LFb/c;->a:Ljava/lang/Object;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    sput-object v0, LFb/c;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, LFb/c;->c:Ljava/util/Map;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    sput-object v0, LFb/c;->d:Ljava/util/List;

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, LFb/c;->e:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3as
        0x5cs
        0x3fs
        0x2as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LFb/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LFb/c;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LHb/c;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LHb/c;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, LFb/c;->b:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;-><init>()V

    throw p0
.end method

.method public static B(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LFb/c;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static C(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, LFb/c;->e:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-char v1, v1, v0

    const/16 v2, 0x5f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static D(I)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    sget-object v0, LFb/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LFb/c;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LHb/c;

    invoke-virtual {p0}, LHb/c;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, LFb/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b()Ljava/util/Map;
    .locals 1

    sget-object v0, LFb/c;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LFb/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LFb/c;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, LHb/c;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, LHb/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Ljava/lang/String;)V

    sget-object p0, LFb/c;->b:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, LHb/c;->c()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Material file can\'t be null or empty!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Material can\'t be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "vertex"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LFb/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, LFb/c;->g(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p0, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    invoke-static {p1}, LFb/c;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "vertex can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "vertex"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LFb/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p0, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    invoke-static {p1}, LFb/c;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "vertex can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    sget-object v0, LFb/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LFb/c;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LHb/c;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LHb/c;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, LHb/c;->d()V

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, LFb/c;->b:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LFb/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LFb/c;->c:Ljava/util/Map;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LHb/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LHb/c;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "vertex can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h()I
    .locals 2

    sget-object v0, LFb/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LFb/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)LHb/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LFb/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LFb/c;->c:Ljava/util/Map;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LHb/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LHb/c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "vertex can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LFb/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LFb/c;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LHb/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LHb/c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LHb/c;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;-><init>()V

    throw p0
.end method

.method public static k(Ljava/io/File;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "importSettings",
            "listener"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".mesh"

    invoke-static {p2, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".mwf"

    invoke-static {p2, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/UnsupportedFileException;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/UnsupportedFileException;-><init>()V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p2, LFb/c$b;

    invoke-direct {p2}, LFb/c$b;-><init>()V

    invoke-static {p0, p1, p2}, LFb/c;->s(Ljava/io/File;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {p0}, LFb/c;->B(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p2, LFb/c$c;

    invoke-direct {p2}, LFb/c$c;-><init>()V

    invoke-static {v0, p1, p2}, LFb/c;->s(Ljava/io/File;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p2

    if-eqz p2, :cond_2

    move-object p0, v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    invoke-static {p2}, LFb/c;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p2

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static l(Ljava/io/File;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, LFb/c;->k(Ljava/io/File;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/String;ZLandroid/content/Context;ZLFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 4
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
            "localFilePath",
            "fromAssets",
            "context",
            "individualVertex",
            "importSettings",
            "listener"
        }
    .end annotation

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {p0}, LFb/c;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p0, v1

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p0, v1

    :cond_1
    sget-object v2, LFb/c;->a:Ljava/lang/Object;

    monitor-enter v2

    if-nez p3, :cond_3

    :try_start_0
    invoke-static {v0}, LFb/c;->j(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3, p4}, LFb/c;->y(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LFb/a;)V

    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p0}, LFb/c;->j(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3, p4}, LFb/c;->y(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LFb/a;)V

    monitor-exit v2

    return-object v3

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0, p1, p2, p4, p5}, LFb/c;->r(Ljava/lang/String;ZLandroid/content/Context;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_4

    if-eqz p0, :cond_4

    :try_start_2
    invoke-static {p0, p1, p2, p4, p5}, LFb/c;->r(Ljava/lang/String;ZLandroid/content/Context;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_4

    move-object v0, p0

    move-object v3, v1

    goto :goto_1

    :catch_1
    move-exception p0

    if-nez v3, :cond_4

    move-object v3, p0

    :cond_4
    :goto_1
    if-eqz v2, :cond_7

    invoke-static {v2, p4}, LFb/c;->y(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LFb/a;)V

    if-nez p3, :cond_6

    sget-object p0, LFb/c;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    invoke-static {v0}, LFb/c;->j(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1, p4}, LFb/c;->y(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LFb/a;)V

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_5
    iput-object v0, v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    invoke-static {v2}, LFb/c;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_6
    :goto_3
    return-object v2

    :cond_7
    if-nez v3, :cond_8

    return-object v1

    :cond_8
    throw v3

    :goto_4
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_9
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;-><init>()V

    throw p0

    :cond_a
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;-><init>()V

    throw p0
.end method

.method public static n(Ljava/lang/String;ZLandroid/content/Context;ZLFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "localFilePath",
            "fromAssets",
            "context",
            "individualVertex",
            "listener"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, LFb/c;->m(Ljava/lang/String;ZLandroid/content/Context;ZLFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/String;ZZLFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "fromAssets",
            "individualVertex",
            "importSettings",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, LFb/c;->m(Ljava/lang/String;ZLandroid/content/Context;ZLFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/String;ZZLFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "fromAssets",
            "individualVertex",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, LFb/c;->m(Ljava/lang/String;ZLandroid/content/Context;ZLFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/io/InputStream;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "importSettings",
            "listener"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, LFb/c;->u(Ljava/io/InputStream;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, LFb/c$d;

    invoke-direct {p2}, LFb/c$d;-><init>()V

    invoke-static {p0, p1, p2}, LFb/c;->t(Ljava/io/InputStream;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/UnsupportedFileException;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/UnsupportedFileException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static r(Ljava/lang/String;ZLandroid/content/Context;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "localFilePath",
            "fromAssets",
            "context",
            "importSettings",
            "listener"
        }
    .end annotation

    const-string v0, ".mesh"

    invoke-static {p0, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mwf"

    invoke-static {p0, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/UnsupportedFileException;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/UnsupportedFileException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@@ASSET@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "/"

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, LX7/a;->p(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p3, p4}, LFb/c;->t(Ljava/io/InputStream;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, LX7/a;->p(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p3, p4}, LFb/c;->t(Ljava/io/InputStream;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_4
    const-string p1, "//"

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p3, p4}, LFb/c;->s(Ljava/io/File;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/io/File;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "importSettings",
            "listener"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, LFb/c$f;

    invoke-direct {v1, p2}, LFb/c$f;-><init>(LFb/c$g;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->h(Ljava/io/File;LFb/a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;-><init>()V

    throw p0
.end method

.method public static t(Ljava/io/InputStream;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "importSettings",
            "listener"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p2, :cond_0

    new-instance v0, LFb/c$e;

    invoke-direct {v0, p2}, LFb/c$e;-><init>(LFb/c$g;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->j(Ljava/io/InputStream;LFb/a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to load vertex"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;-><init>()V

    throw p0
.end method

.method public static u(Ljava/io/InputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const/4 p0, 0x0

    if-ne v2, v0, :cond_3

    aget-byte v2, v1, p0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    const/16 v4, 0x4b

    if-ne v3, v4, :cond_3

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1

    const/4 v5, 0x7

    if-ne v3, v5, :cond_3

    :cond_1
    aget-byte v1, v1, v4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x6

    if-eq v1, v0, :cond_2

    const/16 v0, 0x8

    if-ne v1, v0, :cond_3

    :cond_2
    move p0, v2

    :cond_3
    return p0
.end method

.method public static v()V
    .locals 2

    sget-object v0, LFb/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LFb/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, LFb/c;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static w()V
    .locals 5

    sget-object v0, LFb/c;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    sget-object v3, LFb/c;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LHb/c;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, LHb/c;->e()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, LFb/c;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, LFb/c;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    sget-object v2, LFb/c;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LHb/c;

    sget-object v3, LFb/c;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v3, LFb/c;->c:Ljava/util/Map;

    invoke-virtual {v2}, LHb/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static x()V
    .locals 4

    sget-object v0, LFb/c;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, LFb/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LHb/c;

    invoke-virtual {v2}, LHb/c;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, LHb/c;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->w1()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, LFb/c;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static y(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LFb/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "importSettings"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p1, LFb/a;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u1()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p1, LFb/a;->b:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u1()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static z(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LFb/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LFb/c;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LHb/c;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LHb/c;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, LFb/c;->b:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "vertex can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
