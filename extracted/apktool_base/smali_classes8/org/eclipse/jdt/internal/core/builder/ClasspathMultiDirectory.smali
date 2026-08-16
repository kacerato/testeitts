.class public Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;
.super Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;
.source "SourceFile"


# instance fields
.field exclusionPatterns:[[C

.field hasIndependentOutputFolder:Z

.field public ignoreOptionalProblems:Z

.field inclusionPatterns:[[C

.field sourceFolder:Lorg/eclipse/core/resources/IContainer;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/core/resources/IContainer;[[C[[CZ)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;-><init>(Lorg/eclipse/core/resources/IContainer;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->exclusionPatterns:[[C

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->hasIndependentOutputFolder:Z

    iput-boolean p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->ignoreOptionalProblems:Z

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    array-length p2, p3

    if-nez p2, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    :cond_0
    if-eqz p4, :cond_1

    array-length p2, p4

    if-nez p2, :cond_1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->exclusionPatterns:[[C

    :cond_1
    return-void
.end method


# virtual methods
.method public acceptModuleInfo(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz p2, :cond_0

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    :cond_0
    return-void
.end method

.method public directoryList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0, p1}, Lorg/eclipse/core/resources/IContainer;->findMember(Ljava/lang/String;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/core/resources/IContainer;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-lt v5, v3, :cond_2

    if-ge v6, v1, :cond_1

    new-array v0, v6, [Ljava/lang/String;

    invoke-static {v2, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_2
    aget-object v7, v0, v5

    invoke-interface {v7}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    invoke-static {v8}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v7, v6, 0x1

    aput-object v8, v2, v6
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->ignoreOptionalProblems:Z

    iget-boolean v3, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->ignoreOptionalProblems:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->exclusionPatterns:[[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->exclusionPatterns:[[C

    invoke-static {v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public isExcluded(Lorg/eclipse/core/resources/IResource;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->exclusionPatterns:[[C

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->exclusionPatterns:[[C

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public module()Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-object v0
.end method

.method public setModule(Lorg/eclipse/jdt/internal/compiler/env/IModule;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source classpath directory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
