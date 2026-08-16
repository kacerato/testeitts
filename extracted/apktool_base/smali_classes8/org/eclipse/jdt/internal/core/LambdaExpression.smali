.class public Lorg/eclipse/jdt/internal/core/LambdaExpression;
.super Lorg/eclipse/jdt/internal/core/SourceType;
.source "SourceFile"


# instance fields
.field protected arrowPosition:I

.field elementInfo:Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

.field protected interphase:Ljava/lang/String;

.field lambdaMethod:Lorg/eclipse/jdt/internal/core/LambdaMethod;

.field protected sourceEnd:I

.field protected sourceStart:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;III)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/SourceType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    .line 11
    iput p4, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceEnd:I

    .line 12
    iput p5, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->arrowPosition:I

    .line 13
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->interphase:Ljava/lang/String;

    .line 14
    iput p3, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceStart:I

    invoke-static {p0, p2, p3, p4, p5}, Lorg/eclipse/jdt/internal/core/LambdaExpression;->makeTypeElementInfo(Lorg/eclipse/jdt/internal/core/LambdaExpression;Ljava/lang/String;III)Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->elementInfo:Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIILorg/eclipse/jdt/internal/core/LambdaMethod;)V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/SourceType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    .line 16
    iput p4, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceEnd:I

    .line 17
    iput p5, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->arrowPosition:I

    .line 18
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->interphase:Ljava/lang/String;

    .line 19
    iput p3, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceStart:I

    invoke-static {p0, p2, p3, p4, p5}, Lorg/eclipse/jdt/internal/core/LambdaExpression;->makeTypeElementInfo(Lorg/eclipse/jdt/internal/core/LambdaExpression;Ljava/lang/String;III)Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->elementInfo:Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    .line 20
    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->lambdaMethod:Lorg/eclipse/jdt/internal/core/LambdaMethod;

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 p3, 0x0

    aput-object p6, p2, p3

    iput-object p2, p1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/SourceType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    .line 2
    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceStart:I

    .line 3
    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceEnd:I

    .line 4
    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arrowPosition:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->arrowPosition:I

    .line 5
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/LambdaExpression;->findLambdaSuperType(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object p1

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-static {p1, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->interphase:Ljava/lang/String;

    .line 7
    iget p1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceEnd:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->arrowPosition:I

    invoke-static {p0, v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/LambdaExpression;->makeTypeElementInfo(Lorg/eclipse/jdt/internal/core/LambdaExpression;Ljava/lang/String;III)Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->elementInfo:Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    .line 8
    invoke-static {p0, p2}, Lorg/eclipse/jdt/internal/core/LambdaFactory;->createLambdaMethod(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)Lorg/eclipse/jdt/internal/core/LambdaMethod;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->lambdaMethod:Lorg/eclipse/jdt/internal/core/LambdaMethod;

    .line 9
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->elementInfo:Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p2, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method private static makeTypeElementInfo(Lorg/eclipse/jdt/internal/core/LambdaExpression;Ljava/lang/String;III)Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->setFlags(I)V

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->setHandle(Lorg/eclipse/jdt/core/IType;)V

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeStart(I)V

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeEnd(I)V

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceStart(I)V

    invoke-virtual {v0, p4}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceEnd(I)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->setSuperclassName([C)V

    invoke-virtual {v0, p0, p2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->addCategories(Lorg/eclipse/jdt/core/IJavaElement;[[C)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p0

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern([C)[C

    move-result-object p0

    filled-new-array {p0}, [[C

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->setSuperInterfaceNames([[C)V

    return-object v0
.end method


# virtual methods
.method public closing(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/LambdaExpression;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/core/LambdaExpression;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceStart:I

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Member;->getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Member;->getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;

    move-result-object p1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public findLambdaSuperType(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    new-instance v2, Lorg/eclipse/jdt/internal/core/LambdaExpression$1;

    invoke-direct {v2, p0, p1, v1}, Lorg/eclipse/jdt/internal/core/LambdaExpression$1;-><init>(Lorg/eclipse/jdt/internal/core/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)V

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getChildren()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->lambdaMethod:Lorg/eclipse/jdt/internal/core/LambdaMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public getElementInfo(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->elementInfo:Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    return-object p1
.end method

.method public getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x26

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x21

    if-eq p1, v3, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-array v9, p1, [Ljava/lang/String;

    new-array v10, p1, [Ljava/lang/String;

    move v3, v1

    :goto_0
    const/16 v5, 0x22

    if-lt v3, p1, :cond_b

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceStart:I

    iget v7, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceEnd:I

    iget v8, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->arrowPosition:I

    move-object v3, p0

    invoke-static/range {v3 .. v11}, Lorg/eclipse/jdt/internal/core/LambdaFactory;->createLambdaMethod(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/LambdaMethod;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->lambdaMethod:Lorg/eclipse/jdt/internal/core/LambdaMethod;

    new-array v3, p1, [Lorg/eclipse/jdt/core/ILocalVariable;

    move v4, v1

    :goto_1
    if-lt v4, p1, :cond_9

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->lambdaMethod:Lorg/eclipse/jdt/internal/core/LambdaMethod;

    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/LambdaMethod;->elementInfo:Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    iput-object v3, v4, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->arguments:[Lorg/eclipse/jdt/core/ILocalVariable;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->elementInfo:Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p1, v0, v1

    iput-object v0, v3, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->lambdaMethod:Lorg/eclipse/jdt/internal/core/LambdaMethod;

    return-object p1

    :cond_6
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->lambdaMethod:Lorg/eclipse/jdt/internal/core/LambdaMethod;

    return-object p1

    :cond_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->lambdaMethod:Lorg/eclipse/jdt/internal/core/LambdaMethod;

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->lambdaMethod:Lorg/eclipse/jdt/internal/core/LambdaMethod;

    invoke-virtual {v5, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/ILocalVariable;

    aput-object v5, v3, v4

    add-int/2addr v4, v0

    goto :goto_1

    :cond_a
    :goto_2
    return-object p0

    :cond_b
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v3

    add-int/2addr v3, v0

    goto/16 :goto_0

    :cond_e
    :goto_3
    return-object p0
.end method

.method public getHandleMemento(Ljava/lang/StringBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/jdt/internal/core/LambdaExpression;->getHandleMemento(Ljava/lang/StringBuffer;ZZ)V

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/LambdaExpression;->getHandleMementoDelimiter()C

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->appendEscapedDelimiter(Ljava/lang/StringBuffer;C)V

    return-void
.end method

.method public getHandleMemento(Ljava/lang/StringBuffer;ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleMemento(Ljava/lang/StringBuffer;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/LambdaExpression;->getHandleMementoDelimiter()C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->appendEscapedDelimiter(Ljava/lang/StringBuffer;C)V

    const/16 p2, 0x22

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->appendEscapedDelimiter(Ljava/lang/StringBuffer;C)V

    .line 6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->interphase:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const/16 p2, 0x21

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 8
    iget v0, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceStart:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 10
    iget v0, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceEnd:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 12
    iget p2, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->arrowPosition:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_1

    .line 13
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->lambdaMethod:Lorg/eclipse/jdt/internal/core/LambdaMethod;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/core/LambdaMethod;->getHandleMemento(Ljava/lang/StringBuffer;Z)V

    :cond_1
    return-void
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x29

    return v0
.end method

.method public getMethod()Lorg/eclipse/jdt/core/IMethod;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->lambdaMethod:Lorg/eclipse/jdt/internal/core/LambdaMethod;

    return-object v0
.end method

.method public getPrimaryElement(Z)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3

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

    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/LambdaExpression;->getHandleMemento(Ljava/lang/StringBuffer;ZZ)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;-><init>(Ljava/lang/String;)V

    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p0
.end method

.method public getSuperInterfaceTypeSignatures()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->interphase:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceStart:I

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->combineHashCodes(II)I

    move-result v0

    return v0
.end method

.method public isAnonymous()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLambda()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLocal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/ResolvedLambdaExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1, p0, v2}, Lorg/eclipse/jdt/internal/core/ResolvedLambdaExpression;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/core/LambdaExpression;Ljava/lang/String;)V

    return-object v0
.end method

.method public toStringName(Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->toStringName(Ljava/lang/StringBuffer;)V

    const-string v0, "<lambda #"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
