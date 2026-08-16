.class public Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:I

.field private final b:Lcom/android/tools/r8/internal/Ef0;

.field private c:Lcom/android/tools/r8/v0;

.field private final d:Ljava/util/ArrayList;

.field private e:Lcom/android/tools/r8/StringConsumer;

.field private final f:Ljava/util/ArrayList;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->c:Lcom/android/tools/r8/v0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->g:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->h:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->i:Z

    new-instance v0, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ef0;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method


# virtual methods
.method public addDesugarLibraryImplementation(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addLibrary(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;
    .locals 9

    iget-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->g:Z

    if-nez v0, :cond_5

    iget-boolean v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->h:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    const-string v1, "With platform build desugared library is not allowed."

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->c:Lcom/android/tools/r8/v0;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    const-string v1, "With desugared library specification a library is required."

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->c:Lcom/android/tools/r8/v0;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    const-string v1, "The desugar library specification is required when desugared library implementation is present."

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->e:Lcom/android/tools/r8/StringConsumer;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/c;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/c;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->e:Lcom/android/tools/r8/StringConsumer;

    :cond_4
    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;

    iget v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->a:I

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    iget-object v4, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->c:Lcom/android/tools/r8/v0;

    iget-object v5, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->d:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->e:Lcom/android/tools/r8/StringConsumer;

    iget-object v7, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->f:Ljava/util/ArrayList;

    iget-boolean v8, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->i:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;-><init>(ILcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/v0;Ljava/util/ArrayList;Lcom/android/tools/r8/StringConsumer;Ljava/util/ArrayList;Z)V

    return-object v0

    :cond_5
    :goto_0
    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;

    iget-boolean v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->h:Z

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;-><init>(ZZ)V

    return-object v1
.end method

.method public setAndroidPlatformBuild()Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->i:Z

    return-object p0
.end method

.method public setDesugarLibrarySpecification(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->c:Lcom/android/tools/r8/v0;

    return-object p0
.end method

.method public setHelp()Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->g:Z

    return-object p0
.end method

.method public setMinApi(I)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->a:I

    return-object p0
.end method

.method public setMinApi(II)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;
    .locals 0

    .line 2
    iput p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->a:I

    return-object p0
.end method

.method public setOutputConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->e:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method

.method public setOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/b;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/b;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->e:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method

.method public setVersion()Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->h:Z

    return-object p0
.end method
