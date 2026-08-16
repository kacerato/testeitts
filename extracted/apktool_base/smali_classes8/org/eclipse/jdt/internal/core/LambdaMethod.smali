.class public Lorg/eclipse/jdt/internal/core/LambdaMethod;
.super Lorg/eclipse/jdt/internal/core/SourceMethod;
.source "SourceFile"


# instance fields
.field elementInfo:Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

.field private key:Ljava/lang/String;

.field private parameterNameStrings:[Ljava/lang/String;

.field private returnTypeString:Ljava/lang/String;

.field private sourceStart:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Lorg/eclipse/jdt/internal/core/SourceMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;)V

    iput p4, p0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->sourceStart:I

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->parameterNameStrings:[Ljava/lang/String;

    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->returnTypeString:Ljava/lang/String;

    iput-object p8, p0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->elementInfo:Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public closing(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/LambdaMethod;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/LambdaMethod;

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceMethod;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->sourceStart:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getElementInfo(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->elementInfo:Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    return-object p1
.end method

.method public getHandleMemento(Ljava/lang/StringBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/LambdaMethod;->getHandleMemento(Ljava/lang/StringBuffer;Z)V

    .line 20
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/LambdaMethod;->getHandleMementoDelimiter()C

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->appendEscapedDelimiter(Ljava/lang/StringBuffer;C)V

    return-void
.end method

.method public getHandleMemento(Ljava/lang/StringBuffer;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/LambdaExpression;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/LambdaExpression;->getHandleMemento(Ljava/lang/StringBuffer;ZZ)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/LambdaMethod;->getHandleMementoDelimiter()C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->appendEscapedDelimiter(Ljava/lang/StringBuffer;C)V

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const/16 p2, 0x21

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    array-length p2, p2

    move v1, v0

    :goto_0
    const/16 v2, 0x22

    if-lt v1, p2, :cond_2

    .line 7
    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->appendEscapedDelimiter(Ljava/lang/StringBuffer;C)V

    .line 8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->returnTypeString:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->appendEscapedDelimiter(Ljava/lang/StringBuffer;C)V

    .line 10
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->key:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->elementInfo:Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    iget-object v3, p2, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->arguments:[Lorg/eclipse/jdt/core/ILocalVariable;

    .line 12
    array-length v4, v3

    move p2, v0

    :goto_1
    if-lt p2, v4, :cond_1

    return-void

    .line 13
    :cond_1
    aget-object v1, v3, p2

    check-cast v1, Lorg/eclipse/jdt/internal/core/LocalVariable;

    .line 14
    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getHandleMemento(Ljava/lang/StringBuffer;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->appendEscapedDelimiter(Ljava/lang/StringBuffer;C)V

    .line 16
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->appendEscapedDelimiter(Ljava/lang/StringBuffer;C)V

    .line 18
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->parameterNameStrings:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->returnTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->returnTypeString:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/Signature;->createMethodSignature([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceMethod;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/LambdaMethod;->sourceStart:I

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->combineHashCodes(II)I

    move-result v0

    return v0
.end method

.method public isLambdaMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 0

    return-object p0
.end method
