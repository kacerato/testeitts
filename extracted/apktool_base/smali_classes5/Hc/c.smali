.class public final LHc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LHc/c$f;,
        LHc/c$d;,
        LHc/c$e;,
        LHc/c$g;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:LMc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMc/i<",
            "LHc/c$f;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LHc/c$f;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LHc/c$f;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "LFc/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LHc/c;->a:Ljava/lang/Object;

    new-instance v0, LMc/i;

    invoke-direct {v0}, LMc/i;-><init>()V

    sput-object v0, LHc/c;->b:LMc/i;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LHc/c;->c:Ljava/util/Map;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, LHc/c;->d:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, LHc/c;->e:Ljava/util/List;

    new-instance v0, LHc/c$a;

    invoke-direct {v0}, LHc/c$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->h(Lx8/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, LHc/c;->e()V

    return-void
.end method

.method public static synthetic b(LHc/c$f;Ljava/lang/String;LHc/c$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, LHc/c;->x(LHc/c$f;Ljava/lang/String;LHc/c$d;)V

    return-void
.end method

.method public static synthetic c(LHc/c$f;Ljava/lang/String;)LFc/b;
    .locals 0

    invoke-static {p0, p1}, LHc/c;->u(LHc/c$f;Ljava/lang/String;)LFc/b;

    move-result-object p0

    return-object p0
.end method

.method public static d(LHc/c$f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object p0

    invoke-static {p0}, LHc/c;->h(LHc/c$e;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e()V
    .locals 6

    sget-object v0, LHc/c;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, LHc/c;->b:LMc/i;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LHc/c$f;

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v3}, LHc/c$f;->a(LHc/c$f;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v3}, LHc/c;->d(LHc/c$f;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, LHc/c;->f(LHc/c$f;)V

    invoke-virtual {v2, v1}, LMc/i;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_1
    monitor-exit v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_4

    :cond_2
    sget-object v1, LHc/c;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, LHc/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, LHc/c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static f(LHc/c$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-static {p0}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object v0

    invoke-static {v0}, LHc/c$e;->b(LHc/c$e;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object v0

    invoke-static {v0}, LHc/c$e;->b(LHc/c$e;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object p0

    invoke-static {p0}, LHc/c$e;->b(LHc/c$e;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static g(Ljava/lang/String;)LHc/c$f;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    sget-object v0, LHc/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LHc/c;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LHc/c$f;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static h(LHc/c$e;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soundData"
        }
    .end annotation

    invoke-static {p0}, LHc/c$e;->a(LHc/c$e;)LMc/i;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-static {p0}, LHc/c$e;->a(LHc/c$e;)LMc/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {p0}, LHc/c$e;->a(LHc/c$e;)LMc/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, LHc/c;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, LHc/c$e;->a(LHc/c$e;)LMc/i;

    move-result-object v1

    sget-object v2, LHc/c;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, LMc/i;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {p0}, LHc/c$e;->a(LHc/c$e;)LMc/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static i(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ioFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->g(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LHc/c;->k(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->h(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LHc/c;->k(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, LHc/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LHc/c;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LHc/c$f;

    if-nez p0, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    sget-object v1, LHc/c;->d:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {p0}, LHc/c$f;->a(LHc/c$f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p0}, LHc/c;->d(LHc/c$f;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-static {p0}, LHc/c;->f(LHc/c$f;)V

    const/4 v2, 0x1

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_3

    :try_start_2
    sget-object v1, LHc/c;->b:LMc/i;

    invoke-virtual {v1, p0}, LMc/i;->remove(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_4
    :goto_3
    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    invoke-static {p0}, LHc/c;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static m(Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "header"
        }
    .end annotation

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->durationSeconds:F

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static n(Ljava/io/File;)LFc/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ioFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, LHc/c;->s(Ljava/lang/String;Ljava/io/File;)LFc/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "File doesn\'t exist"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(Ljava/lang/String;)LFc/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, LHc/c;->s(Ljava/lang/String;Ljava/io/File;)LFc/a;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/io/File;LHc/c$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ioFile",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, LHc/c;->r(Ljava/lang/String;Ljava/io/File;LHc/c$d;)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "File doesn\'t exist"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static q(Ljava/lang/String;LHc/c$d;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, LHc/c;->r(Ljava/lang/String;Ljava/io/File;LHc/c$d;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r(Ljava/lang/String;Ljava/io/File;LHc/c$d;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "logicalPath",
            "ioFile",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->c(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :catch_1
    move-exception p0

    goto/16 :goto_5

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->d(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object v0

    :goto_0
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    invoke-static {v1}, LHc/c;->m(Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    new-instance p0, LFc/d;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, LFc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)V

    goto :goto_1

    :cond_1
    new-instance p1, LFc/d;

    invoke-direct {p1, p0, v0}, LFc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)V

    move-object p0, p1

    :goto_1
    invoke-interface {p2, p0}, LHc/c$d;->a(LFc/a;)V

    return-void

    :cond_2
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LHc/c;->g(Ljava/lang/String;)LHc/c$f;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1}, LHc/c$f;->a(LHc/c$f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, LHc/c$f;->d(LHc/c$f;)LHc/c$g;

    move-result-object v2

    sget-object v3, LHc/c$g;->Done:LHc/c$g;

    if-ne v2, v3, :cond_3

    invoke-static {p1}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {p1, p0}, LHc/c;->u(LHc/c$f;Ljava/lang/String;)LFc/b;

    move-result-object p0

    invoke-interface {p2, p0}, LHc/c$d;->a(LFc/a;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    invoke-static {p1}, LHc/c$f;->d(LHc/c$f;)LHc/c$g;

    move-result-object v2

    sget-object v3, LHc/c$g;->Loading:LHc/c$g;

    if-ne v2, v3, :cond_4

    new-instance v0, LHc/c$b;

    invoke-direct {v0, p1, p0, p2}, LHc/c$b;-><init>(LHc/c$f;Ljava/lang/String;LHc/c$d;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    monitor-exit v1

    return-void

    :cond_4
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_5
    :goto_3
    new-instance p1, LHc/c$f;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, LHc/c$f;-><init>(LHc/c$a;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LHc/c$f;->g(LHc/c$f;Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, LHc/c;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    sget-object v2, LHc/c;->b:LMc/i;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, LHc/c;->c:Ljava/util/Map;

    invoke-static {p1}, LHc/c$f;->f(LHc/c$f;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v1, LHc/c$c;

    invoke-direct {v1, v0, p1, p2, p0}, LHc/c$c;-><init>(Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;LHc/c$f;LHc/c$d;Ljava/lang/String;)V

    invoke-static {v1}, LO9/b;->d(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_5
    throw p0
.end method

.method public static s(Ljava/lang/String;Ljava/io/File;)LFc/a;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "logicalPath",
            "ioFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->c(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :catch_1
    move-exception p0

    goto/16 :goto_6

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->d(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object v0

    :goto_0
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    invoke-static {v1}, LHc/c;->m(Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    new-instance p0, LFc/d;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, LFc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)V

    goto :goto_1

    :cond_1
    new-instance p1, LFc/d;

    invoke-direct {p1, p0, v0}, LFc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)V

    move-object p0, p1

    :goto_1
    return-object p0

    :cond_2
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LHc/c;->g(Ljava/lang/String;)LHc/c$f;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, LHc/c$f;->a(LHc/c$f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_2
    :goto_2
    :try_start_1
    invoke-static {p1}, LHc/c$f;->d(LHc/c$f;)LHc/c$g;

    move-result-object v2

    sget-object v3, LHc/c$g;->Loading:LHc/c$g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_3

    :try_start_2
    invoke-static {p1}, LHc/c$f;->a(LHc/c$f;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :try_start_3
    invoke-static {p1}, LHc/c$f;->d(LHc/c$f;)LHc/c$g;

    move-result-object v2

    sget-object v3, LHc/c$g;->Done:LHc/c$g;

    if-ne v2, v3, :cond_4

    invoke-static {p1}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {p1, p0}, LHc/c;->u(LHc/c$f;Ljava/lang/String;)LFc/b;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_4
    invoke-static {p1}, LHc/c$f;->h(LHc/c$f;)Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/FileNotFoundException;

    if-nez v2, :cond_5

    monitor-exit v1

    goto :goto_4

    :cond_5
    invoke-static {p1}, LHc/c$f;->h(LHc/c$f;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/FileNotFoundException;

    throw p0

    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_6
    :goto_4
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/f;->a(Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;

    move-result-object p1

    new-instance v1, LHc/c$f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LHc/c$f;-><init>(LHc/c$a;)V

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LHc/c$f;->g(LHc/c$f;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, LHc/c$f;->a(LHc/c$f;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    new-instance v3, LHc/c$e;

    invoke-direct {v3, p1, v2}, LHc/c$e;-><init>(Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;LHc/c$a;)V

    invoke-static {v1, v3}, LHc/c$f;->c(LHc/c$f;LHc/c$e;)LHc/c$e;

    sget-object p1, LHc/c$g;->Done:LHc/c$g;

    invoke-static {v1, p1}, LHc/c$f;->e(LHc/c$f;LHc/c$g;)LHc/c$g;

    invoke-static {v1, p0}, LHc/c;->u(LHc/c$f;Ljava/lang/String;)LFc/b;

    move-result-object p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    sget-object p1, LHc/c;->a:Ljava/lang/Object;

    monitor-enter p1
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    sget-object v0, LHc/c;->b:LMc/i;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LHc/c;->c:Ljava/util/Map;

    invoke-static {v1}, LHc/c$f;->f(LHc/c$f;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_2
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :goto_5
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_6
    throw p0
.end method

.method public static t()V
    .locals 0

    invoke-static {}, LHc/c;->w()V

    return-void
.end method

.method public static u(LHc/c$f;Ljava/lang/String;)LFc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "logicalPath"
        }
    .end annotation

    invoke-static {p0}, LHc/c$f;->a(LHc/c$f;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, LFc/b;

    invoke-static {p0}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object v2

    invoke-direct {v1, p1, v2}, LFc/b;-><init>(Ljava/lang/String;LHc/c$e;)V

    invoke-static {p0}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object p0

    invoke-virtual {p0, v1}, LHc/c$e;->c(LFc/a;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Immediate audio is unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static v(LFc/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emitter"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LFc/a;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LHc/c;->g(Ljava/lang/String;)LHc/c$f;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, LHc/c$f;->a(LHc/c$f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v0}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object v0

    invoke-virtual {v0, p0}, LHc/c$e;->h(LFc/a;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static w()V
    .locals 8

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sound manager"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, LHc/c;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    :try_start_0
    sget-object v4, LHc/c;->b:LMc/i;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LHc/c$f;

    invoke-static {v4}, LHc/c$f;->a(LHc/c$f;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v4}, LHc/c$f;->d(LHc/c$f;)LHc/c$g;

    move-result-object v6

    sget-object v7, LHc/c$g;->Done:LHc/c$g;

    if-ne v6, v7, :cond_3

    invoke-static {v4}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {v4}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object v6

    invoke-static {v6}, LHc/c;->h(LHc/c$e;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, LHc/c;->d:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_2
    monitor-exit v5

    goto :goto_4

    :cond_3
    :goto_3
    monitor-exit v5

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_4
    sget-object v3, LHc/c;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_6
    sget-object v3, LHc/c;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LHc/c$f;

    invoke-static {v3}, LHc/c$f;->a(LHc/c$f;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v3}, LHc/c;->d(LHc/c$f;)Z

    move-result v5

    if-nez v5, :cond_5

    monitor-exit v4

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_5
    invoke-static {v3}, LHc/c;->f(LHc/c$f;)V

    sget-object v5, LHc/c;->b:LMc/i;

    invoke-virtual {v5, v3}, LMc/i;->remove(Ljava/lang/Object;)Z

    sget-object v5, LHc/c;->c:Ljava/util/Map;

    invoke-static {v3}, LHc/c$f;->f(LHc/c$f;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :goto_8
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw v0

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_7
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void

    :goto_9
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public static x(LHc/c$f;Ljava/lang/String;LHc/c$d;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "logicalPath",
            "listener"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, LHc/c$f;->a(LHc/c$f;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {p0}, LHc/c$f;->d(LHc/c$f;)LHc/c$g;

    move-result-object v1

    sget-object v2, LHc/c$g;->Loading:LHc/c$g;

    if-ne v1, v2, :cond_0

    invoke-static {p0}, LHc/c$f;->a(LHc/c$f;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {p0}, LHc/c$f;->d(LHc/c$f;)LHc/c$g;

    move-result-object v1

    sget-object v2, LHc/c$g;->Done:LHc/c$g;

    if-ne v1, v2, :cond_1

    invoke-static {p0}, LHc/c$f;->b(LHc/c$f;)LHc/c$e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, LHc/c;->u(LHc/c$f;Ljava/lang/String;)LFc/b;

    move-result-object p0

    invoke-interface {p2, p0}, LHc/c$d;->a(LFc/a;)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {p0}, LHc/c$f;->h(LHc/c$f;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p0}, LHc/c$f;->h(LHc/c$f;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {p2, p0}, LHc/c$d;->onError(Ljava/lang/Throwable;)V

    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Immediate audio failed to load"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, LHc/c$d;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    invoke-interface {p2, p0}, LHc/c$d;->onError(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
