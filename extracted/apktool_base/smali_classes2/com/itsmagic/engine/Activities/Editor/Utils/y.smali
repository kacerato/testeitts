.class public Lcom/itsmagic/engine/Activities/Editor/Utils/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/y$k;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->a:Ljava/util/Map;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->h(Lx8/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic b(ZLjava/lang/String;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->j(ZLjava/lang/String;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;Ljava/util/List;)V

    return-void
.end method

.method public static c()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d(Ljava/lang/String;ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "projectName",
            "allowInsideMeta",
            "fileType",
            "callback"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;->a(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/y$c;

    invoke-direct {v1, v0, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$c;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    invoke-static {p0, p1, p2, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->h(Ljava/lang/String;ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V

    return-void
.end method

.method public static e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "allowInsideMeta",
            "fileType",
            "callback"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;->a(I)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/y$b;

    invoke-direct {v1, v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$b;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    invoke-static {p0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->i(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "projectName",
            "fileName"
        }
    .end annotation

    invoke-static {p1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JAVARuntime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_EDITOR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "projectName",
            "fileName",
            "parent"
        }
    .end annotation

    invoke-static {p1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JAVARuntime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_EDITOR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Ljava/lang/String;ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "projectName",
            "allowInsideMeta",
            "fileType",
            "listInterface"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/y$g;

    invoke-direct {p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$g;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/y$h;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$h;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static i(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "allowInsideMeta",
            "fileType",
            "listInterface"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/Thread;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/y$d;

    invoke-direct {v1, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/y$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$e;-><init>(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static j(ZLjava/lang/String;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;Ljava/util/List;)V
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
            "allowInsideMeta",
            "fileType",
            "folder",
            "listInterface",
            "toCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_4

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".meta"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p1, v1, p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->j(ZLjava/lang/String;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p4, :cond_2

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p3, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;->a(Ljava/io/File;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static k(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "allowInsideMeta",
            "fileType",
            "listInterface"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/y$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$f;-><init>(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
