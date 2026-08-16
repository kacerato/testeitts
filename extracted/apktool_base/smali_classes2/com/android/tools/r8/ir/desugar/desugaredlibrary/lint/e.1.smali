.class public Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;
.super Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;
.source "SourceFile"


# static fields
.field static final synthetic i:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/v0;Ljava/util/Collection;Ljava/nio/file/Path;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/Ef0;",
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

    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;-><init>(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/v0;Ljava/util/Collection;Ljava/nio/file/Path;Ljava/util/Collection;)V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/C2;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "desugared_apis_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/android/tools/r8/internal/C2;Ljava/util/List;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;)V
    .locals 2

    .line 31
    iget-object v0, p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->a:Lcom/android/tools/r8/graph/E0;

    .line 32
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 33
    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->b:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    .line 36
    iget-boolean v1, v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->b:Z

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/s;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/s;-><init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;Lcom/android/tools/r8/internal/C2;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->b(Ljava/util/function/BiConsumer;)V

    .line 38
    new-instance p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/t;

    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/t;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->a(Ljava/util/function/BiConsumer;)V

    return-void

    .line 39
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/android/tools/r8/internal/C2;Ljava/util/List;Ljava/lang/String;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)V
    .locals 1

    .line 21
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p5, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    iget-boolean v0, p5, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->a:Z

    if-eqz v0, :cond_2

    return-void

    .line 23
    :cond_2
    iget-boolean v0, p5, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->e:Z

    if-eqz v0, :cond_4

    .line 24
    sget-object p5, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    if-ne p1, p5, :cond_3

    goto :goto_0

    :cond_3
    return-void

    .line 25
    :cond_4
    sget-boolean p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;->i:Z

    if-nez p1, :cond_6

    iget-boolean p1, p5, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->f:Z

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_6
    :goto_0
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 27
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    iget-object p4, p4, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {}, Lcom/android/tools/r8/naming/r0;->a()Lcom/android/tools/r8/naming/r0;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object p4

    .line 29
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "#"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;Lcom/android/tools/r8/internal/C2;Ljava/util/List;Ljava/lang/String;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;->a(Lcom/android/tools/r8/internal/C2;Ljava/util/List;Ljava/lang/String;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)V

    return-void
.end method

.method private static synthetic a(Ljava/util/List;Ljava/lang/String;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;)V
    .locals 0

    if-eqz p3, :cond_1

    .line 40
    iget-boolean p3, p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->a:Z

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/C2;)Ljava/nio/file/Path;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->e:Ljava/nio/file/Path;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compile_api_level_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    new-array v2, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 4
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 5
    invoke-static {p1, p2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;->a(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/C2;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".txt"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/String;

    .line 6
    invoke-static {p1, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic b(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;Lcom/android/tools/r8/internal/C2;Ljava/util/List;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;->a(Lcom/android/tools/r8/internal/C2;Ljava/util/List;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/List;Ljava/lang/String;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;->a(Ljava/util/List;Ljava/lang/String;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;

    new-instance v3, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Ef0;-><init>()V

    const/4 v1, 0x0

    aget-object v2, p0, v1

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/v0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/v0$a;

    move-result-object v4

    const/4 v2, 0x1

    aget-object v2, p0, v2

    new-array v5, v1, [Ljava/lang/String;

    invoke-static {v2, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->fromArchive(Ljava/nio/file/Path;)Lcom/android/tools/r8/ArchiveProgramResourceProvider;

    move-result-object v2

    sget v5, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v5, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x2

    aget-object v2, p0, v2

    new-array v6, v1, [Ljava/lang/String;

    invoke-static {v2, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    new-instance v2, Lcom/android/tools/r8/ArchiveClassFileProvider;

    const/4 v7, 0x3

    aget-object p0, p0, v7

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/android/tools/r8/ArchiveClassFileProvider;-><init>(Ljava/nio/file/Path;)V

    new-instance v7, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v7, v2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;-><init>(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/v0;Ljava/util/Collection;Ljava/nio/file/Path;Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;->run()Lcom/android/tools/r8/internal/C2;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    sget-object v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->g:Lcom/android/tools/r8/internal/C2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage: GenerateDesugaredLibraryLintFiles <desugar configuration> <desugar implementation> <output directory> <android jar path for Android "

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
.method public final a(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;)V
    .locals 7

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/r;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/r;-><init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;Lcom/android/tools/r8/internal/C2;Ljava/util/List;)V

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;->a(Ljava/util/function/Consumer;)V

    .line 5
    iget-object v1, p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;->b:Ljava/util/AbstractCollection;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "#"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 7
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {v4}, Lcom/android/tools/r8/internal/Bl;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    iget-object v5, v2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/android/tools/r8/naming/r0;->a()Lcom/android/tools/r8/naming/r0;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object v2

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    iget-object p3, p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;->c:Ljava/util/AbstractCollection;

    .line 15
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/android/tools/r8/internal/Bl;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_1
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 20
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;->a(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/C2;Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/C2;Ljava/util/ArrayList;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;->b(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/C2;)Ljava/nio/file/Path;

    move-result-object p1

    .line 44
    invoke-static {p1, p3}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;Ljava/util/List;)Ljava/nio/file/Path;

    return-void
.end method

.method public run()Lcom/android/tools/r8/internal/C2;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->b:Lcom/android/tools/r8/internal/vm;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/vm;->d()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->f:Ljava/util/Collection;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;-><init>(Lcom/android/tools/r8/internal/nJ;Ljava/util/Collection;Z)V

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->d:Ljava/util/Collection;

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->c:Lcom/android/tools/r8/v0;

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->b(Ljava/util/Collection;Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;->a(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;)V

    sget-object v2, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;->a(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;)V

    return-object v0
.end method
