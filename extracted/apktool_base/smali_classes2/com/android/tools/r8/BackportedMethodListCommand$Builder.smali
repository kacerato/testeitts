.class public Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/BackportedMethodListCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/android/tools/r8/internal/Ef0;

.field private b:I

.field private final c:Ljava/util/ArrayList;

.field private final d:Lcom/android/tools/r8/utils/i$a;

.field private e:Lcom/android/tools/r8/StringConsumer;

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->b:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->f:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->g:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->h:Z

    .line 8
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ef0;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iput-object v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/F0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/tools/r8/BackportedMethodListCommand$Builder;)Lcom/android/tools/r8/internal/Ef0;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    return-object p0
.end method


# virtual methods
.method public addDesugaredLibraryConfiguration(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDesugaredLibraryConfiguration(Ljava/lang/String;)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/v0;->a(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/v0;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->addDesugaredLibraryConfiguration(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addLibraryFiles(Ljava/util/Collection;)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/BackportedMethodListCommand$Builder;"
        }
    .end annotation

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
    iget-object v1, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/utils/i$a;->b(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/i$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addLibraryFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->addLibraryFiles(Ljava/util/Collection;)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;

    return-object p0
.end method

.method public addLibraryResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/utils/i$a;->b(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/utils/i$a;

    return-object p0
.end method

.method public build()Lcom/android/tools/r8/BackportedMethodListCommand;
    .locals 38

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->d:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v7

    iget-object v1, v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v7}, Lcom/android/tools/r8/utils/i;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v3, "With desugared library configuration a library is required"

    invoke-direct {v2, v3}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->isPrintHelp()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->isPrintVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->e:Lcom/android/tools/r8/StringConsumer;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/tools/r8/f;

    invoke-direct {v1}, Lcom/android/tools/r8/f;-><init>()V

    iput-object v1, v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->e:Lcom/android/tools/r8/StringConsumer;

    :cond_2
    new-instance v1, Lcom/android/tools/r8/graph/u1;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/u1;-><init>()V

    new-instance v10, Lcom/android/tools/r8/BackportedMethodListCommand;

    iget-object v3, v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    iget v4, v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->b:I

    iget-boolean v5, v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->h:Z

    iget-object v2, v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    new-instance v1, Lcom/android/tools/r8/internal/DA;

    new-instance v2, Lcom/android/tools/r8/internal/SA;

    sget-object v12, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    sget v8, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v17, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const-string v13, "unused"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lcom/android/tools/r8/internal/SA;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    new-instance v8, Lcom/android/tools/r8/internal/IA;

    move-object/from16 v18, v8

    sget-object v29, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    move-object/from16 v37, v29

    move-object/from16 v36, v29

    move-object/from16 v19, v29

    move-object/from16 v25, v29

    move-object/from16 v34, v29

    move-object/from16 v32, v29

    move-object/from16 v31, v29

    move-object/from16 v30, v29

    move-object/from16 v26, v29

    move-object/from16 v28, v29

    move-object/from16 v22, v29

    move-object/from16 v27, v29

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    sget v9, Lcom/android/tools/r8/internal/QC;->c:I

    sget-object v21, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    move-object/from16 v20, v21

    move-object/from16 v33, v21

    move-object/from16 v35, v21

    invoke-direct/range {v18 .. v37}, Lcom/android/tools/r8/internal/IA;-><init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;)V

    invoke-direct {v1, v2, v8, v6}, Lcom/android/tools/r8/internal/DA;-><init>(Lcom/android/tools/r8/internal/SA;Lcom/android/tools/r8/internal/IA;Z)V

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x1

    if-le v2, v8, :cond_4

    iget-object v2, v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    const-string v8, "Only one desugared library configuration is supported."

    invoke-virtual {v2, v8}, Lcom/android/tools/r8/internal/Ef0;->b(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_4
    iget-object v2, v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/v0;

    iget-object v8, v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->getMinApiLevel()I

    move-result v9

    invoke-static {v2, v1, v8, v6, v9}, Lcom/android/tools/r8/internal/wm;->a(Lcom/android/tools/r8/v0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZI)Lcom/android/tools/r8/internal/vm;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v8, v0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->e:Lcom/android/tools/r8/StringConsumer;

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/tools/r8/BackportedMethodListCommand;-><init>(Lcom/android/tools/r8/internal/Ef0;IZLcom/android/tools/r8/internal/vm;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/G0;)V

    return-object v10

    :cond_5
    :goto_2
    new-instance v1, Lcom/android/tools/r8/BackportedMethodListCommand;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->isPrintHelp()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->isPrintVersion()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/tools/r8/BackportedMethodListCommand;-><init>(ZZLcom/android/tools/r8/G0;)V

    return-object v1
.end method

.method public getMinApiLevel()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->b:I

    return v0
.end method

.method public isPrintHelp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->f:Z

    return v0
.end method

.method public isPrintVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->g:Z

    return v0
.end method

.method public setAndroidPlatformBuild(Z)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->h:Z

    return-object p0
.end method

.method public setConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->e:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method

.method public setMinApiLevel(I)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
    .locals 4

    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid minApiLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-object p0

    :cond_0
    iput p1, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->b:I

    return-object p0
.end method

.method public setOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/e;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/e;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->e:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method

.method public setPrintHelp(Z)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->f:Z

    return-object p0
.end method

.method public setPrintVersion(Z)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->g:Z

    return-object p0
.end method
