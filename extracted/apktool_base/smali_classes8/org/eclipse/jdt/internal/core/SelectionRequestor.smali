.class public Lorg/eclipse/jdt/internal/core/SelectionRequestor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;


# instance fields
.field protected elementIndex:I

.field protected elements:[Lorg/eclipse/jdt/core/IJavaElement;

.field protected handleFactory:Lorg/eclipse/jdt/internal/core/util/HandleFactory;

.field protected nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

.field protected openable:Lorg/eclipse/jdt/internal/core/Openable;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/NameLookup;Lorg/eclipse/jdt/internal/core/Openable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elementIndex:I

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->handleFactory:Lorg/eclipse/jdt/internal/core/util/HandleFactory;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    return-void
.end method

.method private acceptBinaryMethod(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IMethod;[CZ)V
    .locals 5

    .line 1
    const-string v0, "SELECTION - accept method("

    const-string v1, ")"

    if-eqz p4, :cond_3

    :try_start_0
    move-object p4, p2

    check-cast p4, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p4

    invoke-interface {p4}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/ISourceReference;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object p4

    .line 3
    invoke-interface {p4}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-interface {p4}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result p4

    if-eqz p4, :cond_2

    if-eqz p3, :cond_1

    .line 4
    new-instance p1, Lorg/eclipse/jdt/internal/core/ResolvedBinaryMethod;

    .line 5
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p4

    check-cast p4, Lorg/eclipse/jdt/internal/core/JavaElement;

    .line 6
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v3

    .line 8
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([C)V

    .line 9
    invoke-direct {p1, p4, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/ResolvedBinaryMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IMember;->getOccurrenceCount()I

    move-result p2

    iput p2, p1, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    move-object p2, p1

    .line 11
    :cond_1
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 12
    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p1, :cond_5

    .line 13
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 17
    sget-boolean p2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p2, :cond_5

    .line 18
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "SELECTION - accept type("

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 21
    new-instance p1, Lorg/eclipse/jdt/internal/core/ResolvedBinaryMethod;

    .line 22
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p4

    check-cast p4, Lorg/eclipse/jdt/internal/core/JavaElement;

    .line 23
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v3

    .line 25
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([C)V

    .line 26
    invoke-direct {p1, p4, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/ResolvedBinaryMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IMember;->getOccurrenceCount()I

    move-result p2

    iput p2, p1, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    move-object p2, p1

    .line 28
    :cond_4
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 29
    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p1, :cond_5

    .line 30
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_1
    return-void
.end method

.method private areTypeParametersCompatible(Lorg/eclipse/jdt/core/IMethod;[[C[[[C)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMethod;->getTypeParameters()[Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object p1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    if-nez p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    array-length v2, p2

    :goto_1
    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    move v2, v0

    :goto_2
    if-lt v2, v1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    aget-object v6, p2, v2

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v0

    :cond_4
    invoke-interface {v3}, Lorg/eclipse/jdt/core/ITypeParameter;->getBounds()[Ljava/lang/String;

    move-result-object v3

    aget-object v4, p3, v2

    if-nez v4, :cond_5

    move v4, v0

    goto :goto_3

    :cond_5
    array-length v4, v4

    :goto_3
    array-length v5, v3

    if-eq v5, v4, :cond_6

    return v0

    :cond_6
    move v5, v0

    :goto_4
    if-lt v5, v4, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    aget-object v6, v3, v5

    invoke-static {v6}, Lorg/eclipse/jdt/core/Signature;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3c

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_8
    new-instance v7, Ljava/lang/String;

    aget-object v8, p3, v2

    aget-object v8, v8, v5

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_9

    return v0

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catch_0
    return v0
.end method


# virtual methods
.method public acceptBinaryMethod(Lorg/eclipse/jdt/core/IType;[C[[C[[C[Ljava/lang/String;[[C[[[C[CZ)V
    .locals 0

    .line 33
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, p3, p5}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p2

    .line 34
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p6, :cond_2

    .line 35
    array-length p3, p6

    if-eqz p3, :cond_2

    .line 36
    invoke-interface {p1, p2}, Lorg/eclipse/jdt/core/IType;->findMethods(Lorg/eclipse/jdt/core/IMethod;)[Lorg/eclipse/jdt/core/IMethod;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 37
    array-length p4, p3

    const/4 p5, 0x1

    if-le p4, p5, :cond_2

    const/4 p4, 0x0

    .line 38
    :goto_0
    array-length p5, p3

    if-lt p4, p5, :cond_0

    return-void

    .line 39
    :cond_0
    aget-object p5, p3, p4

    invoke-direct {p0, p5, p6, p7}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->areTypeParametersCompatible(Lorg/eclipse/jdt/core/IMethod;[[C[[[C)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 40
    invoke-direct {p0, p1, p2, p8, p9}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->acceptBinaryMethod(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IMethod;[CZ)V

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 41
    :cond_2
    invoke-direct {p0, p1, p2, p8, p9}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->acceptBinaryMethod(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IMethod;[CZ)V

    :cond_3
    return-void
.end method

.method public acceptError(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 0

    return-void
.end method

.method public acceptField([C[C[CZ[CII)V
    .locals 8

    const-string v0, ")"

    const-string v1, "SELECTION - accept field("

    if-eqz p4, :cond_3

    const/16 v5, 0x1e

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p6

    move v7, p7

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->resolveTypeByLocation([C[CIII)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    if-eqz p1, :cond_6

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getFields()[Lorg/eclipse/jdt/core/IField;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    array-length p4, p1

    if-lt p2, p4, :cond_0

    goto/16 :goto_3

    :cond_0
    aget-object p4, p1, p2

    invoke-interface {p4}, Lorg/eclipse/jdt/core/ISourceReference;->getNameRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object p5

    invoke-interface {p5}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v2

    if-gt v2, p6, :cond_2

    invoke-interface {p5}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v2

    invoke-interface {p5}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result p5

    add-int/2addr v2, p5

    if-lt v2, p7, :cond_2

    invoke-interface {p4}, Lorg/eclipse/jdt/core/IField;->getElementName()Ljava/lang/String;

    move-result-object p5

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    return-void

    :cond_3
    const/16 p4, 0x1e

    invoke-virtual {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->resolveType([C[CI)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/core/IType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p5, :cond_5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lorg/eclipse/jdt/internal/core/ResolvedBinaryField;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IField;->getElementName()Ljava/lang/String;

    move-result-object p4

    new-instance p6, Ljava/lang/String;

    invoke-direct {p6, p5}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p2, p3, p4, p6}, Lorg/eclipse/jdt/internal/core/ResolvedBinaryField;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getOccurrenceCount()I

    move-result p1

    iput p1, p2, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    :goto_1
    move-object p1, p2

    goto :goto_2

    :cond_4
    new-instance p2, Lorg/eclipse/jdt/internal/core/ResolvedSourceField;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IField;->getElementName()Ljava/lang/String;

    move-result-object p4

    new-instance p6, Ljava/lang/String;

    invoke-direct {p6, p5}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p2, p3, p4, p6}, Lorg/eclipse/jdt/internal/core/ResolvedSourceField;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getOccurrenceCount()I

    move-result p1

    iput p1, p2, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean p2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p2, :cond_6

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public acceptLocalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V
    .locals 5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->sourceStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->findLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->sourceStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->findLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object p1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/eclipse/jdt/internal/core/ResolvedBinaryField;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IField;->getElementName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/ResolvedBinaryField;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getOccurrenceCount()I

    move-result p1

    iput p1, v1, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/eclipse/jdt/internal/core/ResolvedSourceField;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IField;->getElementName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/ResolvedSourceField;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getOccurrenceCount()I

    move-result p1

    iput p1, v1, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    :goto_1
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "SELECTION - accept field("

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public acceptLocalMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->findLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/16 v2, 0x9

    const-string v3, ")"

    if-ne v1, v2, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/core/IMethod;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object p1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/eclipse/jdt/internal/core/ResolvedBinaryMethod;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v2, v0, v4, v5, v6}, Lorg/eclipse/jdt/internal/core/ResolvedBinaryMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->getOccurrenceCount()I

    move-result p1

    iput p1, v2, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/eclipse/jdt/internal/core/ResolvedSourceMethod;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v2, v0, v4, v5, v6}, Lorg/eclipse/jdt/internal/core/ResolvedSourceMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->getOccurrenceCount()I

    move-result p1

    iput p1, v2, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    :goto_0
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "SELECTION - accept method("

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SELECTION - accept type("

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public acceptLocalMethodTypeParameter(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)V
    .locals 3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->findLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    check-cast v0, Lorg/eclipse/jdt/core/IMethod;

    new-instance v1, Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IMethod;->getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SELECTION - accept type parameter("

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public acceptLocalType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->sourceStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->findLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->sourceStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->findLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SELECTION - accept type("

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public acceptLocalTypeParameter(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)V
    .locals 3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->sourceStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->findLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->sourceStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->findLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    new-instance v1, Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IType;->getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SELECTION - accept type parameter("

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public acceptLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isLambdaSubscope()Z

    move-result v4

    if-eqz v4, :cond_0

    instance-of v4, v2, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz v4, :cond_0

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->handleFactory:Lorg/eclipse/jdt/internal/core/util/HandleFactory;

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget v7, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    move-object v8, v2

    check-cast v8, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->createElement(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ILorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Ljava/util/HashMap;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->findLocalElement(ILorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_5

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v4, v6}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->isTypeNameVar(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->typeSignature(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v13, v1

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v6, :cond_3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->typeSignature(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signableName()[C

    move-result-object v1

    invoke-static {v1, v5}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_3
    new-instance v1, Lorg/eclipse/jdt/internal/core/LocalVariable;

    move-object v7, v2

    check-cast v7, Lorg/eclipse/jdt/internal/core/JavaElement;

    new-instance v8, Ljava/lang/String;

    iget-object v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([C)V

    iget v9, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v10, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iget v11, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v12, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v14, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v15, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->getKind()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    :goto_4
    move/from16 v16, v5

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    :goto_5
    move-object v6, v1

    invoke-direct/range {v6 .. v16}, Lorg/eclipse/jdt/internal/core/LocalVariable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIIILjava/lang/String;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;IZ)V

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "SELECTION - accept local variable("

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public acceptMethod([C[CLjava/lang/String;[C[[C[[C[Ljava/lang/String;[[C[[[CZZ[CII)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v3, p5

    iget-object v11, v10, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    iget v12, v10, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elementIndex:I

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    iput-object v0, v10, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v13, -0x1

    iput v13, v10, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elementIndex:I

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz p11, :cond_0

    const/16 v0, 0x1e

    move-object/from16 p5, p0

    move-object/from16 p6, p1

    move-object/from16 p7, p2

    move/from16 p8, v0

    move/from16 p9, p13

    move/from16 p10, p14

    invoke-virtual/range {p5 .. p10}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->resolveTypeByLocation([C[CIII)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object/from16 v2, p4

    move/from16 v1, p13

    move/from16 v3, p14

    invoke-virtual {v10, v0, v2, v1, v3}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->acceptMethodDeclaration(Lorg/eclipse/jdt/core/IType;[CII)V

    goto/16 :goto_2

    :cond_0
    move-object/from16 v2, p4

    const/16 v0, 0x1e

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    invoke-virtual {v10, v1, v4, v0}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->resolveType([C[CI)Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    :try_start_0
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v4

    invoke-static {v4}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result v4
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v4, v15

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p10, :cond_1

    if-nez v4, :cond_1

    array-length v4, v3

    add-int/lit8 v5, v4, 0x1

    new-array v6, v5, [[C

    invoke-static {v3, v15, v6, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v5, [[C

    move-object/from16 v7, p6

    invoke-static {v7, v15, v3, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v5, v5, [Ljava/lang/String;

    move-object/from16 v8, p7

    invoke-static {v8, v15, v5, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aput-object v4, v6, v15

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getTypeQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aput-object v0, v3, v15

    invoke-static/range {p3 .. p3}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v15

    move-object v4, v3

    move-object v3, v6

    goto :goto_1

    :cond_1
    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v4, v7

    move-object v5, v8

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p12

    move/from16 v9, p10

    invoke-virtual/range {v0 .. v9}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->acceptBinaryMethod(Lorg/eclipse/jdt/core/IType;[C[[C[[C[Ljava/lang/String;[[C[[[C[CZ)V

    goto :goto_2

    :cond_2
    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p12

    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->acceptSourceMethod(Lorg/eclipse/jdt/core/IType;[C[[C[[C[Ljava/lang/String;[[C[[[C[C)V

    :cond_3
    :goto_2
    if-le v12, v13, :cond_5

    iget v0, v10, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elementIndex:I

    add-int v1, v0, v12

    add-int/lit8 v1, v1, 0x2

    iget-object v2, v10, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v3, v2

    if-le v1, v3, :cond_4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v14

    new-array v1, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v1, v10, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    add-int/2addr v0, v14

    invoke-static {v2, v15, v1, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    iget v1, v10, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elementIndex:I

    add-int/2addr v1, v14

    add-int/2addr v12, v14

    invoke-static {v11, v15, v0, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v10, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elementIndex:I

    add-int/2addr v0, v12

    iput v0, v10, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elementIndex:I

    :cond_5
    return-void
.end method

.method public acceptMethodDeclaration(Lorg/eclipse/jdt/core/IType;[CII)V
    .locals 6

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getMethods()[Lorg/eclipse/jdt/core/IMethod;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ")"

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean p2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "SELECTION - accept type("

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    aget-object v3, p2, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/ISourceReference;->getNameRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v5

    if-gt v5, p3, :cond_3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v5

    invoke-interface {v3}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result v3

    add-int/2addr v5, v3

    if-lt v5, p4, :cond_3

    aget-object v3, p2, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object p1, p2, v2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "SELECTION - accept method("

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    return-void
.end method

.method public acceptMethodTypeParameter([C[C[CII[CZII)V
    .locals 6

    const/16 v3, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->resolveTypeByLocation([C[CIII)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([C)V

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getMethods()[Lorg/eclipse/jdt/core/IMethod;

    move-result-object p3

    const/4 p7, 0x0

    :goto_0
    array-length p8, p3

    if-lt p7, p8, :cond_0

    goto :goto_1

    :cond_0
    aget-object p8, p3, p7

    invoke-interface {p8}, Lorg/eclipse/jdt/core/ISourceReference;->getNameRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object p8

    invoke-interface {p8}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result p9

    if-lt p9, p4, :cond_1

    invoke-interface {p8}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result p9

    invoke-interface {p8}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result p8

    add-int/2addr p9, p8

    if-gt p9, p5, :cond_1

    aget-object p8, p3, p7

    invoke-interface {p8}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_1

    aget-object p2, p3, p7
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :catch_0
    :goto_1
    const/4 p2, 0x0

    :goto_2
    const-string p3, ")"

    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean p2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p2, :cond_4

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p4, "SELECTION - accept type("

    invoke-virtual {p2, p4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p6}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/IMethod;->getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p4, "SELECTION - accept method("

    invoke-virtual {p1, p4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean p2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p2, :cond_4

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p4, "SELECTION - accept method type parameter("

    invoke-virtual {p2, p4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public acceptModule([C[CII)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->resolveModule([C)Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    return-void
.end method

.method public acceptPackage([C)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/NameLookup;->findPackageFragments(Ljava/lang/String;Z)[Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    :goto_0
    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, v0, p1

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "SELECTION - accept package("

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    aget-object v3, v0, p1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public acceptSourceMethod(Lorg/eclipse/jdt/core/IType;[C[[C[[C[Ljava/lang/String;[[C[[[C[C)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p8

    new-instance v3, Ljava/lang/String;

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IType;->getMethods()[Lorg/eclipse/jdt/core/IMethod;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, v4
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v6, v7, :cond_9

    iget v7, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elementIndex:I

    const/4 v2, -0x1

    const-string v8, ")"

    if-ne v7, v2, :cond_1

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean v1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "SELECTION - accept type("

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v9, "SELECTION - accept method("

    if-nez v7, :cond_3

    sget-boolean v1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v10, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    sget-object v3, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    iput-object v3, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    iput v2, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elementIndex:I

    move v11, v5

    :goto_1
    if-le v11, v7, :cond_4

    return-void

    :cond_4
    aget-object v2, v10, v11

    move-object v12, v2

    check-cast v12, Lorg/eclipse/jdt/core/IMethod;

    invoke-interface {v12}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v13

    move v2, v5

    :goto_2
    array-length v3, v13

    if-lt v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    aget-object v3, v13, v2

    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v2

    const/16 v6, 0x2e

    invoke-static {v4, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v2, v5

    :goto_3
    move-object/from16 v14, p6

    move-object/from16 v15, p7

    if-eqz v2, :cond_6

    invoke-direct {v0, v12, v14, v15}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->areTypeParametersCompatible(Lorg/eclipse/jdt/core/IMethod;[[C[[[C)Z

    move-result v3

    if-nez v3, :cond_6

    move v2, v5

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v2, :cond_7

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_8
    move-object/from16 v14, p6

    move-object/from16 v15, p7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v14, p6

    move-object/from16 v15, p7

    :try_start_1
    aget-object v7, v4, v6

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    aget-object v7, v4, v6

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    array-length v8, v1

    if-ne v7, v8, :cond_b

    aget-object v7, v4, v6

    if-eqz v2, :cond_a

    new-instance v8, Lorg/eclipse/jdt/internal/core/ResolvedSourceMethod;

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/eclipse/jdt/internal/core/ResolvedSourceMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IMember;->getOccurrenceCount()I

    move-result v7

    iput v7, v8, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    move-object v7, v8

    :cond_a
    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catch_0
    return-void
.end method

.method public acceptType(Lorg/eclipse/jdt/core/IType;)V
    .locals 4

    .line 14
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    new-instance v1, Lorg/eclipse/jdt/internal/core/ResolvedBinaryType;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/core/ResolvedBinaryType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getOccurrenceCount()I

    move-result p1

    iput p1, v1, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/core/ResolvedSourceType;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/core/ResolvedSourceType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getOccurrenceCount()I

    move-result p1

    iput p1, v1, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    .line 20
    :goto_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 21
    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 22
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "SELECTION - accept type("

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 24
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public acceptType([C[CIZ[CII)V
    .locals 6

    and-int/lit16 p3, p3, 0x6200

    const/16 v0, 0x200

    if-eq p3, v0, :cond_2

    const/16 v0, 0x2000

    if-eq p3, v0, :cond_1

    const/16 v0, 0x2200

    if-eq p3, v0, :cond_1

    const/16 v0, 0x4000

    if-eq p3, v0, :cond_0

    const/4 p3, 0x2

    :goto_0
    move v3, p3

    goto :goto_1

    :cond_0
    const/16 p3, 0x8

    goto :goto_0

    :cond_1
    const/16 p3, 0x10

    goto :goto_0

    :cond_2
    const/4 p3, 0x4

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p6

    move v5, p7

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->resolveTypeByLocation([C[CIII)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    goto :goto_4

    .line 2
    :cond_3
    invoke-virtual {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->resolveType([C[CI)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    if-eqz p1, :cond_6

    if-nez p5, :cond_4

    .line 3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getKey()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p5}, Ljava/lang/String;-><init>([C)V

    .line 4
    :goto_2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 5
    new-instance p3, Lorg/eclipse/jdt/internal/core/ResolvedBinaryType;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p4

    check-cast p4, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p4, p5, p2}, Lorg/eclipse/jdt/internal/core/ResolvedBinaryType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getOccurrenceCount()I

    move-result p1

    iput p1, p3, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    :goto_3
    move-object p1, p3

    goto :goto_4

    .line 7
    :cond_5
    new-instance p3, Lorg/eclipse/jdt/internal/core/ResolvedSourceType;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p4

    check-cast p4, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p4, p5, p2}, Lorg/eclipse/jdt/internal/core/ResolvedSourceType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getOccurrenceCount()I

    move-result p1

    iput p1, p3, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    goto :goto_3

    :cond_6
    :goto_4
    if-eqz p1, :cond_7

    .line 9
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 10
    sget-boolean p2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p2, :cond_7

    .line 11
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "SELECTION - accept type("

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 13
    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public acceptTypeParameter([C[C[CZII)V
    .locals 6

    if-eqz p4, :cond_0

    const/16 v3, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->resolveTypeByLocation([C[CIII)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 p4, 0x1e

    invoke-virtual {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->resolveType([C[CI)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/core/IType;->getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object p2

    const-string p3, ")"

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean p2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p2, :cond_2

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p4, "SELECTION - accept type("

    invoke-virtual {p2, p4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->addElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p4, "SELECTION - accept type parameter("

    invoke-virtual {p1, p4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public addElement(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elementIndex:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v3, v2

    if-ne v0, v3, :cond_0

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elementIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elementIndex:I

    aput-object p1, v0, v1

    return-void

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public findLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    instance-of v1, v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/ITypeRoot;->getElementAt(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/ClassFile;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lorg/eclipse/jdt/internal/core/ClassFile;

    .line 6
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getElementAtConsideringSibling(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public findLocalElement(ILorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isLambdaScope()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->findLocalElement(ILorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    .line 9
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->originalReferenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz p2, :cond_0

    .line 10
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/LambdaFactory;->createLambdaExpression(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)Lorg/eclipse/jdt/internal/core/LambdaExpression;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/LambdaExpression;->getMethod()Lorg/eclipse/jdt/core/IMethod;

    move-result-object p1

    :cond_0
    return-object p1

    .line 13
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->findLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public findMethodFromBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object v0

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->qualifiedSourceName()[C

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->resolveType([C[CI)Lorg/eclipse/jdt/core/IType;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    instance-of v1, p3, Lorg/eclipse/jdt/internal/core/BinaryType;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result p1

    invoke-static {p3, v1, p2, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->findMethod(Lorg/eclipse/jdt/core/IType;[C[Ljava/lang/String;Z)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p3, v0, p2}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getElements()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elementIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v2, v1

    if-eq v2, v0, :cond_0

    new-array v2, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    return-object v0
.end method

.method public resolveModule([C)Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/NameLookup;->findModule([C)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->module:Lorg/eclipse/jdt/core/IModuleDescription;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveType([C[CI)Lorg/eclipse/jdt/core/IType;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    const/16 v5, 0x2e

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    check-cast v3, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    check-cast v3, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz v1, :cond_0

    :try_start_0
    array-length v4, v1

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPackageDeclarations()[Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_2

    :cond_1
    if-eqz v1, :cond_5

    array-length v4, v1

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPackageDeclaration(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    invoke-static {v5, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v4

    array-length v8, v4

    if-lez v8, :cond_4

    new-instance v8, Ljava/lang/String;

    aget-object v9, v4, v6

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v8}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v3
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    array-length v8, v4

    const/4 v9, 0x1

    :goto_0
    if-lt v9, v8, :cond_3

    goto :goto_1

    :cond_3
    new-instance v10, Ljava/lang/String;

    aget-object v11, v4, v9

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v3, v10}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    move-object v3, v7

    :goto_1
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v4
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_6

    :catch_0
    :cond_5
    move-object v3, v7

    :catch_1
    :cond_6
    if-nez v3, :cond_f

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    const-string v8, ""

    if-eqz v1, :cond_8

    array-length v9, v1

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_3

    :cond_8
    :goto_2
    move-object v9, v8

    :goto_3
    invoke-virtual {v4, v9, v6}, Lorg/eclipse/jdt/internal/core/NameLookup;->findPackageFragments(Ljava/lang/String;Z)[Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v4

    if-nez v4, :cond_9

    move v9, v6

    goto :goto_4

    :cond_9
    array-length v9, v4

    :goto_4
    move v10, v6

    :goto_5
    if-lt v10, v9, :cond_a

    goto :goto_6

    :cond_a
    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/lang/String;-><init>([C)V

    aget-object v13, v4, v10

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v14, 0x0

    move/from16 v15, p3

    invoke-virtual/range {v11 .. v17}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZIZZ)Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    if-eqz v3, :cond_e

    :goto_6
    if-nez v3, :cond_f

    if-eqz v1, :cond_b

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>([C)V

    :cond_b
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    const/16 v2, 0x24

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :try_start_2
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildrenOfType(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_7
    if-lt v6, v4, :cond_c

    goto :goto_8

    :cond_c
    aget-object v2, v5, v6

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IType;->getTypeQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    aget-object v1, v5, v6

    return-object v1

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :catch_2
    return-object v7

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_f
    :goto_8
    return-object v3
.end method

.method public resolveTypeByLocation([C[CIII)Lorg/eclipse/jdt/core/IType;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    const/16 v5, 0x2e

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_8

    check-cast v3, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/Openable;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    check-cast v3, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz v1, :cond_0

    :try_start_0
    array-length v4, v1

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPackageDeclarations()[Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_2

    :cond_1
    if-eqz v1, :cond_8

    array-length v4, v1

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPackageDeclaration(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_2
    invoke-static {v5, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v4

    array-length v8, v4

    if-lez v8, :cond_7

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    move v8, v6

    move v9, v8

    :goto_0
    array-length v10, v3

    if-lt v8, v10, :cond_3

    goto :goto_1

    :cond_3
    aget-object v10, v3, v8

    invoke-interface {v10}, Lorg/eclipse/jdt/core/ISourceReference;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v10

    invoke-interface {v10}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v11

    move/from16 v12, p4

    if-gt v11, v12, :cond_5

    invoke-interface {v10}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v11

    invoke-interface {v10}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result v10

    add-int/2addr v11, v10

    move/from16 v10, p5

    if-lt v11, v10, :cond_6

    aget-object v11, v3, v8

    invoke-interface {v11}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/String;

    aget-object v14, v4, v9

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    array-length v11, v4

    add-int/lit8 v11, v11, -0x1

    if-ne v9, v11, :cond_4

    aget-object v3, v3, v8

    goto :goto_2

    :cond_4
    aget-object v3, v3, v8

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IType;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v3
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    move v8, v6

    goto :goto_0

    :cond_5
    move/from16 v10, p5

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    move-object v3, v7

    :goto_2
    if-eqz v3, :cond_9

    :try_start_1
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v4
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_9

    :catch_0
    :cond_8
    move-object v3, v7

    :catch_1
    :cond_9
    if-nez v3, :cond_12

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    const-string v8, ""

    if-eqz v1, :cond_b

    array-length v9, v1

    if-nez v9, :cond_a

    goto :goto_3

    :cond_a
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_4

    :cond_b
    :goto_3
    move-object v9, v8

    :goto_4
    invoke-virtual {v4, v9, v6}, Lorg/eclipse/jdt/internal/core/NameLookup;->findPackageFragments(Ljava/lang/String;Z)[Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v4

    if-nez v4, :cond_c

    move v9, v6

    goto :goto_5

    :cond_c
    array-length v9, v4

    :goto_5
    move v10, v6

    :goto_6
    if-lt v10, v9, :cond_d

    goto :goto_7

    :cond_d
    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/lang/String;-><init>([C)V

    aget-object v13, v4, v10

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v14, 0x0

    move/from16 v15, p3

    invoke-virtual/range {v11 .. v17}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZIZZ)Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    if-eqz v3, :cond_11

    :goto_7
    if-nez v3, :cond_12

    if-eqz v1, :cond_e

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>([C)V

    :cond_e
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    const/16 v2, 0x24

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :try_start_2
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildrenOfType(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_8
    if-lt v6, v4, :cond_f

    goto :goto_9

    :cond_f
    aget-object v2, v5, v6

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IType;->getTypeQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    aget-object v1, v5, v6

    return-object v1

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :catch_2
    return-object v7

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_12
    :goto_9
    return-object v3
.end method
