.class public abstract Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/Statement;
.source "SourceFile"


# instance fields
.field public initStateIndex:I

.field public label:[C

.field public subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

.field public targetLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;


# direct methods
.method public constructor <init>([CII)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->initStateIndex:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method


# virtual methods
.method public adjustStackSize(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 0

    return-void
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 11

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->generateExpressionResultCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    array-length v1, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    aget-object v5, v4, v3

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->targetLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->initStateIndex:I

    const/4 v10, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->generateSubRoutineInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Ljava/lang/Object;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    invoke-static {v0, v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->reenterAllExceptionHandlers([Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;ILorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->initStateIndex:I

    if-eq v0, v2, :cond_2

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->initStateIndex:I

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->targetLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->adjustStackSize(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    invoke-static {v0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->reenterAllExceptionHandlers([Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;ILorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->initStateIndex:I

    if-eq v0, v2, :cond_5

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->initStateIndex:I

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_5
    return-void
.end method

.method public generateExpressionResultCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 0

    return-void
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    return-void
.end method
