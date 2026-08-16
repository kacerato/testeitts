.class public Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;


# instance fields
.field public contents:[C

.field public destinationPath:Ljava/lang/String;

.field encoding:Ljava/lang/String;

.field public fileName:[C

.field private ignoreOptionalProblems:Z

.field public mainTypeName:[C

.field public module:[C

.field private moduleBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;


# direct methods
.method public constructor <init>([CLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->contents:[C

    if-eqz p6, :cond_0

    .line 5
    invoke-virtual {p6}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->module:[C

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 7
    sget-char p2, Ljava/io/File;->separatorChar:C

    const/4 p6, -0x1

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v2

    if-eq v2, p6, :cond_3

    .line 9
    invoke-static {p1, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v2

    if-eq v2, p6, :cond_3

    .line 11
    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 12
    :cond_3
    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->fileName:[C

    .line 13
    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    const/16 v0, 0x2e

    .line 14
    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    if-ne v0, p6, :cond_4

    .line 15
    array-length v0, p1

    .line 16
    :cond_4
    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->mainTypeName:[C

    .line 17
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->encoding:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->destinationPath:Ljava/lang/String;

    .line 19
    iput-boolean p5, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->ignoreOptionalProblems:Z

    return-void
.end method


# virtual methods
.method public getContents()[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->contents:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->fileName:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->encoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileCharContent(Ljava/io/File;Ljava/lang/String;)[C

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->contents:[C

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Ljava/io/IOException;Ljava/lang/String;)V

    throw v1
.end method

.method public getDestinationPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->destinationPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->fileName:[C

    return-object v0
.end method

.method public getMainTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->mainTypeName:[C

    return-object v0
.end method

.method public getModuleName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->module:[C

    return-object v0
.end method

.method public getPackageName()[[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ignoreOptionalProblems()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->ignoreOptionalProblems:Z

    return v0
.end method

.method public module(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->moduleBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->module:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->moduleBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Module should be known"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompilationUnit["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->fileName:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
