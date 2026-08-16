.class public Lorg/eclipse/jdt/internal/core/util/ResourceCompilationUnit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;


# instance fields
.field private contents:[C

.field private file:Lorg/eclipse/core/resources/IFile;

.field private fileName:[C

.field private mainTypeName:[C

.field private module:[C


# direct methods
.method public constructor <init>(Lorg/eclipse/core/resources/IFile;[C)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ResourceCompilationUnit;->file:Lorg/eclipse/core/resources/IFile;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/ResourceCompilationUnit;->module:[C

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/ResourceCompilationUnit;->fileName:[C

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    const-string v0, "\\"

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ge p2, v1, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ResourceCompilationUnit;->mainTypeName:[C

    return-void
.end method


# virtual methods
.method public getContents()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ResourceCompilationUnit;->contents:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ResourceCompilationUnit;->file:Lorg/eclipse/core/resources/IFile;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getResourceContentsAsCharArray(Lorg/eclipse/core/resources/IFile;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ResourceCompilationUnit;->contents:[C
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object v0
.end method

.method public getFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ResourceCompilationUnit;->fileName:[C

    return-object v0
.end method

.method public getMainTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ResourceCompilationUnit;->mainTypeName:[C

    return-object v0
.end method

.method public getModuleName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ResourceCompilationUnit;->module:[C

    return-object v0
.end method

.method public getPackageName()[[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ignoreOptionalProblems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
