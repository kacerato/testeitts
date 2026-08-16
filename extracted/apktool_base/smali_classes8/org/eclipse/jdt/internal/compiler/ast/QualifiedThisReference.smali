.class public Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;
.source "SourceFile"


# instance fields
.field currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field public qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;II)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;-><init>(II)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p3, 0x40000000    # 2.0f

    or-int/2addr p2, p3

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 0

    .line 1
    return-object p3
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 0

    .line 2
    return-object p3
.end method

.method public findCompatibleEnclosing(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)I
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p3, :cond_2

    invoke-static {p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    :goto_1
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_2
    :goto_2
    return p1
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 3

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-eqz p3, :cond_1

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p3, p3, 0x1fe0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Ljava/lang/Object;

    move-result-object p3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2, p3, p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    :cond_1
    :goto_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ".this"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 5

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0, v2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->findCompatibleEnclosing(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)I

    move-result v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v3, v3, -0x1fe1

    and-int/lit16 v4, v2, 0xff

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, v0, p0, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->noSuchEnclosingInstance(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_3
    invoke-virtual {p1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->tagAsAccessingEnclosingInstanceStateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    if-nez v2, :cond_4

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;->checkAccess(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->namedMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->receiver:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_1
    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    goto :goto_1

    :cond_7
    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_8
    :goto_3
    return-object v1
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 3
    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 1

    .line 4
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 6
    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
