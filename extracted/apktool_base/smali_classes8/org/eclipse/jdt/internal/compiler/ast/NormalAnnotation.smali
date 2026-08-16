.class public Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;
.super Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
.source "SourceFile"


# instance fields
.field public memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method


# virtual methods
.method public computeElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ELEMENT_VALUE_PAIRS:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    return-object v0

    :cond_1
    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    :goto_1
    if-lt v1, v0, :cond_2

    return-object v2

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->compilerElementPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->NoValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    :cond_0
    return-object v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-eqz v0, :cond_2

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-eqz v0, :cond_2

    .line 5
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 3

    .line 8
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-eqz v0, :cond_2

    .line 12
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_2
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
