.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# instance fields
.field private parent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field private result:Z

.field private searchedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->searchedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->result:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    return-void
.end method

.method private endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 3

    .line 43
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->result:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->parent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->searchedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eq p1, v0, :cond_3

    .line 44
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eq v1, v0, :cond_3

    .line 45
    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-eqz v1, :cond_1

    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eq v2, v0, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    .line 46
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eq v1, v0, :cond_3

    .line 47
    :cond_2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->parent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_3
    return-void
.end method

.method private visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->searchedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 44
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->result:Z

    .line 45
    :cond_0
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->result:Z

    xor-int/2addr p1, v1

    return p1
.end method


# virtual methods
.method public containsCompletionNode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->result:Z

    return v0
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/AND_AND_Expression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/EqualExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/PostfixExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/PrefixExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public getCompletionNodeParent()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->parent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-object v0
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/AND_AND_Expression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/EqualExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/PostfixExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/PrefixExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    return p1
.end method
