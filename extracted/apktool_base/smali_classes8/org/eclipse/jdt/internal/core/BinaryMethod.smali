.class public Lorg/eclipse/jdt/internal/core/BinaryMethod;
.super Lorg/eclipse/jdt/internal/core/BinaryMember;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IMethod;


# instance fields
.field protected erasedParamaterTypes:[Ljava/lang/String;

.field protected exceptionTypes:[Ljava/lang/String;

.field protected parameterNames:[Ljava/lang/String;

.field protected parameterTypes:[Ljava/lang/String;

.field protected returnType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/BinaryMember;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    if-nez p3, :cond_0

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private getAnnotations(Lorg/eclipse/jdt/internal/core/JavaElement;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)[Lorg/eclipse/jdt/core/IAnnotation;
    .locals 5

    if-nez p2, :cond_0

    .line 4
    sget-object p1, Lorg/eclipse/jdt/internal/core/Annotation;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/core/IAnnotation;

    return-object p1

    .line 5
    :cond_0
    array-length v0, p2

    .line 6
    new-array v1, v0, [Lorg/eclipse/jdt/core/IAnnotation;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    .line 7
    :cond_1
    aget-object v3, p2, v2

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lorg/eclipse/jdt/internal/core/util/Util;->getAnnotation(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Ljava/lang/String;)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getErasedParameterType(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getErasedParameterTypes()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getErasedParameterTypes()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->erasedParamaterTypes:[Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->erasedParamaterTypes:[Ljava/lang/String;

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    if-eq v5, v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->erasedParamaterTypes:[Ljava/lang/String;

    return-object v0
.end method

.method private getRawParameterNames(I)[Ljava/lang/String;
    .locals 4

    .line 4
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "arg"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getReturnType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;)Ljava/lang/String;
    .locals 2

    .line 5
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v0

    :cond_0
    const/16 p1, 0x2f

    const/16 v1, 0x2e

    .line 7
    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p1

    .line 8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->getReturnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/ClassFile;->translatedName([C)[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private isOpenParenForMethod(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    add-int/lit8 v3, p3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lez v1, :cond_2

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(C)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    invoke-virtual {p1, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-nez v2, :cond_6

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_4

    const/4 v2, 0x1

    :cond_3
    :goto_1
    move p3, v3

    goto :goto_0

    :cond_4
    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(C)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(C)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_5
    move v1, p3

    goto :goto_1

    :cond_6
    const/16 p3, 0x3c

    if-ne v4, p3, :cond_3

    move v2, v0

    goto :goto_1
.end method

.method private splitParameters([CI)[[C
    .locals 13

    new-array v0, p2, [[C

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_0
    :goto_0
    if-lt v3, v1, :cond_3

    if-ge v4, p2, :cond_1

    add-int/lit8 v1, v4, 0x1

    invoke-static {p1, v6, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    aput-object p1, v0, v4

    move v4, v1

    :cond_1
    if-eq v4, p2, :cond_2

    new-array p1, v4, [[C

    invoke-static {v0, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p1

    :cond_2
    return-object v0

    :cond_3
    aget-char v7, p1, v3

    const/16 v8, 0x26

    if-eq v7, v8, :cond_9

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_8

    const/16 v8, 0x3c

    const/16 v9, 0x3e

    if-eq v7, v8, :cond_6

    if-eq v7, v9, :cond_5

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v1, :cond_0

    aget-char v7, p1, v3

    if-ne v7, v9, :cond_7

    goto :goto_0

    :cond_8
    if-nez v5, :cond_4

    if-ge v4, p2, :cond_4

    add-int/lit8 v7, v4, 0x1

    invoke-static {p1, v6, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v6

    aput-object v6, v0, v4

    add-int/lit8 v4, v3, 0x1

    move v6, v4

    move v4, v7

    goto :goto_1

    :cond_9
    add-int/lit8 v7, v3, 0x4

    if-ge v7, v1, :cond_4

    add-int/lit8 v8, v3, 0x1

    aget-char v9, p1, v8

    const/16 v10, 0x6c

    const/16 v11, 0x3b

    const/16 v12, 0x74

    if-ne v9, v10, :cond_a

    add-int/lit8 v10, v3, 0x2

    aget-char v10, p1, v10

    if-ne v10, v12, :cond_a

    add-int/lit8 v10, v3, 0x3

    aget-char v10, p1, v10

    if-ne v10, v11, :cond_a

    add-int/lit8 v5, v5, 0x1

    :goto_2
    move v3, v7

    goto :goto_0

    :cond_a
    const/16 v10, 0x67

    if-ne v9, v10, :cond_b

    add-int/lit8 v9, v3, 0x2

    aget-char v9, p1, v9

    if-ne v9, v12, :cond_b

    add-int/lit8 v3, v3, 0x3

    aget-char v3, p1, v3

    if-ne v3, v11, :cond_b

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_b
    move v3, v8

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/BinaryMethod;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getErasedParameterTypes()[Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/eclipse/jdt/internal/core/BinaryMethod;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getErasedParameterTypes()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->equalArraysOrNull([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/core/IAnnotation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    .line 2
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getTagBits()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;J)[Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public getAttachedJavadoc(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Member;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/BinaryType;->getJavadocContents(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/JavadocContents;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/JavadocContents;->getMethodDoc(Lorg/eclipse/jdt/core/IMethod;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultValue()Lorg/eclipse/jdt/core/IMemberValuePair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/core/MemberValuePair;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/MemberValuePair;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAnnotationMemberValue(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/core/MemberValuePair;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->value:Ljava/lang/Object;

    return-object v1
.end method

.method public getElementType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getExceptionTypes()[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->exceptionTypes:[Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getThrownExceptionTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->exceptionTypes:[Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->exceptionTypes:[Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-nez v1, :cond_5

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getExceptionTypeNames()[[C

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ClassFile;->translatedNames([[C)[[C

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->exceptionTypes:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_3

    goto :goto_2

    :cond_3
    aget-object v4, v0, v3

    array-length v5, v4

    add-int/lit8 v6, v5, 0x2

    new-array v6, v6, [C

    const/4 v7, 0x1

    invoke-static {v4, v2, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x4c

    aput-char v4, v6, v2

    add-int/2addr v5, v7

    const/16 v4, 0x3b

    aput-char v4, v6, v5

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->exceptionTypes:[Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->exceptionTypes:[Ljava/lang/String;

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->exceptionTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getModifiers()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    check-cast v1, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IType;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit16 v1, v0, 0x408

    if-nez v1, :cond_0

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getHandleMemento(Ljava/lang/StringBuffer;)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleMemento(Ljava/lang/StringBuffer;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getHandleMementoDelimiter()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x7e

    return v0
.end method

.method public getKey(Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0, p0, p1}, Lorg/eclipse/jdt/internal/core/NamedMember;->getKey(Lorg/eclipse/jdt/core/IMethod;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNumberOfParameters()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getParameterNames()[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterNames:[Ljava/lang/String;

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getMethodParameterNames(Lorg/eclipse/jdt/core/IMethod;)[[C

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Member;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-virtual {v4, v3, v5}, Lorg/eclipse/jdt/internal/core/SourceMapper;->findSource(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)[C

    move-result-object v6

    if-eqz v6, :cond_1

    check-cast v3, Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-virtual {v4, v3, v6, v5}, Lorg/eclipse/jdt/internal/core/SourceMapper;->mapSource(Lorg/eclipse/jdt/internal/core/NamedMember;[CLorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V

    :cond_1
    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getMethodParameterNames(Lorg/eclipse/jdt/core/IMethod;)[[C

    move-result-object v5

    :cond_2
    if-eqz v5, :cond_4

    array-length v0, v5

    new-array v3, v0, [Ljava/lang/String;

    :goto_0
    array-length v0, v5

    if-lt v1, v0, :cond_3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterNames:[Ljava/lang/String;

    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/String;

    aget-object v4, v5, v1

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    aput-object v0, v3, v1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    new-instance v4, Ljava/lang/String;

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->getParameterCount(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->isConstructor()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Member;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IType;->isMember()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v6

    invoke-static {v6}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_5

    add-int/2addr v4, v0

    goto :goto_1

    :cond_5
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IType;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    if-lt v4, v5, :cond_6

    add-int/lit8 v4, v4, -0x2

    :cond_6
    :goto_1
    if-eqz v4, :cond_13

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_7

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getRawParameterNames(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterNames:[Ljava/lang/String;

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Member;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v5

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfoCheckExistence(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v6

    iget-object v7, v6, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    monitor-enter v7

    :try_start_0
    iget-object v8, v6, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/core/JavadocContents;

    if-nez v8, :cond_8

    iget-object v6, v6, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    sget-object v9, Lorg/eclipse/jdt/internal/core/BinaryType;->EMPTY_JAVADOC:Lorg/eclipse/jdt/internal/core/JavadocContents;

    invoke-virtual {v6, v5, v9}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_8
    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_b

    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v5

    const-string v6, "org.eclipse.jdt.core.timeoutForParameterNameFromAttachedJavadoc"

    invoke-interface {v5, v6, v2}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    :cond_9
    const-wide/16 v5, 0x32

    :goto_3
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_a

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getRawParameterNames(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    new-instance v7, Lorg/eclipse/jdt/internal/core/BinaryMethod$1ParametersNameCollector;

    invoke-direct {v7, p0}, Lorg/eclipse/jdt/internal/core/BinaryMethod$1ParametersNameCollector;-><init>(Lorg/eclipse/jdt/internal/core/BinaryMethod;)V

    new-instance v8, Lorg/eclipse/jdt/internal/core/BinaryMethod$1;

    invoke-direct {v8, p0, v7}, Lorg/eclipse/jdt/internal/core/BinaryMethod$1;-><init>(Lorg/eclipse/jdt/internal/core/BinaryMethod;Lorg/eclipse/jdt/internal/core/BinaryMethod$1ParametersNameCollector;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    monitor-enter v7

    :try_start_2
    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    :goto_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/BinaryMethod$1ParametersNameCollector;->getJavadoc()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :goto_5
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_b
    sget-object v5, Lorg/eclipse/jdt/internal/core/BinaryType;->EMPTY_JAVADOC:Lorg/eclipse/jdt/internal/core/JavadocContents;

    if-eq v8, v5, :cond_c

    :try_start_5
    invoke-virtual {v8, p0}, Lorg/eclipse/jdt/internal/core/JavadocContents;->getMethodDoc(Lorg/eclipse/jdt/core/IMethod;)Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :catch_2
    :cond_c
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_11

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v8

    if-eqz v8, :cond_e

    :goto_7
    if-eq v7, v0, :cond_e

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, v8, v7}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->isOpenParenForMethod(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_8

    :cond_d
    add-int/2addr v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    goto :goto_7

    :cond_e
    :goto_8
    if-eq v7, v0, :cond_11

    const/16 v6, 0x29

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-eq v6, v0, :cond_11

    add-int/2addr v7, v2

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const-string v5, "&nbsp;"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/16 v6, 0x20

    new-array v7, v2, [C

    aput-char v6, v7, v1

    invoke-static {v3, v5, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([C[C[C)[C

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->splitParameters([CI)[[C

    move-result-object v5

    array-length v7, v5

    new-array v8, v7, [Ljava/lang/String;

    :goto_9
    if-lt v1, v7, :cond_f

    iput-object v8, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterNames:[Ljava/lang/String;

    return-object v8

    :cond_f
    aget-object v3, v5, v1

    invoke-static {v6, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v4

    if-eq v4, v0, :cond_10

    add-int/lit8 v9, v4, 0x1

    array-length v10, v3

    sub-int/2addr v10, v4

    sub-int/2addr v10, v2

    invoke-static {v3, v9, v10}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    goto :goto_a

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "arg"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    :goto_a
    add-int/2addr v1, v2

    goto :goto_9

    :cond_11
    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getArgumentNames()[[C

    move-result-object v0

    if-eqz v0, :cond_13

    array-length v3, v0

    if-ne v3, v4, :cond_13

    new-array v3, v4, [Ljava/lang/String;

    :goto_b
    if-lt v1, v4, :cond_12

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterNames:[Ljava/lang/String;

    return-object v3

    :cond_12
    new-instance v5, Ljava/lang/String;

    aget-object v6, v0, v1

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    aput-object v5, v3, v1

    add-int/2addr v1, v2

    goto :goto_b

    :goto_c
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_13
    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getRawParameterNames(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Lorg/eclipse/jdt/core/ILocalVariable;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    array-length v13, v0

    if-nez v13, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/LocalVariable;->NO_LOCAL_VARIABLES:[Lorg/eclipse/jdt/core/ILocalVariable;

    return-object v0

    :cond_0
    new-array v14, v13, [Lorg/eclipse/jdt/core/ILocalVariable;

    invoke-interface {v12}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getArgumentNames()[[C

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-ge v2, v13, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v15, v0

    goto :goto_3

    :cond_2
    :goto_1
    new-array v0, v13, [[C

    move v2, v1

    :goto_2
    if-lt v2, v13, :cond_7

    goto :goto_0

    :goto_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/Member;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    :goto_4
    move v10, v0

    goto :goto_5

    :cond_3
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->isMember()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :catch_0
    :cond_4
    move v10, v1

    :goto_5
    move v9, v1

    :goto_6
    if-lt v9, v13, :cond_5

    return-object v14

    :cond_5
    if-ge v9, v10, :cond_6

    new-instance v8, Lorg/eclipse/jdt/internal/core/LocalVariable;

    new-instance v2, Ljava/lang/String;

    aget-object v0, v15, v9

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    aget-object v7, v0, v9

    const/16 v16, -0x1

    const/16 v17, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v18, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    move/from16 v18, v9

    move/from16 v9, v16

    move/from16 v16, v10

    move/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jdt/internal/core/LocalVariable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIIILjava/lang/String;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;IZ)V

    move-object/from16 v0, v19

    aput-object v0, v14, v18

    sget-object v1, Lorg/eclipse/jdt/internal/core/Annotation;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/core/IAnnotation;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/LocalVariable;->annotations:[Lorg/eclipse/jdt/core/IAnnotation;

    move/from16 v19, v13

    goto :goto_7

    :cond_6
    move/from16 v18, v9

    move/from16 v16, v10

    new-instance v10, Lorg/eclipse/jdt/internal/core/LocalVariable;

    new-instance v2, Ljava/lang/String;

    aget-object v0, v15, v18

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    aget-object v7, v0, v18

    const/4 v9, -0x1

    const/16 v17, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v19, v13

    move-object v13, v10

    move/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jdt/internal/core/LocalVariable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIIILjava/lang/String;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;IZ)V

    aput-object v13, v14, v18

    sub-int v9, v18, v16

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/Member;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-interface {v12, v9, v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    invoke-direct {v11, v13, v0}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getAnnotations(Lorg/eclipse/jdt/internal/core/JavaElement;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)[Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v0

    iput-object v0, v13, Lorg/eclipse/jdt/internal/core/LocalVariable;->annotations:[Lorg/eclipse/jdt/core/IAnnotation;

    :goto_7
    add-int/lit8 v9, v18, 0x1

    move/from16 v10, v16

    move/from16 v13, v19

    goto :goto_6

    :cond_7
    move/from16 v19, v13

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "arg"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method public getRawParameterNames()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->getParameterCount(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getRawParameterNames(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->returnType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    .line 3
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getReturnType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->returnType:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->returnType:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/TypeParameter;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/TypeParameter;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTypeParameterSignatures()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object v0

    :cond_0
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->getTypeParameters([C)[[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeParameters()[Lorg/eclipse/jdt/core/ITypeParameter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getTypeParameterSignatures()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/TypeParameter;->NO_TYPE_PARAMETERS:[Lorg/eclipse/jdt/core/ITypeParameter;

    return-object v0

    :cond_0
    new-array v1, v1, [Lorg/eclipse/jdt/core/ITypeParameter;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_1

    return-object v1

    :cond_1
    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->getTypeVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/eclipse/jdt/internal/core/TypeParameter;

    invoke-direct {v4, p0, v3}, Lorg/eclipse/jdt/internal/core/TypeParameter;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getErasedParameterType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->combineHashCodes(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isConstructor()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->isConstructor()Z

    move-result v0

    return v0
.end method

.method public isLambdaMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMainMethod()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0, p0}, Lorg/eclipse/jdt/internal/core/Member;->isMainMethod(Lorg/eclipse/jdt/core/IMethod;)Z

    move-result v0

    return v0
.end method

.method public isResolved()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSimilar(Lorg/eclipse/jdt/core/IMethod;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lorg/eclipse/jdt/internal/core/Member;->areSimilarMethods(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public readableName()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/Member;->readableName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v1, v3

    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_1

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/core/ResolvedBinaryMethod;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/NamedMember;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/ResolvedBinaryMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    iput p1, v0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    return-object v0
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p3, :cond_0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->toStringName(Ljava/lang/StringBuffer;)V

    const-string p1, " (not open)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_INFO:Ljava/lang/Object;

    if-ne p3, p1, :cond_1

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->toStringName(Ljava/lang/StringBuffer;)V

    goto :goto_0

    :cond_1
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getModifiers()I

    move-result p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p4, "static "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->isConstructor()Z

    move-result p4

    if-nez p4, :cond_3

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getReturnType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p3, 0x20

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->toStringName(Ljava/lang/StringBuffer;I)V

    :goto_0
    return-void
.end method

.method public toStringName(Ljava/lang/StringBuffer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->toStringName(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public toStringName(Ljava/lang/StringBuffer;I)V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x28

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 5
    array-length v2, v0

    if-lez v2, :cond_3

    .line 6
    invoke-static {p2}, Lorg/eclipse/jdt/core/Flags;->isVarargs(I)Z

    move-result p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_1

    .line 7
    :try_start_0
    aget-object v4, v0, v3

    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    aget-object v4, v0, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    const-string v4, " ..."

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 12
    :cond_2
    aget-object v4, v0, v3

    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 13
    :catch_0
    const-string v4, "*** invalid signature: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/16 p2, 0x29

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 16
    iget p2, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    if-le p2, v1, :cond_4

    .line 17
    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    iget p2, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_4
    return-void
.end method
