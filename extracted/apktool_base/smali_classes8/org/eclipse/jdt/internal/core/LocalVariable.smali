.class public Lorg/eclipse/jdt/internal/core/LocalVariable;
.super Lorg/eclipse/jdt/internal/core/SourceRefElement;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/ILocalVariable;


# static fields
.field public static final NO_LOCAL_VARIABLES:[Lorg/eclipse/jdt/core/ILocalVariable;


# instance fields
.field public annotations:[Lorg/eclipse/jdt/core/IAnnotation;

.field public annotationsOnDimensions:[[Lorg/eclipse/jdt/core/IAnnotation;

.field public declarationSourceEnd:I

.field public declarationSourceStart:I

.field private flags:I

.field private isParameter:Z

.field name:Ljava/lang/String;

.field public nameEnd:I

.field public nameStart:I

.field typeSignature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/ILocalVariable;

    sput-object v0, Lorg/eclipse/jdt/internal/core/LocalVariable;->NO_LOCAL_VARIABLES:[Lorg/eclipse/jdt/core/ILocalVariable;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIIILjava/lang/String;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    .line 2
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->name:Ljava/lang/String;

    .line 3
    iput p3, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->declarationSourceStart:I

    .line 4
    iput p4, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->declarationSourceEnd:I

    .line 5
    iput p5, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->nameStart:I

    .line 6
    iput p6, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->nameEnd:I

    .line 7
    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->typeSignature:Ljava/lang/String;

    .line 8
    invoke-direct {p0, p8}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)[Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->annotations:[Lorg/eclipse/jdt/core/IAnnotation;

    .line 9
    iput p9, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->flags:I

    .line 10
    iput-boolean p10, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->isParameter:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIIILjava/lang/String;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;IZ[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p10}, Lorg/eclipse/jdt/internal/core/LocalVariable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIIILjava/lang/String;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;IZ)V

    const/4 p1, 0x0

    if-nez p11, :cond_0

    move p2, p1

    goto :goto_0

    .line 12
    :cond_0
    array-length p2, p11

    :goto_0
    if-lez p2, :cond_2

    .line 13
    new-array p3, p2, [[Lorg/eclipse/jdt/core/IAnnotation;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->annotationsOnDimensions:[[Lorg/eclipse/jdt/core/IAnnotation;

    :goto_1
    if-lt p1, p2, :cond_1

    goto :goto_2

    .line 14
    :cond_1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->annotationsOnDimensions:[[Lorg/eclipse/jdt/core/IAnnotation;

    aget-object p4, p11, p1

    invoke-direct {p0, p4}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)[Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object p4

    aput-object p4, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private getAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/core/IAnnotation;
    .locals 9

    .line 5
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart()I

    move-result v5

    .line 6
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd()I

    move-result v6

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart()I

    move-result v7

    .line 8
    iget v8, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    .line 9
    new-instance v4, Ljava/lang/String;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    .line 10
    new-instance v0, Lorg/eclipse/jdt/internal/core/LocalVariable$1LocalVarAnnotation;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/LocalVariable$1LocalVarAnnotation;-><init>(Lorg/eclipse/jdt/internal/core/LocalVariable;Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIII)V

    .line 11
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    new-array v1, p2, [Lorg/eclipse/jdt/core/IMemberValuePair;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p2, :cond_1

    goto :goto_2

    .line 14
    :cond_1
    aget-object v3, p1, v2

    .line 15
    new-instance v4, Lorg/eclipse/jdt/internal/core/MemberValuePair;

    new-instance v5, Ljava/lang/String;

    iget-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/internal/core/MemberValuePair;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-direct {p0, v4, v3, v0}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getAnnotationMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/core/JavaElement;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v4, Lorg/eclipse/jdt/internal/core/MemberValuePair;->value:Ljava/lang/Object;

    .line 17
    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_2
    :goto_1
    sget-object v1, Lorg/eclipse/jdt/internal/core/Annotation;->NO_MEMBER_VALUE_PAIRS:[Lorg/eclipse/jdt/core/IMemberValuePair;

    .line 19
    :goto_2
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/LocalVariable$1LocalVarAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/core/IMemberValuePair;

    return-object v0
.end method

.method private getAnnotationMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/core/JavaElement;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/NullLiteral;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/Literal;

    if-eqz v0, :cond_1

    move-object p3, p2

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/Literal;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/ast/Literal;->computeConstant()V

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getAnnotationMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    iput v0, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;

    const/16 v2, 0x2e

    if-eqz v0, :cond_3

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object p2

    invoke-static {p2, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p2

    const/16 p3, 0xb

    iput p3, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_3
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz v0, :cond_4

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    invoke-static {p2, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p2

    const/16 p3, 0xc

    iput p3, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_4
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    const/16 v2, 0xd

    const/16 v3, 0xe

    if-eqz v0, :cond_6

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->FAKE_IDENTIFIER:[C

    if-ne p2, p3, :cond_5

    iput v3, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    return-object v1

    :cond_5
    iput v2, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_6
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v0, :cond_b

    const/4 v0, -0x1

    iput v0, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iget-object v4, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 p2, 0x0

    if-nez v4, :cond_7

    move v5, p2

    goto :goto_0

    :cond_7
    array-length v1, v4

    move v5, v1

    :goto_0
    new-array v6, v5, [Ljava/lang/Object;

    :goto_1
    if-lt p2, v5, :cond_9

    iget p2, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    if-ne p2, v0, :cond_8

    iput v3, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    :cond_8
    return-object v6

    :cond_9
    iget v1, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    aget-object v2, v4, p2

    invoke-direct {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getAnnotationMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/core/JavaElement;)Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v0, :cond_a

    iget v7, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    if-eq v7, v1, :cond_a

    iput v3, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    :cond_a
    aput-object v2, v6, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_b
    instance-of p3, p2, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;

    if-eqz p3, :cond_d

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;

    iget p3, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p3, p3, 0xfc0

    shr-int/lit8 p3, p3, 0x6

    if-ne p3, v2, :cond_c

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of p3, p2, Lorg/eclipse/jdt/internal/compiler/ast/Literal;

    if-eqz p3, :cond_c

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/Literal;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/Literal;->computeConstant()V

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getNegativeAnnotationMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    iput v3, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    return-object v1

    :cond_d
    iput v3, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    return-object v1
.end method

.method private getAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)[Lorg/eclipse/jdt/core/IAnnotation;
    .locals 4

    if-eqz p1, :cond_2

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-array v1, v0, [Lorg/eclipse/jdt/core/IAnnotation;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    aget-object v3, p1, v2

    invoke-direct {p0, v3, p0}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    :goto_1
    sget-object p1, Lorg/eclipse/jdt/internal/core/Annotation;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/core/IAnnotation;

    return-object p1
.end method


# virtual methods
.method public closing(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public createElementInfo()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/LocalVariable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/LocalVariable;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->declarationSourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/core/LocalVariable;->declarationSourceStart:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->declarationSourceEnd:I

    iget v3, v0, Lorg/eclipse/jdt/internal/core/LocalVariable;->declarationSourceEnd:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->nameStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/core/LocalVariable;->nameStart:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->nameEnd:I

    iget v0, v0, Lorg/eclipse/jdt/internal/core/LocalVariable;->nameEnd:I

    if-ne v2, v0, :cond_1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public exists()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->exists()Z

    move-result v0

    return v0
.end method

.method public generateInfos(Ljava/lang/Object;Ljava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0

    return-void
.end method

.method public getAnnotation(Ljava/lang/String;)Lorg/eclipse/jdt/core/IAnnotation;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->annotations:[Lorg/eclipse/jdt/core/IAnnotation;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getAnnotation(Ljava/lang/String;)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->annotations:[Lorg/eclipse/jdt/core/IAnnotation;

    aget-object v2, v2, v1

    .line 4
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IAnnotation;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/core/IAnnotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->annotations:[Lorg/eclipse/jdt/core/IAnnotation;

    return-object v0
.end method

.method public getClassFile()Lorg/eclipse/jdt/core/IClassFile;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/IMember;

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/eclipse/jdt/core/IClassFile;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/core/IClassFile;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    goto :goto_0
.end method

.method public getCorrespondingResource()Lorg/eclipse/core/resources/IResource;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclaringMember()Lorg/eclipse/jdt/core/IMember;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    check-cast v0, Lorg/eclipse/jdt/core/IMember;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getElementType()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public getFlags()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->flags:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getFlags(Lorg/eclipse/jdt/core/IJavaElement;)I

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getHandleUpdatingCountFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public getHandleMemento(Ljava/lang/StringBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getHandleMemento(Ljava/lang/StringBuffer;Z)V

    return-void
.end method

.method public getHandleMemento(Ljava/lang/StringBuffer;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleMemento(Ljava/lang/StringBuffer;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getHandleMementoDelimiter()C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p2, 0x21

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6
    iget v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->declarationSourceStart:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 8
    iget v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->declarationSourceEnd:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 10
    iget v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->nameStart:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 12
    iget v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->nameEnd:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 14
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->typeSignature:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 16
    iget v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->flags:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 18
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->isParameter:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 19
    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 21
    iget p2, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    return-void
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public getKey(Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/BinaryMethod;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/eclipse/jdt/internal/core/BinaryMethod;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getKey(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    check-cast v1, Lorg/eclipse/jdt/core/IMethod;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMethod;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p1, 0x23

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->isParameter:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    check-cast p1, Lorg/eclipse/jdt/core/IMethod;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMethod;->getParameters()[Lorg/eclipse/jdt/core/ILocalVariable;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-lt v1, v2, :cond_1

    goto :goto_2

    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/LocalVariable;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "#0#"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNameRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->nameEnd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getNameRange(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/SourceRange;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/SourceMapper;->UNKNOWN_RANGE:Lorg/eclipse/jdt/core/SourceRange;

    return-object v0

    :cond_1
    new-instance v1, Lorg/eclipse/jdt/core/SourceRange;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->nameStart:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    return-object v1
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getOpenableParent()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v3

    invoke-interface {v2}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v0, v3, v2}, Lorg/eclipse/jdt/core/IBuffer;->getText(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->declarationSourceEnd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getSourceRange(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/SourceRange;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/SourceMapper;->UNKNOWN_RANGE:Lorg/eclipse/jdt/core/SourceRange;

    return-object v0

    :cond_1
    new-instance v1, Lorg/eclipse/jdt/core/SourceRange;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->declarationSourceStart:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    return-object v1
.end method

.method public getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getDeclaringMember()Lorg/eclipse/jdt/core/IMember;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;

    move-result-object v0

    return-object v0
.end method

.method public getTypeSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->typeSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getUnderlyingResource()Lorg/eclipse/core/resources/IResource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getUnderlyingResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->nameStart:I

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->combineHashCodes(II)I

    move-result v0

    return v0
.end method

.method public isParameter()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable;->isParameter:Z

    return v0
.end method

.method public isStructureKnown()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public resource()Lorg/eclipse/core/resources/IResource;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_INFO:Ljava/lang/Object;

    if-eq p3, p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getTypeSignature()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->toStringName(Ljava/lang/StringBuffer;)V

    return-void
.end method
