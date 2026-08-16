.class public Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/j;
.super Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/v0;Ljava/util/Collection;Ljava/nio/file/Path;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/v0;",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/ProgramResourceProvider;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/ClassFileResourceProvider;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Ef0;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;-><init>(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/v0;Ljava/util/Collection;Ljava/nio/file/Path;Ljava/util/Collection;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a:Ljava/util/TreeMap;

    .line 10
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)V
    .locals 1

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->I()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->i1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object p0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->b:Ljava/util/TreeMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 16
    :cond_2
    iget-object p0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->c:Ljava/util/TreeMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static a(Ljava/io/PrintStream;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->a:Lcom/android/tools/r8/graph/E0;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 3
    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;

    .line 4
    iget-object v2, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->b:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    .line 5
    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;)V

    .line 6
    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/u;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/u;-><init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->a(Ljava/util/function/BiConsumer;)V

    .line 7
    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/v;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/v;-><init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->b(Ljava/util/function/BiConsumer;)V

    .line 8
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "--generate-api-docs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, p0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/j;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/v0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/v0$a;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, p0, v3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->fromArchive(Ljava/nio/file/Path;)Lcom/android/tools/r8/ArchiveProgramResourceProvider;

    move-result-object v3

    sget v4, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v4, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x3

    aget-object v3, p0, v3

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-instance v5, Lcom/android/tools/r8/ArchiveClassFileProvider;

    const/4 v6, 0x4

    aget-object p0, p0, v6

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-direct {v5, p0}, Lcom/android/tools/r8/ArchiveClassFileProvider;-><init>(Ljava/nio/file/Path;)V

    new-instance p0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p0, v5}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v4, v3, p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/j;-><init>(Lcom/android/tools/r8/v0;Ljava/util/Collection;Ljava/nio/file/Path;Ljava/util/Collection;)V

    const-string p0, "apis.html"

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/j;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/C2;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    sget-object v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->g:Lcom/android/tools/r8/internal/C2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage: GenerateHtmlDoc --generate-api-docs <desugar configuration> <desugar implementation> <output directory> <android jar path for Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " or higher>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid invocation."

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/android/tools/r8/internal/C2;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->e:Ljava/nio/file/Path;

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 18
    new-instance p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->f:Ljava/util/Collection;

    invoke-direct {p1, v2, v3, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;-><init>(Lcom/android/tools/r8/internal/nJ;Ljava/util/Collection;Z)V

    iget-object v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->d:Ljava/util/Collection;

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->c:Lcom/android/tools/r8/v0;

    .line 19
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->b(Ljava/util/Collection;Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;

    move-result-object p1

    .line 20
    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/w;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/w;-><init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/j;Ljava/io/PrintStream;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;->a(Ljava/util/function/Consumer;)V

    .line 21
    sget-object p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->g:Lcom/android/tools/r8/internal/C2;

    return-object p1
.end method

.method public final synthetic b(Ljava/io/PrintStream;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/j;->a(Ljava/io/PrintStream;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;)V

    return-void
.end method
