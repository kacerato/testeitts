.class public Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

.field private final b:Lcom/android/tools/r8/internal/Ef0;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:Lcom/android/tools/r8/utils/i$a;


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->a:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->c:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->d:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->e:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->f:Z

    .line 8
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->g:Lcom/android/tools/r8/utils/i$a;

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ef0;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iput-object v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/p2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->a(Ljava/util/Collection;)V

    return-void
.end method

.method private synthetic a(Ljava/util/Collection;)V
    .locals 3

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
    iget-object v1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->g:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/utils/i$a;->b(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/i$a;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/If; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    new-instance v2, Lcom/android/tools/r8/h;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/h;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->error(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addLibraryFiles(Ljava/util/Collection;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/tools/r8/o2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/o2;-><init>(Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;Ljava/util/Collection;)V

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/If; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/tools/r8/internal/g; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    .line 5
    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/internal/If;->b:Lcom/android/tools/r8/origin/Origin;

    iget-object p1, p1, Lcom/android/tools/r8/internal/If;->c:Lcom/android/tools/r8/position/Position;

    invoke-direct {v1, v2, v3, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :catch_1
    return-object p0
.end method

.method public varargs addLibraryFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->addLibraryFiles(Ljava/util/Collection;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;

    return-object p0
.end method

.method public build()Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;
    .locals 8

    iget-boolean v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->a:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    const-string v1, "GlobalSyntheticsGenerator does not support compiling without output"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->e:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->f:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;

    iget-object v1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->g:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->a:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    iget-object v4, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    iget v5, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->c:I

    iget-boolean v6, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->d:Z

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/GlobalSyntheticsConsumer;Lcom/android/tools/r8/internal/Ef0;IZLcom/android/tools/r8/q2;)V

    return-object v0

    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;

    iget-boolean v1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->e:Z

    iget-boolean v2, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->f:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;-><init>(ZZLcom/android/tools/r8/q2;)V

    return-object v0
.end method

.method public error(Lcom/android/tools/r8/Diagnostic;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public error(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public setClassfileDesugaringOnly(Z)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->d:Z

    return-object p0
.end method

.method public setGlobalSyntheticsConsumer(Lcom/android/tools/r8/GlobalSyntheticsConsumer;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->a:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    return-object p0
.end method

.method public setGlobalSyntheticsOutput(Ljava/nio/file/Path;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/K;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/K;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->setGlobalSyntheticsConsumer(Lcom/android/tools/r8/GlobalSyntheticsConsumer;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMinApiLevel(I)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->setMinApiLevel(II)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMinApiLevel(II)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
    .locals 0

    .line 2
    iput p1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->c:I

    return-object p0
.end method

.method public setPrintHelp(Z)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->e:Z

    return-object p0
.end method

.method public setPrintVersion(Z)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->f:Z

    return-object p0
.end method
