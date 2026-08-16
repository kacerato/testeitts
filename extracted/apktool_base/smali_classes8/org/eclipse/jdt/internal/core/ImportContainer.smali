.class public Lorg/eclipse/jdt/internal/core/ImportContainer;
.super Lorg/eclipse/jdt/internal/core/SourceRefElement;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IImportContainer;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/ImportContainer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getElementType()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/ImportContainer;->getImport(Ljava/lang/String;)Lorg/eclipse/jdt/core/IImportDeclaration;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getHandleUpdatingCountFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public getImport(Ljava/lang/String;)Lorg/eclipse/jdt/core/IImportDeclaration;
    .locals 3

    .line 1
    const-string v0, ".*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/ImportContainer;->getImport(Ljava/lang/String;Z)Lorg/eclipse/jdt/core/IImportDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public getImport(Ljava/lang/String;Z)Lorg/eclipse/jdt/core/IImportDeclaration;
    .locals 1

    .line 4
    new-instance v0, Lorg/eclipse/jdt/internal/core/ImportDeclaration;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/ImportDeclaration;-><init>(Lorg/eclipse/jdt/internal/core/ImportContainer;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getNameRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimaryElement(Z)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getImportContainer()Lorg/eclipse/jdt/core/IImportContainer;

    move-result-object p1

    return-object p1
.end method

.method public getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lorg/eclipse/jdt/core/ISourceReference;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/ISourceReference;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    check-cast v0, Lorg/eclipse/jdt/core/ISourceReference;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/ISourceReference;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v0

    new-instance v2, Lorg/eclipse/jdt/core/SourceRange;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v4

    invoke-interface {v0}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result v0

    add-int/2addr v4, v0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    return-object v2
.end method

.method public readableName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString(ILjava/lang/StringBuffer;)V
    .locals 3

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->peekAtInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    if-lez v1, :cond_2

    const-string v2, "\n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    aget-object v2, v0, v1

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toString(ILjava/lang/StringBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "<import container>"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p3, :cond_0

    const-string p1, " (not open)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method
