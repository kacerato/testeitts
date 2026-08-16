.class public Lcom/android/tools/r8/internal/Jf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    return-void
.end method

.method public static a(Ljava/nio/file/Path;Ljava/nio/file/Path;)Lcom/android/tools/r8/internal/Jf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/android/tools/r8/utils/u;->a(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/util/List;

    .line 2
    new-instance p0, Lcom/android/tools/r8/internal/Jf;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jf;-><init>(Ljava/nio/file/Path;)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/nio/file/Path;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    const-string v1, "app-res.ap_"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/nio/file/Path;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".ap_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    const-string v1, "r8-exclude.txt"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    .line 9
    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    invoke-interface {p1, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ww;->h(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object p1

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/internal/Jf;->b:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/WJ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/WJ0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public a(Lcom/android/tools/r8/internal/n80;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Jf;->g()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/n80;->d(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void

    :goto_1
    if-eqz v0, :cond_1

    .line 18
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
.end method

.method public a(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feature-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()Lcom/android/tools/r8/internal/rt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    const-string v1, "build.properties"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/rt$a;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rt$a;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    invoke-interface {v2, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Ww;->i(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/rt;->b(Lcom/android/tools/r8/internal/rt$a;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rt$a;->a()Lcom/android/tools/r8/internal/rt;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/nio/file/Path;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    const-string v1, "classpath.jar"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/nio/file/Path;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    const-string v1, "desugared-library.json"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/nio/file/Path;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    const-string v1, "library.jar"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/nio/file/Path;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    const-string v1, "program.jar"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/nio/file/Path;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    const-string v1, "proguard.config"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    const-string v1, "r8-include.txt"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ww;->h(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/internal/Jf;->b:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/WJ0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/WJ0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jf;->a:Ljava/nio/file/Path;

    const-string v1, "desugared-library.json"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method
