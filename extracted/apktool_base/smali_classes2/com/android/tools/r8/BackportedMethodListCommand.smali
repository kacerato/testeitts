.class public Lcom/android/tools/r8/BackportedMethodListCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lcom/android/tools/r8/internal/Ef0;

.field private final d:I

.field private final e:Z

.field private final f:Lcom/android/tools/r8/internal/vm;

.field private final g:Lcom/android/tools/r8/utils/i;

.field private final h:Lcom/android/tools/r8/StringConsumer;


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/internal/Ef0;IZLcom/android/tools/r8/internal/vm;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->a:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->b:Z

    .line 15
    iput-object p1, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->c:Lcom/android/tools/r8/internal/Ef0;

    .line 16
    iput p2, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->d:I

    .line 17
    iput-boolean p3, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->e:Z

    .line 18
    iput-object p4, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->f:Lcom/android/tools/r8/internal/vm;

    .line 19
    iput-object p5, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->g:Lcom/android/tools/r8/utils/i;

    .line 20
    iput-object p6, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->h:Lcom/android/tools/r8/StringConsumer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ef0;IZLcom/android/tools/r8/internal/vm;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/G0;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/tools/r8/BackportedMethodListCommand;-><init>(Lcom/android/tools/r8/internal/Ef0;IZLcom/android/tools/r8/internal/vm;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;)V

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->a:Z

    .line 5
    iput-boolean p2, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->b:Z

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Ef0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->c:Lcom/android/tools/r8/internal/Ef0;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->d:I

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->e:Z

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->f:Lcom/android/tools/r8/internal/vm;

    .line 10
    iput-object p1, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->g:Lcom/android/tools/r8/utils/i;

    .line 11
    iput-object p1, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->h:Lcom/android/tools/r8/StringConsumer;

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/android/tools/r8/G0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/BackportedMethodListCommand;-><init>(ZZ)V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/BackportedMethodListCommand$Builder;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Invalid argument to --min-api: "

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->a(Lcom/android/tools/r8/BackportedMethodListCommand$Builder;)Lcom/android/tools/r8/internal/Ef0;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->setMinApiLevel(I)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;

    return-void

    .line 7
    :catch_0
    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->a(Lcom/android/tools/r8/BackportedMethodListCommand$Builder;)Lcom/android/tools/r8/internal/Ef0;

    move-result-object p0

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public static builder()Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;

    .line 2
    new-instance v1, Lcom/android/tools/r8/d;

    invoke-direct {v1}, Lcom/android/tools/r8/d;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/F0;)V

    return-object v0
.end method

.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/F0;)V

    return-object v0
.end method

.method public static parse([Ljava/lang/String;)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
    .locals 15

    const/4 v0, 0x1

    const-string v1, "--output"

    const-string v2, "--min-api"

    const-string v3, "--desugared-lib"

    const-string v4, "--lib"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6, v6, v5}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v5

    invoke-static {}, Lcom/android/tools/r8/BackportedMethodListCommand;->builder()Lcom/android/tools/r8/BackportedMethodListCommand$Builder;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_0
    array-length v10, p0

    if-ge v8, v10, :cond_a

    aget-object v10, p0, v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    add-int/lit8 v11, v8, 0x1

    array-length v12, p0

    if-ge v11, v12, :cond_0

    aget-object v8, p0, v11

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    aget-object p0, p0, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing parameter for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->a(Lcom/android/tools/r8/BackportedMethodListCommand$Builder;)Lcom/android/tools/r8/internal/Ef0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-object v6

    :cond_1
    const/4 v11, 0x0

    move-object v14, v11

    move v11, v8

    move-object v8, v14

    :goto_1
    const-string v12, "--help"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v6, v0}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->setPrintHelp(Z)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;

    goto/16 :goto_2

    :cond_2
    const-string v12, "--version"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v6, v0}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->setPrintVersion(Z)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;

    goto/16 :goto_2

    :cond_3
    const-string v12, "--android-platform-build"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v6, v0}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->setAndroidPlatformBuild(Z)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    if-eqz v9, :cond_5

    new-instance v8, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v10, "Cannot set multiple --min-api options"

    invoke-direct {v8, v10}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->a(Lcom/android/tools/r8/BackportedMethodListCommand$Builder;)Lcom/android/tools/r8/internal/Ef0;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_2

    :cond_5
    invoke-static {v6, v8}, Lcom/android/tools/r8/BackportedMethodListCommand;->a(Lcom/android/tools/r8/BackportedMethodListCommand$Builder;Ljava/lang/String;)V

    move v9, v0

    goto :goto_2

    :cond_6
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    new-array v10, v7, [Ljava/lang/String;

    invoke-static {v8, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v8

    invoke-static {v8}, Lcom/android/tools/r8/v0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/v0$a;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->addDesugaredLibraryConfiguration(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;

    goto :goto_2

    :cond_7
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    new-array v10, v7, [Ljava/lang/String;

    invoke-static {v8, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v8

    new-array v10, v0, [Ljava/nio/file/Path;

    aput-object v8, v10, v7

    invoke-virtual {v6, v10}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->addLibraryFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;

    goto :goto_2

    :cond_8
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    new-array v10, v7, [Ljava/lang/String;

    invoke-static {v8, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->setOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;

    goto :goto_2

    :cond_9
    new-instance v8, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown option: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->a(Lcom/android/tools/r8/BackportedMethodListCommand$Builder;)Lcom/android/tools/r8/internal/Ef0;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :goto_2
    add-int/lit8 v8, v11, 0x1

    goto/16 :goto_0

    :cond_a
    return-object v6
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/utils/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->g:Lcom/android/tools/r8/utils/i;

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/internal/Ef0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->c:Lcom/android/tools/r8/internal/Ef0;

    return-object v0
.end method

.method public getBackportedMethodListConsumer()Lcom/android/tools/r8/StringConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->h:Lcom/android/tools/r8/StringConsumer;

    return-object v0
.end method

.method public getDesugaredLibraryConfiguration()Lcom/android/tools/r8/internal/vm;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->f:Lcom/android/tools/r8/internal/vm;

    return-object v0
.end method

.method public getMinApiLevel()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->d:I

    return v0
.end method

.method public isAndroidPlatformBuild()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->e:Z

    return v0
.end method

.method public isPrintHelp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->a:Z

    return v0
.end method

.method public isPrintVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand;->b:Z

    return v0
.end method
