.class Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# instance fields
.field allOtherElements:[[Lorg/eclipse/jdt/core/IJavaElement;

.field private annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field private final enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

.field inTypeOccurrencesCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

.field private localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

.field localElement:Lorg/eclipse/jdt/core/IJavaElement;

.field localElements:[Lorg/eclipse/jdt/core/IJavaElement;

.field private final locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

.field private final matchingNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field private final matchingNodes:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field private final nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

.field nodesCount:I

.field occurrencesCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

.field otherElements:[Lorg/eclipse/jdt/core/IJavaElement;

.field ptr:I

.field ptrs:[I

.field private typeInHierarchy:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Z)V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->nodesCount:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->ptr:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    iput-boolean p5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->typeInHierarchy:Z

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->occurrencesCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    iget-object p1, p4, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->inTypeOccurrencesCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->inTypeOccurrencesCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->matchingNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->matchingNodes:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto :goto_0

    :cond_0
    array-length p3, p2

    iput p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->nodesCount:I

    array-length p4, p2

    const/4 p5, 0x1

    if-ne p4, p5, :cond_1

    aget-object p2, p2, v0

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->matchingNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->matchingNodes:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->matchingNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->matchingNodes:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    new-array p1, p3, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->localElements:[Lorg/eclipse/jdt/core/IJavaElement;

    new-array p1, p3, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->ptrs:[I

    new-array p1, p3, [[Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->allOtherElements:[[Lorg/eclipse/jdt/core/IJavaElement;

    :goto_0
    return-void
.end method

.method private matchNode(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->matchingNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->matchingNodes:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    array-length v0, v0

    :goto_0
    if-lt v1, v0, :cond_2

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->matchingNodes:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private storeHandle(I)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->nodesCount:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-ne v1, v2, :cond_a

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->localElement:Lorg/eclipse/jdt/core/IJavaElement;

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez p1, :cond_1

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->localElement:Lorg/eclipse/jdt/core/IJavaElement;

    goto/16 :goto_7

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    check-cast v2, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->localElement:Lorg/eclipse/jdt/core/IJavaElement;

    goto/16 :goto_7

    :cond_4
    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->ptr:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->ptr:I

    if-nez p1, :cond_5

    new-array p1, v4, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->otherElements:[Lorg/eclipse/jdt/core/IJavaElement;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->otherElements:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v2, v1

    if-ne p1, v2, :cond_6

    add-int/lit8 p1, v2, 0xa

    new-array p1, p1, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->otherElements:[Lorg/eclipse/jdt/core/IJavaElement;

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->otherElements:[Lorg/eclipse/jdt/core/IJavaElement;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->ptr:I

    aput-object v0, p1, v1

    goto/16 :goto_7

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    check-cast v2, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    :cond_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->otherElements:[Lorg/eclipse/jdt/core/IJavaElement;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->ptr:I

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    move-object v0, p1

    :goto_2
    aput-object v0, v1, v2

    goto/16 :goto_7

    :cond_a
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->localElements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v5, v1, p1

    if-nez v5, :cond_e

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez v2, :cond_b

    aput-object v0, v1, p1

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    move-object v3, v0

    check-cast v3, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    check-cast v3, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    :cond_c
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->localElements:[Lorg/eclipse/jdt/core/IJavaElement;

    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    move-object v0, v1

    :goto_3
    aput-object v0, v2, p1

    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->ptrs:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    goto :goto_7

    :cond_e
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->ptrs:[I

    aget v5, v1, p1

    add-int/2addr v5, v2

    aput v5, v1, p1

    if-nez v5, :cond_f

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->allOtherElements:[[Lorg/eclipse/jdt/core/IJavaElement;

    new-array v2, v4, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object v2, v1, p1

    goto :goto_5

    :cond_f
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->allOtherElements:[[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v2, v1, p1

    array-length v4, v2

    if-ne v5, v4, :cond_10

    add-int/lit8 v6, v4, 0xa

    new-array v6, v6, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object v6, v1, p1

    invoke-static {v2, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez v1, :cond_11

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->allOtherElements:[[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object p1, v1, p1

    aput-object v0, p1, v5

    goto :goto_7

    :cond_11
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    move-object v3, v0

    check-cast v3, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    check-cast v3, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    :cond_12
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->allOtherElements:[[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object p1, v2, p1

    if-nez v1, :cond_13

    goto :goto_6

    :cond_13
    move-object v0, v1

    :goto_6
    aput-object v0, p1, v5

    :goto_7
    return-void
.end method


# virtual methods
.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-void
.end method

.method public getInTypeOccurrenceCountForBinaryAnonymousType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;[CLorg/eclipse/jdt/core/IJavaElement;I)I
    .locals 0

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    instance-of p1, p1, Lorg/eclipse/jdt/core/IMember;

    if-eqz p1, :cond_1

    check-cast p3, Lorg/eclipse/jdt/core/IMember;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->inTypeOccurrencesCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->get([C)I

    move-result p1

    const/high16 p3, -0x80000000

    const/4 p4, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, p4

    move p4, p1

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->inTypeOccurrencesCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    invoke-virtual {p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->put([CI)I

    :cond_1
    return p4
.end method

.method public getLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->nodesCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->localElement:Lorg/eclipse/jdt/core/IJavaElement;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->localElements:[Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v0, :cond_1

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOtherElements(I)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->nodesCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->otherElements:[Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz p1, :cond_0

    array-length v0, p1

    iget v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->ptr:I

    sub-int/2addr v0, v2

    if-ge v3, v0, :cond_0

    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->otherElements:[Lorg/eclipse/jdt/core/IJavaElement;

    add-int/2addr v3, v2

    invoke-static {p1, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->otherElements:[Lorg/eclipse/jdt/core/IJavaElement;

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->allOtherElements:[[Lorg/eclipse/jdt/core/IJavaElement;

    if-nez v0, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    aget-object v3, v0, p1

    :goto_0
    if-eqz v3, :cond_3

    array-length v4, v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->ptrs:[I

    aget v5, v5, p1

    sub-int/2addr v4, v2

    if-ge v5, v4, :cond_3

    add-int/lit8 v4, v5, 0x1

    new-array v4, v4, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object v4, v0, p1

    add-int/2addr v5, v2

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    :cond_3
    return-object v3
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 7

    .line 2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 3
    :try_start_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    if-nez v0, :cond_1

    .line 5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    move v4, p2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p2, -0x1

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iget-boolean v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->typeInHierarchy:Z

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 6
    :goto_2
    new-instance p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WrappedCoreException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WrappedCoreException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 7
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 8
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 9
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 10
    iget p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->nodesCount:I

    if-lez p2, :cond_0

    .line 11
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->matchNode(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 12
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->storeHandle(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 13
    iget p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->nodesCount:I

    if-lez p2, :cond_0

    .line 14
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->matchNode(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 15
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->storeHandle(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 16
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 17
    iget p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->nodesCount:I

    if-lez p2, :cond_0

    .line 18
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->matchNode(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 19
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->storeHandle(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 20
    iget p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->nodesCount:I

    if-lez p2, :cond_0

    .line 21
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->matchNode(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 22
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->storeHandle(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 9

    .line 23
    :try_start_0
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p2, p2, 0x200

    if-eqz p2, :cond_0

    .line 24
    sget-object p2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_5

    .line 25
    :cond_0
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    .line 26
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->occurrencesCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->get([C)I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v2, v0

    .line 27
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->getInTypeOccurrenceCountForBinaryAnonymousType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;[CLorg/eclipse/jdt/core/IJavaElement;I)I

    move-result v8

    .line 28
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->occurrencesCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    invoke-virtual {v0, p2, v8}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->put([CI)I

    .line 29
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->inTypeOccurrencesCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    .line 30
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;-><init>()V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->inTypeOccurrencesCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    .line 31
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    .line 32
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    const/4 v6, -0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;I)V

    goto :goto_4

    .line 33
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 34
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    move v6, v0

    goto :goto_3

    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    :goto_3
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;I)V

    .line 35
    :goto_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iput-object p2, p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->inTypeOccurrencesCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    .line 36
    :goto_5
    new-instance p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WrappedCoreException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WrappedCoreException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method
