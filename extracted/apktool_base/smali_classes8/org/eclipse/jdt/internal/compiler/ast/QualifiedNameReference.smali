.class public Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
.source "SourceFile"


# instance fields
.field public genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public indexOfFirstFieldBinding:I

.field public otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field otherDepths:[I

.field public otherGenericCasts:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public sourcePositions:[J

.field public syntheticReadAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

.field public syntheticWriteAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

.field public tokens:[[C


# direct methods
.method public constructor <init>([[C[JII)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->sourcePositions:[J

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method

.method private checkInternalNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)V
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v5, 0x2

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    if-nez p4, :cond_0

    iget p4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v2, 0xb

    if-eq p4, v2, :cond_2

    :cond_0
    const/high16 p4, 0x20000

    and-int/2addr p4, v0

    if-nez p4, :cond_1

    const/4 v6, 0x3

    move-object v2, p2

    move-object v3, p1

    move-object v4, v1

    move-object v5, p0

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordUsingNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_1
    invoke-virtual {p3, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsComparedEqualToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    const/4 p3, 0x4

    invoke-virtual {p2, v1, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->markFinallyNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    :cond_2
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz p3, :cond_5

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 p3, p3, 0x7

    const/4 p4, 0x1

    if-ne p3, p4, :cond_3

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-object v2, p3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->sourcePositions:[J

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    sub-int/2addr v0, p4

    aget-wide v3, p3, v0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->checkNullableFieldDereference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;JLorg/eclipse/jdt/internal/compiler/flow/FlowContext;I)Z

    :cond_3
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length p3, p3

    sub-int/2addr p3, p4

    const/4 p4, 0x0

    :goto_0
    if-lt p4, p3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v3, v0, p4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->sourcePositions:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    add-int/2addr v1, p4

    aget-wide v4, v0, v1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->checkNullableFieldDereference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;JLorg/eclipse/jdt/internal/compiler/flow/FlowContext;I)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public analyseAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    iget-wide v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v6, 0x300000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v5, v5, 0x7

    if-eq v5, v3, :cond_8

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    goto :goto_4

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p3, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    invoke-virtual {v7, v5, p0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_4
    iget v7, p3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_5

    iput v3, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    goto :goto_3

    :cond_5
    iget v7, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    if-nez v7, :cond_6

    iput v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2, p3, v3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->checkInternalNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)V

    :cond_7
    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_9

    if-eqz v4, :cond_a

    :cond_9
    invoke-virtual {p0, p1, v5, v1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_a
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isBlankFinal()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v6, :cond_b

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->needBlankFinalFieldInitializationCheck(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getInitsForFinalBlankInitializationCheck(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v5, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedBlankFinalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_b
    :goto_5
    if-eqz v0, :cond_c

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_10

    :cond_d
    :goto_6
    add-int/lit8 v0, v2, -0x1

    if-lt v1, v0, :cond_e

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v5, v1, v0

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v4, :cond_d

    :cond_f
    invoke-virtual {p0, p1, v5, v1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_6

    :cond_10
    :goto_7
    if-eqz p5, :cond_12

    if-nez v2, :cond_11

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isBlankFinal()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->needBlankFinalFieldInitializationCheck(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v5, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2, v0, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getInitsForFinalBlankInitializationCheck(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedBlankFinalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_11
    invoke-virtual {p0, p1, v5, v2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_12
    iget-object p4, p4, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p4, :cond_13

    invoke-virtual {p4, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    :cond_13
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result p4

    if-eqz p4, :cond_16

    if-nez v2, :cond_15

    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    if-ne p4, v3, :cond_15

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isBlankFinal()Z

    move-result p4

    if-eqz p4, :cond_15

    if-nez p5, :cond_15

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->allowBlankFinalFieldAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result p4

    if-eqz p4, :cond_15

    invoke-virtual {p3, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result p4

    if-eqz p4, :cond_14

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p2, v5, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateInitializationOfBlankFinalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/Reference;)V

    goto :goto_8

    :cond_14
    invoke-virtual {p2, v5, p0, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordSettingFinal(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :goto_8
    invoke-virtual {p3, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    goto :goto_9

    :cond_15
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p2, v5, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotAssignToFinalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    if-nez v2, :cond_16

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->allowBlankFinalFieldAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-virtual {p3, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :cond_16
    :goto_9
    const/4 p2, -0x1

    invoke-virtual {p0, p1, v5, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    return-object p3
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    return-object p1
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 8

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v0, p4

    goto :goto_1

    .line 3
    :cond_1
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    .line 4
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    iget-wide v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v6, 0x300000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v1

    .line 5
    :goto_2
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v5, v5, 0x7

    if-eq v5, v3, :cond_7

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    goto :goto_3

    .line 6
    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p3, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    invoke-virtual {v7, v5, p0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    .line 8
    :cond_5
    iget v7, p3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_6

    .line 9
    iput v3, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    goto :goto_3

    .line 10
    :cond_6
    iget v7, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    if-nez v7, :cond_a

    .line 11
    iput v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    goto :goto_3

    :cond_7
    if-nez v0, :cond_8

    if-eqz v4, :cond_9

    .line 12
    :cond_8
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1, v5, v1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    .line 13
    :cond_9
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    .line 14
    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    if-ne v6, v3, :cond_a

    .line 15
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isBlankFinal()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 16
    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->needBlankFinalFieldInitializationCheck(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 17
    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getInitsForFinalBlankInitializationCheck(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v6

    .line 18
    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 19
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v5, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedBlankFinalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    .line 20
    invoke-direct {p0, p1, p2, p3, v3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->checkInternalNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)V

    :cond_b
    if-eqz v0, :cond_c

    .line 21
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    .line 22
    :cond_c
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz p2, :cond_12

    move p2, v1

    :goto_4
    if-lt p2, v2, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v0, v2, -0x1

    if-ge p2, v0, :cond_f

    .line 23
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    add-int/lit8 v5, p2, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_5

    :cond_e
    move v0, v3

    goto :goto_5

    :cond_f
    move v0, p4

    :goto_5
    if-nez v0, :cond_10

    if-eqz v4, :cond_11

    .line 24
    :cond_10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v0, v0, p2

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p0, p1, v0, v5, p3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_12
    :goto_6
    return-object p3
.end method

.method public checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Z
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->sourcePositions:[J

    aget-wide v3, v1, v2

    :goto_0
    move-wide v4, v3

    :goto_1
    move-object v3, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_2
    array-length v3, v0

    sub-int/2addr v3, v1

    aget-object v0, v0, v3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->sourcePositions:[J

    array-length v4, v3

    sub-int/2addr v4, v1

    aget-wide v4, v3, v4

    goto :goto_1

    :goto_2
    if-eqz v3, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move-wide v3, v4

    move-object v5, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->checkNullableFieldDereference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;JLorg/eclipse/jdt/internal/compiler/flow/FlowContext;I)Z

    move-result v0

    return v0

    :cond_3
    return v2
.end method

.method public computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 5

    if-eqz p2, :cond_6

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    array-length v1, v0

    :goto_0
    if-nez v1, :cond_3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v1, -0x1

    aget-object v0, v0, v2

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, p3

    goto :goto_2

    :cond_4
    move-object v2, p2

    :goto_2
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericCast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->setGenericCast(ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    const/16 v3, 0x2e

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->shortReadableName()[C

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    invoke-virtual {v1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public generateAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Z)V
    .locals 9

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->generateReadSequence(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v4

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->syntheticWriteAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->getFinalReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->fieldStore(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZ)V

    if-eqz p4, :cond_0

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_0
    return-void
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 11

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v1, v2, :cond_0

    if-eqz p3, :cond_14

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->generateReadSequence(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v4

    if-eq v4, v2, :cond_2

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeObjectGetClass()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :cond_1
    if-eqz p3, :cond_14

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, v4, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    goto/16 :goto_8

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_4

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    if-eq v2, v5, :cond_3

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v2, :cond_4

    move v2, v5

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_0
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v6, :cond_5

    move v6, v4

    goto :goto_1

    :cond_5
    array-length v6, v6

    :goto_1
    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->getGenericCast(I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    if-nez p3, :cond_8

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v7

    iget-wide v7, v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v9, 0x300000

    cmp-long v7, v7, v9

    if-gez v7, :cond_8

    :cond_6
    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_8

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    if-nez v3, :cond_14

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeObjectGetClass()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    goto/16 :goto_8

    :cond_8
    :goto_2
    iget v7, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v8, :cond_a

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->arraylength()V

    if-eqz p3, :cond_9

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto/16 :goto_7

    :cond_9
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    goto :goto_7

    :cond_a
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->syntheticReadAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    const/4 v9, 0x0

    if-nez v8, :cond_b

    move-object v8, v9

    goto :goto_3

    :cond_b
    array-length v10, v8

    sub-int/2addr v10, v5

    aget-object v8, v8, v10

    :goto_3
    if-nez v8, :cond_d

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->getFinalReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    invoke-static {p1, v1, v8, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    if-eqz v3, :cond_c

    const/16 v3, -0x4e

    invoke-virtual {p2, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_4

    :cond_c
    const/16 v3, -0x4c

    invoke-virtual {p2, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_4

    :cond_d
    const/16 v2, -0x48

    invoke-virtual {p2, v2, v8, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_4
    if-eqz v6, :cond_e

    invoke-virtual {p2, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_e
    if-eqz p3, :cond_f

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_7

    :cond_f
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v2, p3, 0x400

    if-eqz v2, :cond_10

    move v4, v5

    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_11
    if-eqz v4, :cond_12

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->postConversionType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :goto_5
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    goto :goto_6

    :cond_12
    iget-object p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_5

    :goto_6
    const/4 p3, 0x7

    if-eq p1, p3, :cond_13

    const/16 p3, 0x8

    if-eq p1, p3, :cond_13

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    goto :goto_7

    :cond_13
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop2()V

    :goto_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->sourcePositions:[J

    array-length p3, p1

    sub-int/2addr p3, v5

    aget-wide v1, p1, p3

    const/16 p1, 0x20

    ushr-long/2addr v1, p1

    long-to-int p1, v1

    invoke-virtual {p2, v7, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :cond_14
    :goto_8
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public generateCompoundAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Expression;IIZ)V
    .locals 8

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->generateReadSequence(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v3

    invoke-virtual {p0, p1, v3, p6}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->reportOnlyUselesslyReadPrivateField(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v3, v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    if-eq v0, v2, :cond_0

    iget-object v0, v3, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->getFinalReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    invoke-static {p1, v3, v4, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->syntheticReadAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_1

    :cond_2
    array-length v6, v4

    sub-int/2addr v6, v2

    aget-object v4, v4, v6

    :goto_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v6

    const/16 v7, -0x48

    if-eqz v6, :cond_4

    if-nez v4, :cond_3

    const/16 v4, -0x4e

    invoke-virtual {p2, v4, v3, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v7, v4, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    if-nez v4, :cond_5

    const/16 v4, -0x4c

    invoke-virtual {p2, v4, v3, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2, v7, v4, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_9

    const/16 v4, 0xb

    if-eq v0, v4, :cond_9

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    array-length v1, v4

    :goto_3
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->getGenericCast(I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_7
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->One:Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;

    if-ne p3, v1, :cond_8

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p3, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    goto :goto_4

    :cond_8
    invoke-virtual {p3, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    :goto_4
    invoke-virtual {p2, p4, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sendOperator(II)V

    invoke-virtual {p2, p5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_5

    :cond_9
    invoke-virtual {p2, p1, v5, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateStringConcatenationAppend(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :goto_5
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->syntheticWriteAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->getFinalReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->fieldStore(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZ)V

    return-void
.end method

.method public generatePostIncrement(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Z)V
    .locals 8

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->generateReadSequence(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v3

    invoke-virtual {p0, p1, v3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->reportOnlyUselesslyReadPrivateField(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v3, v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    if-eq v0, v2, :cond_0

    iget-object v0, v3, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->getFinalReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    invoke-static {p1, v3, v4, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->syntheticReadAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move-object v2, v5

    goto :goto_1

    :cond_2
    array-length v6, v4

    sub-int/2addr v6, v2

    aget-object v2, v4, v6

    :goto_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v4

    const/16 v6, -0x48

    if-eqz v4, :cond_4

    if-nez v2, :cond_3

    const/16 v2, -0x4e

    invoke-virtual {p2, v2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v6, v2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    if-nez v2, :cond_5

    const/16 v0, -0x4c

    invoke-virtual {p2, v0, v3, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2, v6, v2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    array-length v1, v0

    :goto_3
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->getGenericCast(I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_4

    :cond_7
    iget-object v0, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_4
    if-eqz p4, :cond_b

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result p4

    const/16 v1, 0x8

    const/4 v2, 0x7

    if-eqz p4, :cond_9

    iget p4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq p4, v2, :cond_8

    if-eq p4, v1, :cond_8

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    goto :goto_5

    :cond_8
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2()V

    goto :goto_5

    :cond_9
    iget p4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq p4, v2, :cond_a

    if-eq p4, v1, :cond_a

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    goto :goto_5

    :cond_a
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2_x1()V

    :cond_b
    :goto_5
    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    iget-object p4, p3, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object p4, p4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p4, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    iget p4, p3, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->operator:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {p2, p4, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sendOperator(II)V

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->preAssignImplicitConversion:I

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->syntheticWriteAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->getFinalReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->fieldStore(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZ)V

    return-void
.end method

.method public generateReadSequence(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    array-length v5, v3

    :goto_0
    const/4 v6, 0x1

    if-eqz v5, :cond_1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v7

    iget-wide v7, v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v9, 0x300000

    cmp-long v7, v7, v9

    if-ltz v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v8, v8, 0x7

    const/4 v9, 0x0

    if-eq v8, v6, :cond_7

    const/4 v10, 0x2

    if-eq v8, v10, :cond_3

    return-object v9

    :cond_3
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v10, v8, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v3

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v3, v11, :cond_5

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    goto :goto_3

    :cond_5
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v11, 0x80000

    and-int/2addr v3, v11

    if-eqz v3, :cond_6

    invoke-virtual {v0, v8, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->checkEffectiveFinality(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :goto_3
    move-object v8, v9

    move-object v11, v10

    move-object v10, v8

    goto :goto_5

    :cond_7
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v8

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v12

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v12, v13, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    if-eqz v10, :cond_c

    :cond_a
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v12, v12, 0x1fe0

    if-eqz v12, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v12

    iget v13, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v13, v13, 0x1fe0

    shr-int/lit8 v13, v13, 0x5

    invoke-virtual {v12, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->enclosingTypeAt(I)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v12

    invoke-virtual {v1, v12, v6, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v13, v0, v12, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->generateReceiver(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :goto_4
    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v2, v3, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :cond_c
    :goto_5
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->sourcePositions:[J

    array-length v3, v3

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v12, :cond_22

    move v12, v4

    move-object v13, v8

    :goto_6
    if-lt v12, v5, :cond_d

    move-object v8, v13

    goto/16 :goto_15

    :cond_d
    iget v14, v2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v15, v15, v12

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v15

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherGenericCasts:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v9, :cond_e

    const/4 v9, 0x0

    goto :goto_7

    :cond_e
    aget-object v9, v9, v12

    :goto_7
    if-eqz v13, :cond_21

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v17

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v6

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v6, v4, :cond_11

    if-lez v12, :cond_f

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeObjectGetClass()V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :cond_f
    if-nez v17, :cond_10

    const/4 v4, 0x0

    invoke-virtual {v2, v6, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    :cond_10
    move/from16 v18, v5

    const/4 v13, 0x1

    goto/16 :goto_14

    :cond_11
    const/4 v4, 0x0

    const/16 v4, -0x4e

    if-eqz v17, :cond_19

    if-lez v12, :cond_12

    if-nez v7, :cond_19

    :cond_12
    if-eqz v10, :cond_13

    goto :goto_c

    :cond_13
    if-ne v13, v8, :cond_17

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v10

    if-eqz v10, :cond_18

    iget-object v10, v8, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    invoke-static {v10, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->syntheticReadAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-nez v6, :cond_14

    const/4 v6, 0x0

    goto :goto_8

    :cond_14
    aget-object v6, v6, v12

    :goto_8
    if-nez v6, :cond_16

    if-nez v12, :cond_15

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    const/4 v10, 0x1

    if-ne v6, v10, :cond_15

    const/4 v6, 0x1

    goto :goto_9

    :cond_15
    const/4 v6, 0x0

    :goto_9
    invoke-static {v1, v13, v11, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    invoke-virtual {v2, v4, v13, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_a

    :cond_16
    const/4 v4, 0x0

    const/16 v10, -0x48

    invoke-virtual {v2, v10, v6, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_a
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    goto :goto_b

    :cond_17
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeObjectGetClass()V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :cond_18
    :goto_b
    iget-object v4, v13, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v10, v4

    const/4 v4, 0x0

    goto :goto_12

    :cond_19
    :goto_c
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->syntheticReadAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-nez v6, :cond_1a

    const/4 v6, 0x0

    goto :goto_d

    :cond_1a
    aget-object v6, v6, v12

    :goto_d
    if-nez v6, :cond_1d

    if-nez v12, :cond_1b

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    const/4 v4, 0x1

    if-ne v6, v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_e

    :cond_1b
    const/4 v4, 0x0

    :goto_e
    invoke-static {v1, v13, v11, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v6, -0x4e

    invoke-virtual {v2, v6, v13, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_f
    const/4 v4, 0x0

    goto :goto_10

    :cond_1c
    const/16 v6, -0x4c

    invoke-virtual {v2, v6, v13, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_f

    :cond_1d
    const/4 v4, 0x0

    const/16 v11, -0x48

    invoke-virtual {v2, v11, v6, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_10
    if-eqz v10, :cond_1e

    invoke-virtual {v2, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_11

    :cond_1e
    iget-object v10, v13, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_11
    if-eqz v17, :cond_1f

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :cond_1f
    :goto_12
    sub-int v6, v3, v5

    add-int/2addr v6, v12

    const/4 v13, 0x1

    sub-int/2addr v6, v13

    if-ltz v6, :cond_20

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->sourcePositions:[J

    aget-wide v16, v11, v6

    const/16 v6, 0x20

    move/from16 v18, v5

    ushr-long v4, v16, v6

    long-to-int v4, v4

    invoke-virtual {v2, v14, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    goto :goto_13

    :cond_20
    move/from16 v18, v5

    :goto_13
    move-object v11, v10

    goto :goto_14

    :cond_21
    move/from16 v18, v5

    move v13, v6

    :goto_14
    add-int/lit8 v12, v12, 0x1

    move-object v10, v9

    move v6, v13

    move-object v13, v15

    move/from16 v5, v18

    const/4 v4, 0x0

    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_22
    :goto_15
    return-object v8
.end method

.method public generateReceiver(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    return-void
.end method

.method public genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCodegenBinding(I)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    return-object p1
.end method

.method public getFinalReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v0

    :goto_0
    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherGenericCasts:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, -0x2

    aget-object v2, v2, v3

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_2
    return-object v2

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_3
    return-object v0

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public getGenericCast(I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherGenericCasts:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getName()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    return-object v0
.end method

.method public getOtherFieldBindings(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 14

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v0, v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-object v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    if-ne v5, v0, :cond_2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz v4, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v4, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    :cond_1
    return-object v4

    :cond_2
    sub-int v6, v0, v5

    new-array v7, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    new-array v7, v6, [I

    iput-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherDepths:[I

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->constant(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v3, v3, 0x1fe0

    shr-int/lit8 v3, v3, 0x5

    :goto_1
    if-lt v5, v0, :cond_4

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->setDepth(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    add-int/lit8 v6, v6, -0x1

    aget-object v0, v0, v6

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_3

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_3

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    aget-object v7, v7, v5

    if-nez v4, :cond_5

    return-object v2

    :cond_5
    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v8, v8, -0x1fe1

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->sourcePositions:[J

    aget-wide v9, v8, v5

    const/16 v8, 0x20

    ushr-long v11, v9, v8

    long-to-int v8, v11

    long-to-int v9, v9

    invoke-virtual {v4, p1, v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    invoke-virtual {p1, v8, v7, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v7

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    sub-int v8, v5, v8

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aput-object v7, v9, v8

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherDepths:[I

    iget v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v10, v10, 0x1fe0

    shr-int/lit8 v10, v10, 0x5

    aput v10, v9, v8

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v8

    if-eqz v8, :cond_10

    if-eqz v1, :cond_7

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getErasureCompatibleType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v1

    invoke-static {v8, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    add-int/lit8 v9, v5, -0x1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericCast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->setGenericCast(ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_7
    add-int/lit8 v1, v5, 0x1

    if-ne v1, v0, :cond_8

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {p0, v7, p1, v8}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isFieldUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    invoke-virtual {v8, v7, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_9
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v8, v9, :cond_a

    invoke-virtual {v7, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v8

    iput-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :cond_a
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v8

    if-eqz v8, :cond_f

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_e

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isModuleScope()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v8

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v10

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v11

    iget v12, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v12, v12, 0x2000

    if-nez v12, :cond_c

    invoke-static {v11, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v12

    if-eqz v12, :cond_c

    iget v12, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    if-ltz v12, :cond_c

    iget v13, v7, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    if-lt v13, v12, :cond_c

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v12

    if-eqz v12, :cond_b

    iget-boolean v12, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-eqz v12, :cond_c

    :cond_b
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v12

    invoke-virtual {v12, p0, v5, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->forwardReference(Lorg/eclipse/jdt/internal/compiler/ast/Reference;ILorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :cond_c
    invoke-static {v11, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v12

    if-nez v12, :cond_d

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v11, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_d
    invoke-virtual {v7, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v8

    if-ne v8, v9, :cond_e

    iget-boolean v8, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-nez v8, :cond_e

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isInsideInitializerOrConstructor()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    invoke-virtual {v8, v7, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->enumStaticFieldUsedDuringInitialization(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_e
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    invoke-virtual {v8, p0, v7, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nonStaticAccessToStaticField(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;I)V

    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v5, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, p0, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->indirectAccessToStaticField(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :cond_f
    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v5, v1

    move-object v1, v7

    goto/16 :goto_1

    :cond_10
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v7, v5, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidField(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->setDepth(I)V

    return-object v2
.end method

.method public isEquivalent(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)Z
    .locals 5

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->isEquivalent(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v0, v0

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v2, v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_8

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v2, :cond_4

    return v1

    :cond_4
    array-length v0, v0

    array-length v2, v2

    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v4, v4, v2

    if-eq v3, v4, :cond_7

    return v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz p1, :cond_9

    return v1

    :cond_9
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public isFieldAccess()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public lastFieldBinding()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz v0, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v2, v2, 0x7

    if-ne v2, v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 3

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, p2, 0x1fe0

    if-nez v0, :cond_0

    const/high16 v0, 0x80000

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    and-int/lit8 p2, p2, 0x7

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->isUninitializedIn(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    if-eq v1, v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->emulateOuterAccess(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 4

    iget p4, p4, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v0, 0x1

    and-int/2addr p4, v0

    if-eqz p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p4

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq p4, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isPrivate()Z

    move-result p4

    const/4 v1, 0x0

    if-eqz p4, :cond_6

    if-gez p3, :cond_3

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez p4, :cond_2

    move p4, v1

    goto :goto_0

    :cond_2
    array-length p4, p4

    goto :goto_0

    :cond_3
    move p4, p3

    :goto_0
    invoke-virtual {p0, p4}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->getCodegenBinding(I)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p4

    iget-object v2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isNestmateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_e

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-ltz p3, :cond_4

    move v3, v0

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    invoke-virtual {v2, p4, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ZZ)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v2

    invoke-virtual {p0, p2, p3, v2}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->setSyntheticAccessor(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ILorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    if-ltz p3, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    invoke-virtual {p1, p4, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needToEmulateFieldAccess(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    return-void

    :cond_6
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isProtected()Z

    move-result p4

    if-eqz p4, :cond_e

    if-eqz p3, :cond_9

    if-gez p3, :cond_7

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherDepths:[I

    if-nez p4, :cond_7

    goto :goto_4

    :cond_7
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherDepths:[I

    if-gez p3, :cond_8

    array-length v2, p4

    sub-int/2addr v2, v0

    goto :goto_3

    :cond_8
    add-int/lit8 v2, p3, -0x1

    :goto_3
    aget p4, p4, v2

    goto :goto_5

    :cond_9
    :goto_4
    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p4, p4, 0x1fe0

    shr-int/lit8 p4, p4, 0x5

    :goto_5
    if-lez p4, :cond_e

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v3

    if-eq v2, v3, :cond_e

    if-gez p3, :cond_b

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_6

    :cond_a
    array-length v2, v2

    goto :goto_6

    :cond_b
    move v2, p3

    :goto_6
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->getCodegenBinding(I)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v3

    invoke-virtual {v3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->enclosingTypeAt(I)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p4

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-ltz p3, :cond_c

    move v3, v0

    goto :goto_7

    :cond_c
    move v3, v1

    :goto_7
    invoke-virtual {p4, v2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ZZ)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object p4

    invoke-virtual {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->setSyntheticAccessor(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ILorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    if-ltz p3, :cond_d

    goto :goto_8

    :cond_d
    move v0, v1

    :goto_8
    invoke-virtual {p1, v2, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needToEmulateFieldAccess(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    :cond_e
    return-void
.end method

.method public nullAnnotatedVariableBinding(Z)Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->isFieldAccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isNullable()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isNonNull()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v1, :cond_1

    return-object v0

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    :goto_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    return-object v0
.end method

.method public postConversionType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->getGenericCast(I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    :cond_1
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v2, v2, 0x4

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_1

    :pswitch_6
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_1

    :pswitch_7
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_1

    :pswitch_8
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    :goto_1
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-object p2

    :cond_0
    if-lez p1, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public reportError(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidField(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-nez v1, :cond_2

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unresolvableReference(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 14

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/4 v3, 0x7

    and-int/2addr v2, v3

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v2, p0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getBinding([[CILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v2, v1, 0x7

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eq v2, v5, :cond_0

    if-eq v2, v6, :cond_15

    if-eq v2, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x80

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    and-int/lit8 v0, v1, -0x8

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v6, 0x340000

    cmp-long v0, v0, v6

    if-gez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotReferToNonFinalOuterLocal(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1
    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v0, v10

    cmp-long v0, v0, v8

    if-eqz v0, :cond_2

    return-object v5

    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->getOtherFieldBindings(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_3

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v1, v10

    cmp-long v1, v1, v8

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v1, v0

    sub-int/2addr v1, v4

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-direct {v1, v2, v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v0, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {p1, p0, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidField(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v5

    :cond_3
    return-object v0

    :cond_4
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v3, :cond_14

    and-int/lit8 v1, v1, -0x8

    or-int/2addr v1, v4

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isModuleScope()Z

    move-result v12

    if-nez v12, :cond_8

    iget v12, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    if-eq v12, v4, :cond_5

    iget v12, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit16 v12, v12, 0x4000

    if-nez v12, :cond_5

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_5
    invoke-static {v6, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget v12, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    if-ltz v12, :cond_8

    iget v13, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    if-lt v13, v12, :cond_8

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v12

    if-eqz v12, :cond_6

    iget-boolean v12, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-eqz v12, :cond_8

    :cond_6
    iget-boolean v12, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    if-eqz v12, :cond_7

    iget v12, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v13, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    if-eq v12, v13, :cond_8

    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v12

    iget v13, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    sub-int/2addr v13, v4

    invoke-virtual {v12, p0, v13, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->forwardReference(Lorg/eclipse/jdt/internal/compiler/ast/Reference;ILorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :cond_8
    iget v12, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    iget-object v13, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v13, v13

    if-ne v12, v13, :cond_9

    iget v12, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_0

    :cond_9
    move v12, v7

    :goto_0
    invoke-virtual {p0, v2, p1, v12}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isFieldUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v12

    invoke-virtual {v12, v2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_a
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isModuleScope()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {v6, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v6, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v3

    if-ne v3, v0, :cond_c

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-nez v0, :cond_c

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isInsideInitializerOrConstructor()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->enumStaticFieldUsedDuringInitialization(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_c
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    if-le v0, v4, :cond_10

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->indirectAccessToStaticField(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    goto :goto_1

    :cond_d
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    if-ne v1, v4, :cond_f

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    const/high16 v3, 0x400000

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v1

    const/16 v3, 0x100

    if-eq v1, v3, :cond_e

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unqualifiedFieldAccess(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :cond_e
    if-nez v0, :cond_f

    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, v1, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->tagAsAccessingEnclosingInstanceStateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    :cond_f
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    if-gt v1, v4, :cond_13

    if-eqz v0, :cond_10

    goto :goto_3

    :cond_10
    :goto_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->getOtherFieldBindings(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_12

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v1, v10

    cmp-long v1, v1, v8

    if-eqz v1, :cond_12

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v1, v1

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_2

    :cond_11
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v1, v0

    sub-int/2addr v1, v4

    aget-object v0, v0, v1

    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-direct {v1, v2, v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v0, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {p1, p0, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidField(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v5

    :cond_12
    return-object v0

    :cond_13
    :goto_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->staticFieldAccessToNonStaticVariable(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    return-object v5

    :cond_14
    and-int/lit8 v0, v1, -0x8

    or-int/2addr v0, v6

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_15
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1, v0, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_16
    :goto_4
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->reportError(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method public setFieldIndex(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    return-void
.end method

.method public setGenericCast(ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherGenericCasts:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v0, v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherGenericCasts:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherGenericCasts:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    add-int/lit8 p1, p1, -0x1

    aput-object p2, v0, p1

    :goto_0
    return-void
.end method

.method public setSyntheticAccessor(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ILorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 1

    if-gez p2, :cond_0

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->syntheticWriteAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->syntheticReadAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    array-length p1, p1

    add-int/2addr v0, p1

    :goto_0
    new-array p1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->syntheticReadAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->syntheticReadAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    aput-object p3, p1, p2

    :goto_1
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    .line 2
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 3
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    .line 4
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method

.method public unboundReferenceErrorName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
