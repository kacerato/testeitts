.class public abstract Lcom/android/tools/r8/BaseCommand$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/BaseCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/android/tools/r8/BaseCommand;",
        "B:",
        "Lcom/android/tools/r8/BaseCommand$Builder<",
        "TC;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/tools/r8/internal/Ef0;

.field private b:Z

.field private c:Z

.field private final d:Lcom/android/tools/r8/utils/i$a;

.field final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/tools/r8/internal/Ef0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/Ef0;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ef0;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    move-object p1, v0

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/utils/i;->a(Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/utils/i$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;-><init>(Lcom/android/tools/r8/utils/i$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/utils/i$a;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->b:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->c:Z

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->e:Ljava/util/ArrayList;

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/BaseCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/utils/i$a;->m:Lcom/android/tools/r8/internal/Ef0;

    .line 11
    iput-object p1, p0, Lcom/android/tools/r8/BaseCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/BaseCommand$Builder;Lcom/android/tools/r8/ClassFileResourceProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Lcom/android/tools/r8/ClassFileResourceProvider;)V

    return-void
.end method

.method private synthetic a(Lcom/android/tools/r8/ClassFileResourceProvider;)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/utils/i$a;

    return-void
.end method

.method private synthetic a(Lcom/android/tools/r8/internal/C7;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->d()V

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->makeCommand()Lcom/android/tools/r8/BaseCommand;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/BaseCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ef0;->a()V

    return-void
.end method

.method private a(Ljava/nio/file/Path;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/android/tools/r8/R0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/R0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;Ljava/nio/file/Path;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Ljava/util/Collection;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/I0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/I0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    .line 15
    iput-boolean p1, v0, Lcom/android/tools/r8/utils/i$a;->j:Z

    return-void
.end method

.method private synthetic a([BLcom/android/tools/r8/origin/Origin;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/utils/i$a;->a([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/utils/i$a;

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/utils/i$a;->i:Ljava/util/AbstractCollection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private synthetic a([Ljava/nio/file/Path;)V
    .locals 1

    .line 6
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/I0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/I0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/BaseCommand$Builder;Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->e(Ljava/util/Collection;)V

    return-void
.end method

.method private synthetic b(Lcom/android/tools/r8/ClassFileResourceProvider;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/utils/i$a;->b(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/utils/i$a;

    return-void
.end method

.method private b(Ljava/nio/file/Path;)V
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    .line 9
    iget-object v1, v0, Lcom/android/tools/r8/utils/i$a;->e:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/utils/i$a;->a(Ljava/nio/file/Path;Ljava/util/ArrayList;)V

    return-void
.end method

.method private b(Ljava/util/Collection;)V
    .locals 4

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/BaseCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/utils/i$a;->b(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/i$a;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/If; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    new-instance v2, Lcom/android/tools/r8/h;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/h;-><init>(Ljava/nio/file/Path;)V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    new-instance v3, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v3, v1, v2}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic b([BLcom/android/tools/r8/origin/Origin;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/utils/i$a;->b([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/utils/i$a;

    return-void
.end method

.method private b([Ljava/nio/file/Path;)V
    .locals 4

    const/4 v0, 0x0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/BaseCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    .line 15
    new-array v3, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    iget-object v3, v1, Lcom/android/tools/r8/utils/i$a;->h:Ljava/util/AbstractCollection;

    invoke-static {v2}, Lcom/android/tools/r8/v0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/v0$a;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 17
    :cond_0
    new-instance p1, Ljava/nio/file/NoSuchFileException;

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/BaseCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v3, Lcom/android/tools/r8/origin/PathOrigin;

    .line 19
    invoke-virtual {p1}, Ljava/nio/file/FileSystemException;->getFile()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    const-string p1, "Main-dex-list file does not exist"

    invoke-direct {v2, p1, v3}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 20
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/BaseCommand$Builder;Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/util/Collection;)V

    return-void
.end method

.method private c(Ljava/util/Collection;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/utils/i$a;->i:Ljava/util/AbstractCollection;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic d(Lcom/android/tools/r8/BaseCommand$Builder;Lcom/android/tools/r8/internal/C7;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Lcom/android/tools/r8/internal/C7;)V

    return-void
.end method

.method private d(Ljava/util/Collection;)V
    .locals 4

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/BaseCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    .line 5
    new-array v3, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, v1, Lcom/android/tools/r8/utils/i$a;->h:Ljava/util/AbstractCollection;

    invoke-static {v2}, Lcom/android/tools/r8/v0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/v0$a;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_0
    new-instance p1, Ljava/nio/file/NoSuchFileException;

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/BaseCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v3, Lcom/android/tools/r8/origin/PathOrigin;

    .line 9
    invoke-virtual {p1}, Ljava/nio/file/FileSystemException;->getFile()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    const-string p1, "Main-dex-list file does not exist"

    invoke-direct {v2, p1, v3}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 10
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/android/tools/r8/BaseCommand$Builder;Ljava/nio/file/Path;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/nio/file/Path;)V

    return-void
.end method

.method private e(Ljava/util/Collection;)V
    .locals 4

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/BaseCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/utils/i$a;->c(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/i$a;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/BaseCommand$Builder;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/tools/r8/internal/If; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    new-instance v2, Lcom/android/tools/r8/i;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/i;-><init>(Ljava/nio/file/Path;)V

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    new-instance v3, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v3, v1, v2}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/android/tools/r8/BaseCommand$Builder;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->b(Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/tools/r8/BaseCommand$Builder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Z)V

    return-void
.end method

.method public static synthetic h(Lcom/android/tools/r8/BaseCommand$Builder;[BLcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/BaseCommand$Builder;->b([BLcom/android/tools/r8/origin/Origin;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/tools/r8/BaseCommand$Builder;[BLcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/BaseCommand$Builder;->a([BLcom/android/tools/r8/origin/Origin;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/tools/r8/BaseCommand$Builder;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->b(Ljava/nio/file/Path;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/tools/r8/BaseCommand$Builder;Lcom/android/tools/r8/ClassFileResourceProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->b(Lcom/android/tools/r8/ClassFileResourceProvider;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/tools/r8/BaseCommand$Builder;[Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->a([Ljava/nio/file/Path;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/tools/r8/BaseCommand$Builder;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->c(Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/tools/r8/BaseCommand$Builder;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/tools/r8/BaseCommand$Builder;[Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->b([Ljava/nio/file/Path;)V

    return-void
.end method

.method public static synthetic p(Lcom/android/tools/r8/BaseCommand$Builder;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->d(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/utils/i$a;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/origin/PathOrigin;Ljava/io/IOException;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 4

    .line 17
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/If; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/tools/r8/internal/g; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    .line 19
    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/internal/If;->b:Lcom/android/tools/r8/origin/Origin;

    iget-object p1, p1, Lcom/android/tools/r8/internal/If;->c:Lcom/android/tools/r8/position/Position;

    invoke-direct {v1, v2, v3, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :catch_1
    return-void
.end method

.method public addClassProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/tools/r8/origin/Origin;",
            ")TB;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/W0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/W0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;[BLcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addClasspathFiles(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)TB;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/android/tools/r8/T0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/T0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addClasspathFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/Path;",
            ")TB;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/tools/r8/N0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/N0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;[Ljava/nio/file/Path;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addClasspathResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/ClassFileResourceProvider;",
            ")TB;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/K0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/K0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;Lcom/android/tools/r8/ClassFileResourceProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDexProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/tools/r8/origin/Origin;",
            ")TB;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/Q0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/Q0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;[BLcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addLibraryFiles(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)TB;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/android/tools/r8/L0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/L0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addLibraryFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/Path;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->addLibraryFiles(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCommand$Builder;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addLibraryResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/ClassFileResourceProvider;",
            ")TB;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/U0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/U0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;Lcom/android/tools/r8/ClassFileResourceProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addMainDexClasses(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/android/tools/r8/S0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/S0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addMainDexClasses([Ljava/lang/String;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/tools/r8/O0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/O0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addMainDexListFiles(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)TB;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/android/tools/r8/P0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/P0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addMainDexListFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/Path;",
            ")TB;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/tools/r8/V0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/V0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;[Ljava/nio/file/Path;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addProgramFiles(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)TB;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/android/tools/r8/H0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/H0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addProgramFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/Path;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->addProgramFiles(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCommand$Builder;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/ProgramResourceProvider;",
            ")TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/android/tools/r8/internal/Ef0;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    return-object v0
.end method

.method public final b(Z)V
    .locals 1

    .line 21
    new-instance v0, Lcom/android/tools/r8/J0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/J0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;Z)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final build()Lcom/android/tools/r8/BaseCommand;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/C7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/C7;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/tools/r8/BaseCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/M0;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/M0;-><init>(Lcom/android/tools/r8/BaseCommand$Builder;Lcom/android/tools/r8/internal/C7;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/BaseCommand;

    return-object v0
.end method

.method public abstract c()Lcom/android/tools/r8/BaseCommand$Builder;
.end method

.method public d()V
    .locals 0

    .line 2
    return-void
.end method

.method public error(Lcom/android/tools/r8/Diagnostic;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public fatalError(Lcom/android/tools/r8/Diagnostic;)Ljava/lang/RuntimeException;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    iget-object p1, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public isPrintHelp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->b:Z

    return v0
.end method

.method public isPrintVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/BaseCommand$Builder;->c:Z

    return v0
.end method

.method public abstract makeCommand()Lcom/android/tools/r8/BaseCommand;
.end method

.method public setPrintHelp(Z)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/tools/r8/BaseCommand$Builder;->b:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPrintVersion(Z)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/tools/r8/BaseCommand$Builder;->c:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    return-object p1
.end method
