.class public Lcom/android/tools/r8/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/z$a;
    }
.end annotation


# direct methods
.method public static synthetic a(Lcom/android/tools/r8/ProgramResource;)Ljava/util/Collection;
    .locals 0

    .line 29
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/z$a;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/nJ;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/nJ;-><init>()V

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/nJ;->V:Z

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/android/tools/r8/z;->b(Lcom/android/tools/r8/z$a;)Lcom/android/tools/r8/B;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .line 5
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/utils/i;->a(Ljava/util/function/Consumer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/ProgramResource;

    .line 7
    invoke-static {p0, v2, v5, v1}, Lcom/android/tools/r8/z;->a(Lcom/android/tools/r8/z$a;Lcom/android/tools/r8/B;Lcom/android/tools/r8/ProgramResource;Lcom/android/tools/r8/internal/nJ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_3

    .line 9
    :goto_1
    :try_start_3
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 10
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Lcom/android/tools/r8/z$a;Lcom/android/tools/r8/B;Lcom/android/tools/r8/ProgramResource;Lcom/android/tools/r8/internal/nJ;)V
    .locals 8

    .line 11
    invoke-static {p3}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/nJ;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 12
    :try_start_0
    new-instance v1, Lcom/android/tools/r8/dex/c;

    .line 13
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/k4;

    invoke-direct {v3, p2}, Lcom/android/tools/r8/k4;-><init>(Lcom/android/tools/r8/ProgramResource;)V

    .line 14
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/utils/i$a;

    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object p2

    .line 16
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v2

    invoke-direct {v1, p2, p3, v2}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    iget-object p2, p0, Lcom/android/tools/r8/z$a;->f:Lcom/android/tools/r8/v0$a;

    .line 17
    invoke-virtual {v1, p2, v0}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/v0;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;

    move-result-object p2

    .line 18
    iget-boolean p0, p0, Lcom/android/tools/r8/z$a;->g:Z

    if-eqz p0, :cond_0

    .line 19
    new-instance p0, Lcom/android/tools/r8/graph/U5;

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/graph/U5;-><init>(Lcom/android/tools/r8/graph/w4;Lcom/android/tools/r8/internal/nJ;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 20
    :cond_0
    new-instance p0, Lcom/android/tools/r8/graph/C;

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    .line 21
    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/graph/C;-><init>(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/nJ;ZZZ)V

    .line 22
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/B;->b()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/x0;->g()Lcom/android/tools/r8/naming/b;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/android/tools/r8/B;->a(Lcom/android/tools/r8/naming/b;)Lcom/android/tools/r8/graph/A0;

    move-result-object p3

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcom/android/tools/r8/graph/A0;->a(Lcom/android/tools/r8/graph/E0;)Ljava/io/PrintStream;

    move-result-object p3

    .line 24
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/B0;->e(Ljava/io/PrintStream;)V

    .line 25
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/x0;->g()Lcom/android/tools/r8/naming/b;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/tools/r8/B;->a(Lcom/android/tools/r8/naming/b;)Lcom/android/tools/r8/graph/A0;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/tools/r8/B;->a()Ljava/util/function/Consumer;

    move-result-object p1

    .line 26
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/graph/B0;->a(Lcom/android/tools/r8/graph/A0;Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 28
    throw p0
.end method

.method public static b(Lcom/android/tools/r8/z$a;)Lcom/android/tools/r8/B;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/z$a;->e:Ljava/nio/file/Path;

    if-nez v0, :cond_0

    new-instance p0, Lcom/android/tools/r8/C;

    invoke-direct {p0}, Lcom/android/tools/r8/C;-><init>()V

    return-object p0

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/z$a;->e:Ljava/nio/file/Path;

    iget-boolean p0, p0, Lcom/android/tools/r8/z$a;->g:Z

    if-eqz p0, :cond_1

    const-string p0, ".smali"

    goto :goto_0

    :cond_1
    sget-boolean p0, Lcom/android/tools/r8/graph/C;->l:Z

    const-string p0, ".dump"

    :goto_0
    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v2

    if-eqz v2, :cond_2

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v2, v1}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    :cond_2
    new-instance v1, Lcom/android/tools/r8/y;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/y;-><init>(Ljava/lang/String;Ljava/nio/file/Path;)V

    return-object v1

    :cond_3
    iget-object p0, p0, Lcom/android/tools/r8/z$a;->e:Ljava/nio/file/Path;

    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_4

    new-array v2, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    :cond_4
    new-instance v0, Lcom/android/tools/r8/A;

    new-instance v2, Ljava/io/PrintStream;

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v2}, Lcom/android/tools/r8/A;-><init>(Ljava/io/PrintStream;)V

    return-object v0
.end method
