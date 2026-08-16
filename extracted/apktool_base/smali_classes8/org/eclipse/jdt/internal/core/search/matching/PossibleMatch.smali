.class public Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;


# static fields
.field public static final NO_SOURCE_FILE:[C

.field public static final NO_SOURCE_FILE_NAME:Ljava/lang/String; = "NO SOURCE FILE NAME"


# instance fields
.field public autoModuleName:Ljava/lang/String;

.field public compoundName:[[C

.field public document:Lorg/eclipse/jdt/core/search/SearchDocument;

.field public nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

.field public openable:Lorg/eclipse/jdt/internal/core/Openable;

.field parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

.field public resource:Lorg/eclipse/core/resources/IResource;

.field private similarMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

.field private source:[C

.field private sourceFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->NO_SOURCE_FILE:[C

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/jdt/core/search/SearchDocument;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->resource:Lorg/eclipse/core/resources/IResource;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    new-instance p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-direct {p1, p5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;-><init>(Z)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getQualifiedName()[C

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x2e

    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->compoundName:[[C

    :cond_0
    return-void
.end method

.method private getQualifiedName()[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getNameWithoutJavaLikeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    check-cast v1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/ClassFile;

    const/16 v2, 0x2e

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getSourceFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NO SOURCE FILE NAME"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    check-cast v0, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->indexOfJavaLikeExtension(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    :cond_3
    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/ModularClassFile;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    const-string v1, "module-info"

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSourceFileName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->sourceFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "NO SOURCE FILE NAME"

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->sourceFileName:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/ClassFile;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->classFileReader(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/BinaryType;->sourceFileName(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->sourceFileName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    instance-of v0, v1, Lorg/eclipse/jdt/internal/core/ModularClassFile;

    if-eqz v0, :cond_3

    const-string v0, "module-info.java"

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->sourceFileName:Ljava/lang/String;

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->sourceFileName:Ljava/lang/String;

    return-object v0
.end method

.method private isModuleInfo(Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getMainTypeName()[C

    move-result-object p1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->MODULE_INFO_NAME:[C

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->source:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    :cond_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->compoundName:[[C

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->compoundName:[[C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result p1

    return p1
.end method

.method public getContents()[C
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->source:[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->NO_SOURCE_FILE:[C

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getSourceFileName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NO SOURCE FILE NAME"

    if-ne v0, v3, :cond_1

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object v0

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    instance-of v5, v4, Lorg/eclipse/jdt/internal/core/ClassFile;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->findSource(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;)[C

    move-result-object v2

    goto :goto_2

    :cond_2
    instance-of v0, v4, Lorg/eclipse/jdt/internal/core/ModularClassFile;

    if-eqz v0, :cond_6

    :try_start_0
    check-cast v4, Lorg/eclipse/jdt/internal/core/ModularClassFile;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/ModularClassFile;->getModule()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->findSource(Lorg/eclipse/jdt/core/IModuleDescription;)[C

    move-result-object v0

    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->autoModuleName:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "module "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->autoModuleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v0, "module-info.java"

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->sourceFileName:Ljava/lang/String;

    const-string v0, "module-info"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    filled-new-array {v0}, [[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->compoundName:[[C

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchDocument;->getCharContents()[C

    move-result-object v2

    :cond_6
    :goto_2
    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v1, v2

    :goto_3
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->source:[C

    :cond_8
    return-object v2
.end method

.method public getFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getMainTypeName()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->compoundName:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getModuleName()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getModuleName()[C

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/ClassFile;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()[[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->compoundName:[[C

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object v0

    :cond_0
    const/4 v3, 0x0

    sub-int/2addr v1, v2

    invoke-static {v0, v3, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v0

    return-object v0
.end method

.method public getSimilarMatch()Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->similarMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    return-object v0
.end method

.method public hasSimilarMatch()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->similarMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->source:[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->NO_SOURCE_FILE:[C

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p0}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->isModuleInfo(Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->compoundName:[[C

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->compoundName:[[C

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public ignoreOptionalProblems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setSimilarMatch(Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->isModuleInfo(Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->NO_SOURCE_FILE:[C

    :goto_0
    iput-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->source:[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->similarMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    if-nez v0, :cond_0

    const-string v0, "Fake PossibleMatch"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
