.class public Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;
.source "SourceFile"


# static fields
.field static final SecretLocalDeclarationName:[C


# instance fields
.field public block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

.field public expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field mergedSynchronizedInitStateIndex:I

.field preSynchronizedInitStateIndex:I

.field public scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

.field public synchroVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, " syncValue"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->SecretLocalDeclarationName:[C

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Block;II)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->preSynchronizedInitStateIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->mergedSynchronizedInitStateIndex:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->preSynchronizedInitStateIndex:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->synchroVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;

    invoke-direct {v3, p2, p0}, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v4, v5, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p2

    invoke-virtual {v0, v2, v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->mergedSynchronizedInitStateIndex:I

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p3, 0x20000000

    or-int/2addr p1, p3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    return-object p2
.end method

.method public completesByContinue()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->completesByContinue()Z

    move-result v0

    return v0
.end method

.method public doesNotCompleteNormally()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->doesNotCompleteNormally()Z

    move-result v0

    return v0
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->anyExceptionLabel:Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->isEmptyBlock()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->synchroVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2()V

    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->monitorenter()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->monitorexit()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eq v1, p1, :cond_8

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exitUserScope(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->synchroVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->synchroVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->monitorenter()V

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->enterAnyExceptionHandler(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eq v1, p1, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->synchroVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exitUserScope(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_3
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->synchroVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->monitorexit()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->exitAnyExceptionHandler()V

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->enterAnyExceptionHandler(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangThrowable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pushExceptionOnStack(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->preSynchronizedInitStateIndex:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->placeAllAnyExceptionHandler()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->synchroVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->monitorexit()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->exitAnyExceptionHandler()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->athrow()V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->mergedSynchronizedInitStateIndex:I

    if-eq v2, v4, :cond_6

    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->mergedSynchronizedInitStateIndex:I

    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eq v2, p1, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->synchroVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_7
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr p1, v3

    if-nez p1, :cond_8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :cond_8
    :goto_1
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public generateSubRoutineInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Ljava/lang/Object;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->synchroVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->monitorexit()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->exitAnyExceptionHandler()V

    const/4 p1, 0x0

    return p1
.end method

.method public isSubRoutineEscaping()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v0, "synchronized ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidNullToSynchronize(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalVoidExpression(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidTypeToSynchronize(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->SecretLocalDeclarationName:[C

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->synchroVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->synchroVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, v1, p1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->resolveUsing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 2

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
