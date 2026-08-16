.class public Lwb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwb/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwb/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lwb/c;->a:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lwb/c;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lwb/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lwb/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lwb/c;->a:Ljava/util/List;

    new-instance v2, Lwb/d;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lwb/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 5
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

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lwb/c;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lwb/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwb/d;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lwb/d;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lwb/d;->b:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lwb/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lwb/c;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    sget-object v3, Lwb/c;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v3, Lwb/c;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object p0, Lwb/c;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v2, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "File can\'t be empty or null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "size"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lwb/c;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lwb/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwb/d;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lwb/d;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lwb/d;->b:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lwb/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->q()I

    move-result v3

    if-ne v3, p1, :cond_3

    sget-object p0, Lwb/c;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v2, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    monitor-exit v0

    return-object v4

    :cond_1
    sget-object v2, Lwb/c;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    sget-object v2, Lwb/c;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    sget-object p0, Lwb/c;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {v2, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_5
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File can\'t be empty or null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lwb/c;->h(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lwb/c;->f(Ljava/io/File;I)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/io/File;I)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "size"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lwb/c;->c(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;-><init>(Ljava/io/File;I)V

    sget-object p0, Lwb/c;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lwb/c;->a:Ljava/util/List;

    new-instance v1, Lwb/d;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lwb/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File not found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lwb/c;->h(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "size"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lwb/c;->c(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;-><init>(Ljava/lang/String;I)V

    sget-object p0, Lwb/c;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lwb/c;->a:Ljava/util/List;

    new-instance v1, Lwb/d;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lwb/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File can\'t be empty or null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i()V
    .locals 2

    sget-object v0, Lwb/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lwb/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lwb/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static j()V
    .locals 0

    return-void
.end method

.method public static k(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lwb/c;->d(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    move-result-object p0
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lwb/c;->e(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    move-result-object p0
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lwb/c;->g(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    move-result-object p0
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static n(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "size"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lwb/c;->h(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    move-result-object p0
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method
