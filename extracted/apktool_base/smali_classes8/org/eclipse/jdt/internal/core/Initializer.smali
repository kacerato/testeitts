.class public Lorg/eclipse/jdt/internal/core/Initializer;
.super Lorg/eclipse/jdt/internal/core/Member;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IInitializer;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/Member;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    if-lez p2, :cond_0

    iput p2, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/Initializer;

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

    const/16 v0, 0xa

    return v0
.end method

.method public getHandleMemento(Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleMemento(Ljava/lang/StringBuffer;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Initializer;->getHandleMementoDelimiter()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x7c

    return v0
.end method

.method public getNameRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimaryElement(Z)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-object p0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getPrimaryElement(Z)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IType;->getInitializer(I)Lorg/eclipse/jdt/core/IInitializer;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->combineHashCodes(II)I

    move-result v0

    return v0
.end method

.method public readableName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Member;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->readableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rename(Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 p3, 0x3c7

    invoke-direct {p2, p3, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "<initializer #"

    if-nez p3, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "> (not open)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_INFO:Ljava/lang/Object;

    const-string v0, ">"

    if-ne p3, p4, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    :try_start_0
    const-string p1, "<"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Member;->getFlags()I

    move-result p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "static "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string p1, "initializer #"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "<JavaModelException in toString of "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method
