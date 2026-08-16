.class public Lorg/eclipse/jdt/internal/core/PackageDeclaration;
.super Lorg/eclipse/jdt/internal/core/SourceRefElement;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IPackageDeclaration;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/PackageDeclaration;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/PackageDeclaration;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/PackageDeclaration;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getElementType()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public getNameRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getNameRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryElement(Z)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/PackageDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPackageDeclaration(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "package "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->toStringName(Ljava/lang/StringBuffer;)V

    if-nez p3, :cond_0

    const-string p1, " (not open)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method
