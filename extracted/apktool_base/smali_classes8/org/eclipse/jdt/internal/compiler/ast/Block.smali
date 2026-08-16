.class public Lorg/eclipse/jdt/internal/compiler/ast/Block;
.super Lorg/eclipse/jdt/internal/compiler/ast/Statement;
.source "SourceFile"


# instance fields
.field public explicitDeclarations:I

.field public scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

.field public statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->explicitDeclarations:I

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez v0, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v3

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->enableSyntacticNullAnalysisForFields:Z

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v4, v4

    move v5, v1

    :goto_1
    if-lt v5, v4, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eq v0, p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p3, p2, p1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->checkUnclosedCloseables(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_2
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->explicitDeclarations:I

    if-lez p1, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz p2, :cond_4

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    :goto_2
    if-lt v1, p1, :cond_3

    goto :goto_3

    :cond_3
    aget-object v0, p2, v1

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->resetAssignmentInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object p3

    :cond_5
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v6, p3, v7, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->complainIfUnreachable(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IZ)I

    move-result v0

    const/4 v7, 0x2

    if-ge v0, v7, :cond_6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v6, v7, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    :cond_6
    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->mergeFinallyNullInfo(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    if-eqz v3, :cond_7

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public branchChainTo(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->branchChainTo(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    :cond_0
    return-void
.end method

.method public completesByContinue()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    if-lez v2, :cond_1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->completesByContinue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public doesNotCompleteNormally()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    if-lez v2, :cond_1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->doesNotCompleteNormally()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v1, :cond_2

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3, v4, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eq v1, p1, :cond_3

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exitUserScope(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public isEmptyBlock()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public printBody(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    return-object p2

    :cond_1
    aget-object v1, v1, v0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v0, "{\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->printBody(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->undocumentedEmptyBlock(II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->explicitDeclarations:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->explicitDeclarations:I

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;I)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public resolveUsing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->undocumentedEmptyBlock(II)V

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz p1, :cond_2

    array-length p1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/Block;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Block;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
