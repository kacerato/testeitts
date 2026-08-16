.class public Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ast/OperatorIds;


# static fields
.field public static final READ:I = 0x0

.field public static final WRITE:I = 0x1


# instance fields
.field public genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public isLabel:Z

.field public syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public token:[C


# direct methods
.method public constructor <init>([CJ)V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    const/16 p1, 0x20

    ushr-long v0, p2, p1

    long-to-int p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    long-to-int p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method


# virtual methods
.method public analyseAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const/4 v7, 0x2

    if-eqz p5, :cond_1

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v8, v8, 0x7

    if-eq v8, v6, :cond_5

    if-eq v8, v7, :cond_2

    :cond_1
    :goto_1
    move-object/from16 v8, p4

    goto :goto_2

    :cond_2
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v3, v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v9

    invoke-virtual {v9, v8, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_3
    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    if-eq v9, v6, :cond_1

    if-eqz v4, :cond_4

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_4

    iput v6, v8, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    goto :goto_1

    :cond_4
    if-gtz v9, :cond_1

    sub-int/2addr v9, v6

    iput v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    goto :goto_1

    :cond_5
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isBlankFinal()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->needBlankFinalFieldInitializationCheck(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    invoke-virtual {v2, v9, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getInitsForFinalBlankInitializationCheck(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v9

    invoke-virtual {v9, v8, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedBlankFinalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_6
    invoke-virtual {v0, v1, v3, v6}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)V

    goto :goto_1

    :goto_2
    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v8, :cond_7

    invoke-virtual {v8, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v3

    :cond_7
    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v8, v8, 0x7

    if-eq v8, v6, :cond_15

    if-eq v8, v7, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v6

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v7

    if-nez v7, :cond_9

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_3

    :cond_9
    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v7, v7, -0x9

    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :goto_3
    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v7

    const/high16 v8, 0x80000

    if-nez v7, :cond_a

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_b

    :cond_a
    iget-wide v9, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v11, -0x801

    and-long/2addr v9, v11

    iput-wide v9, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    if-nez v6, :cond_b

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    invoke-virtual {v7, v5, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotReferToNonEffectivelyFinalOuterLocal(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_b
    const-wide/16 v9, 0x400

    const-wide/16 v11, 0x0

    if-nez v6, :cond_c

    iget-wide v13, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v15, 0x800

    and-long/2addr v15, v13

    cmp-long v7, v15, v11

    if-eqz v7, :cond_c

    and-long/2addr v13, v9

    cmp-long v7, v13, v11

    if-nez v7, :cond_c

    invoke-virtual {v2, v5, v0, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordSettingFinal(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_4

    :cond_c
    if-eqz v6, :cond_13

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v6, v6, 0x1fe0

    if-nez v6, :cond_12

    if-eqz v4, :cond_d

    if-nez p5, :cond_e

    :cond_d
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isBlankFinal()Z

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotAssignToFinalLocal(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_4

    :cond_f
    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateInitializationOfFinalLocal(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_4

    :cond_10
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_11

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotAssignToFinalOuterLocal(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_4

    :cond_11
    invoke-virtual {v2, v5, v0, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordSettingFinal(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_4

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotAssignToFinalOuterLocal(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_4

    :cond_13
    iget-wide v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    and-long/2addr v6, v9

    cmp-long v2, v6, v11

    if-eqz v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parameterAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_14
    :goto_4
    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto :goto_6

    :cond_15
    invoke-virtual {v0, v1, v3, v5}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)V

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v5

    if-eqz v5, :cond_18

    if-nez p5, :cond_17

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isBlankFinal()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->allowBlankFinalFieldAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateInitializationOfBlankFinalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/Reference;)V

    goto :goto_5

    :cond_16
    invoke-virtual {v2, v4, v0, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordSettingFinal(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :goto_5
    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    goto :goto_6

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotAssignToFinalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_6

    :cond_18
    if-nez p5, :cond_1a

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isNonNull()Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :cond_1a
    :goto_6
    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    return-object v3
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    return-object p1
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 6

    .line 2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    .line 5
    :cond_1
    iget v2, p3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_2

    .line 6
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    goto :goto_0

    .line 7
    :cond_2
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    if-nez v1, :cond_6

    .line 8
    iput p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    goto :goto_0

    :cond_3
    if-nez p4, :cond_4

    .line 9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v4, 0x300000

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    .line 10
    :cond_4
    invoke-virtual {p0, p1, p3, v1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)V

    .line 11
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    .line 12
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isBlankFinal()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->needBlankFinalFieldInitializationCheck(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getInitsForFinalBlankInitializationCheck(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p2

    .line 14
    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 15
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p2, v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedBlankFinalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_6
    :goto_0
    if-eqz p4, :cond_7

    .line 16
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_7
    return-object p3
.end method

.method public checkFieldAccess(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, -0x8

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isModuleScope()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v5, v6, :cond_4

    iget-boolean v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-nez v5, :cond_4

    invoke-static {v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isInsideInitializerOrConstructor()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->enumStaticFieldUsedDuringInitialization(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    const/high16 v4, 0x400000

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v2

    const/16 v4, 0x100

    if-eq v2, v4, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unqualifiedFieldAccess(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :cond_2
    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->staticFieldAccessToNonStaticVariable(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_3
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->tagAsAccessingEnclosingInstanceStateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    :cond_4
    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-virtual {p0, v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isFieldUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_5
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    if-ltz v2, :cond_7

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    if-lt v4, v2, :cond_7

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-eqz v1, :cond_7

    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->forwardReference(Lorg/eclipse/jdt/internal/compiler/ast/Reference;ILorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x20000000

    or-int/2addr p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_7
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method public checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Z
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p3

    iget-boolean p3, p3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_0

    move-object v3, p3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    int-to-long v0, p3

    const/16 p3, 0x20

    shl-long/2addr v0, p3

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v4, p3

    add-long/2addr v4, v0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->checkNullableFieldDereference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;JLorg/eclipse/jdt/internal/compiler/flow/FlowContext;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 6

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p3

    goto :goto_1

    :cond_3
    move-object v1, p2

    :goto_1
    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->boxing(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericCast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    const/16 v4, 0x2e

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->shortReadableName()[C

    move-result-object v5

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v4

    invoke-direct {v3, v4, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    invoke-virtual {v1, p0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public generateAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Z)V
    .locals 14

    move-object v8, p0

    move-object v1, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isCompactableOperation()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v4, v4, 0xfc0

    shr-int/lit8 v5, v4, 0x6

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v6, :cond_2

    move-object v6, v4

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-ne v7, v12, :cond_2

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v4, :cond_0

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_0
    aget-object v2, v4, v3

    goto :goto_0

    :goto_1
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    move-object v0, v6

    move-object v1, p1

    move-object/from16 v2, p2

    move v6, v7

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->generateCompoundAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;IIZ)V

    if-eqz v11, :cond_1

    iget v0, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v9, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v7, :cond_6

    const/16 v7, 0xe

    if-eq v5, v7, :cond_3

    const/16 v7, 0xf

    if-ne v5, v7, :cond_6

    :cond_3
    move-object v7, v6

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object v12, v7, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-object v13, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-ne v12, v13, :cond_6

    iget-object v12, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v12, v13, :cond_6

    iget v12, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v12, v12, 0xff

    shr-int/lit8 v12, v12, 0x4

    const/16 v13, 0xb

    if-eq v12, v13, :cond_6

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x4

    if-eq v6, v13, :cond_6

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v6, :cond_4

    :goto_2
    move-object v3, v2

    goto :goto_3

    :cond_4
    aget-object v2, v6, v3

    goto :goto_2

    :goto_3
    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    move-object v0, v7

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->generateCompoundAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;IIZ)V

    if-eqz v11, :cond_5

    iget v0, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v9, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_5
    return-void

    :cond_6
    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/4 v4, 0x7

    and-int/2addr v0, v4

    if-eq v0, v3, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    const/4 v5, -0x1

    const/16 v6, 0x8

    if-eq v2, v5, :cond_b

    iget-object v2, v10, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, p1, v9, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v10, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v2, :cond_8

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->innermostCastedExpression()Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne v1, v2, :cond_8

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v9, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_8
    invoke-virtual {v9, v0, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_9

    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationStartPC(I)V

    :cond_9
    if-eqz v11, :cond_a

    iget v0, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v9, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_a
    :goto_4
    return-void

    :cond_b
    iget-object v2, v10, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v5, v7, :cond_c

    if-eqz v11, :cond_f

    iget v0, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v9, v5, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    goto :goto_5

    :cond_c
    invoke-virtual {v2, p1, v9, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz v11, :cond_d

    iget v0, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v9, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_5

    :cond_d
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v0, v4, :cond_e

    if-eq v0, v6, :cond_e

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    goto :goto_5

    :cond_e
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop2()V

    :cond_f
    :goto_5
    return-void

    :cond_10
    iget v0, v9, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v5

    if-nez v5, :cond_12

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v5, v5, 0x1fe0

    if-eqz v5, :cond_11

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v5

    iget v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v6, v6, 0x1fe0

    shr-int/lit8 v6, v6, 0x5

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->enclosingTypeAt(I)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v3, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v9, v6, p0, v5, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_6

    :cond_11
    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->generateReceiver(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :cond_12
    :goto_6
    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v9, v0, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, v9, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_13

    move-object v5, v2

    goto :goto_7

    :cond_13
    aget-object v0, v0, v3

    move-object v5, v0

    :goto_7
    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->fieldStore(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZ)V

    if-eqz v11, :cond_14

    iget v0, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v9, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_14
    return-void
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 8

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v1, v2, :cond_1

    if-eqz p3, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_1
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v3, v1, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v6, :cond_7

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    const/4 v7, -0x1

    if-ne v3, v7, :cond_4

    if-nez p3, :cond_3

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_3
    iput v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, p2, v4}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    :cond_4
    if-nez p3, :cond_5

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_5

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_5
    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_6

    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->checkEffectiveFinality(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    move-result-object v1

    invoke-virtual {p2, v1, p0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto/16 :goto_3

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v3

    if-eq v3, v2, :cond_9

    if-eqz p3, :cond_8

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, v3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    :cond_8
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_9
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v2

    const/16 v3, -0x48

    if-eqz v2, :cond_d

    if-nez p3, :cond_a

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    invoke-static {v2, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v2, :cond_a

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_a
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v2, :cond_c

    aget-object v2, v2, v5

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    invoke-virtual {p2, v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_3

    :cond_c
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, v1, v2, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    const/16 v3, -0x4e

    invoke-virtual {p2, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_3

    :cond_d
    if-nez p3, :cond_e

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v2, :cond_e

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_e
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x1fe0

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v2

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v7, v7, 0x1fe0

    shr-int/lit8 v7, v7, 0x5

    invoke-virtual {v2, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->enclosingTypeAt(I)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {p1, v2, v6, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7, p0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_1

    :cond_f
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->generateReceiver(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :goto_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v2, :cond_11

    aget-object v2, v2, v5

    if-nez v2, :cond_10

    goto :goto_2

    :cond_10
    invoke-virtual {p2, v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_3

    :cond_11
    :goto_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, v1, v2, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    const/16 v3, -0x4c

    invoke-virtual {p2, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_12

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_12
    if-eqz p3, :cond_13

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_6

    :cond_13
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v1, p3, 0x400

    if-eqz v1, :cond_14

    move v5, v6

    :cond_14
    if-eqz v5, :cond_15

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_15
    if-eqz v5, :cond_16

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->postConversionType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :goto_4
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    goto :goto_5

    :cond_16
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_4

    :goto_5
    const/4 p3, 0x7

    if-eq p1, p3, :cond_17

    const/16 p3, 0x8

    if-eq p1, p3, :cond_17

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    goto :goto_6

    :cond_17
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop2()V

    :goto_6
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public generateCompoundAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Expression;IIZ)V
    .locals 9

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    .line 3
    invoke-static {p1, v0, p6}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->reportOnlyUselesslyReadLocal(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1, v0, p6}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->reportOnlyUselesslyReadPrivateField(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Z)V

    .line 5
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_2
    aget-object v0, v0, v1

    goto :goto_1

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 6
    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->generateCompoundAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;IIZ)V

    return-void
.end method

.method public generateCompoundAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;IIZ)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v0, p4

    move/from16 v3, p5

    .line 7
    iget v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/4 v5, 0x7

    and-int/2addr v4, v5

    const/16 v6, 0x8

    const/16 v7, 0xb

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v4, v12, :cond_11

    if-eq v4, v9, :cond_0

    goto/16 :goto_4

    .line 8
    :cond_0
    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    .line 9
    iget-object v13, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v13, v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v14, 0xa

    const/4 v15, -0x1

    if-eq v13, v14, :cond_3

    if-eq v13, v7, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v2, v1, v8, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateStringConcatenationAppend(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    if-eqz p7, :cond_2

    .line 11
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    .line 12
    :cond_2
    invoke-virtual {v2, v4, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    return-void

    .line 13
    :cond_3
    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    .line 14
    iget v14, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    if-ne v14, v15, :cond_6

    if-nez p7, :cond_5

    .line 15
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v13, v3, :cond_4

    .line 16
    invoke-virtual {v0, v1, v2, v11}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    :cond_4
    return-void

    .line 17
    :cond_5
    iput v12, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    .line 18
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v0, v1, v10}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw v0

    .line 19
    :cond_6
    sget-object v14, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v13, v14, :cond_d

    .line 20
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v14

    const/16 v9, 0x9

    if-eq v14, v9, :cond_d

    .line 21
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v9

    if-eq v9, v6, :cond_d

    const/16 v9, 0xd

    if-eq v3, v9, :cond_a

    const/16 v9, 0xe

    if-eq v3, v9, :cond_7

    goto :goto_0

    .line 22
    :cond_7
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result v9

    int-to-short v13, v9

    if-eq v9, v13, :cond_8

    goto :goto_0

    .line 23
    :cond_8
    iget v0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    invoke-virtual {v2, v0, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iinc(II)V

    if-eqz p7, :cond_9

    .line 24
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_9
    return-void

    .line 25
    :cond_a
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result v9

    neg-int v9, v9

    int-to-short v13, v9

    if-eq v9, v13, :cond_b

    goto :goto_0

    .line 26
    :cond_b
    iget v0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    invoke-virtual {v2, v0, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iinc(II)V

    if-eqz p7, :cond_c

    .line 27
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_c
    return-void

    .line 28
    :cond_d
    :goto_0
    iget v9, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    if-ne v9, v15, :cond_10

    .line 29
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-nez p7, :cond_f

    .line 30
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v3, v4, :cond_e

    .line 31
    invoke-virtual {v0, v1, v2, v11}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    :cond_e
    return-void

    .line 32
    :cond_f
    iput v12, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    .line 33
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v0, v1, v10}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw v0

    .line 34
    :cond_10
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto :goto_4

    .line 35
    :cond_11
    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v9

    const/16 v13, -0x48

    if-eqz v9, :cond_14

    .line 37
    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v9, :cond_13

    aget-object v9, v9, v11

    if-nez v9, :cond_12

    goto :goto_1

    .line 38
    :cond_12
    invoke-virtual {v2, v13, v9, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_4

    .line 39
    :cond_13
    :goto_1
    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v4, v9, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    const/16 v13, -0x4e

    .line 40
    invoke-virtual {v2, v13, v4, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_4

    .line 41
    :cond_14
    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v9, v9, 0x1fe0

    if-eqz v9, :cond_15

    .line 42
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v9

    iget v14, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v14, v14, 0x1fe0

    shr-int/lit8 v14, v14, 0x5

    invoke-virtual {v9, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->enclosingTypeAt(I)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v9

    .line 43
    invoke-virtual {v1, v9, v12, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Ljava/lang/Object;

    move-result-object v14

    .line 44
    invoke-virtual {v2, v14, v8, v9, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_2

    .line 45
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    .line 46
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    .line 47
    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v9, :cond_17

    aget-object v9, v9, v11

    if-nez v9, :cond_16

    goto :goto_3

    .line 48
    :cond_16
    invoke-virtual {v2, v13, v9, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_4

    .line 49
    :cond_17
    :goto_3
    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v4, v9, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    const/16 v13, -0x4c

    .line 50
    invoke-virtual {v2, v13, v4, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 51
    :goto_4
    iget v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1a

    if-eq v4, v12, :cond_1a

    if-eq v4, v7, :cond_1a

    .line 52
    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v7, :cond_18

    .line 53
    invoke-virtual {v2, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 54
    :cond_18
    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v2, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    .line 55
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->One:Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;

    if-ne v0, v7, :cond_19

    .line 56
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v2, v0, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    goto :goto_5

    .line 57
    :cond_19
    invoke-virtual {v0, v1, v2, v12}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    .line 58
    :goto_5
    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sendOperator(II)V

    move/from16 v0, p6

    .line 59
    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_6

    .line 60
    :cond_1a
    invoke-virtual {v2, v1, v10, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateStringConcatenationAppend(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    .line 61
    :goto_6
    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v0, v5

    if-eq v0, v12, :cond_1e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1b

    goto :goto_8

    .line 62
    :cond_1b
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz p7, :cond_1d

    .line 63
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v1, v5, :cond_1c

    if-eq v1, v6, :cond_1c

    .line 64
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    goto :goto_7

    .line 65
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2()V

    .line 66
    :cond_1d
    :goto_7
    invoke-virtual {v2, v0, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    :goto_8
    return-void

    .line 67
    :cond_1e
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v3

    .line 68
    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->fieldStore(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZ)V

    return-void
.end method

.method public generatePostIncrement(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Z)V
    .locals 14

    move-object v8, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    move/from16 v3, p4

    iget v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/4 v5, 0x7

    and-int/2addr v4, v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v4, v10, :cond_8

    const/4 v11, 0x2

    if-eq v4, v11, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-static {p1, v4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->reportOnlyUselesslyReadLocal(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget v1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    const/4 v11, -0x1

    if-ne v1, v11, :cond_2

    if-nez v3, :cond_1

    return-void

    :cond_1
    iput v10, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v0, v1, v9}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw v0

    :cond_2
    iget-object v1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v1, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v3, :cond_3

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_3
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->operator:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    iget v0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    invoke-virtual {v2, v0, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iinc(II)V

    goto :goto_1

    :cond_4
    iget v0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    invoke-virtual {v2, v0, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iinc(II)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    if-eqz v3, :cond_7

    iget-object v1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v1, v5, :cond_6

    if-eq v1, v6, :cond_6

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    goto :goto_0

    :cond_6
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2()V

    :cond_7
    :goto_0
    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->operator:I

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sendOperator(II)V

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->preAssignImplicitConversion:I

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    invoke-virtual {v2, v4, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    :goto_1
    return-void

    :cond_8
    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1, v4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->reportOnlyUselesslyReadPrivateField(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Z)V

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v11

    const/16 v12, -0x48

    if-eqz v11, :cond_b

    iget-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v11, :cond_a

    aget-object v7, v11, v7

    if-nez v7, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v2, v12, v7, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_5

    :cond_a
    :goto_2
    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, v4, v7, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    const/16 v11, -0x4e

    invoke-virtual {v2, v11, v4, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_5

    :cond_b
    iget v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v11, v11, 0x1fe0

    if-eqz v11, :cond_c

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v11

    iget v13, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v13, v13, 0x1fe0

    shr-int/lit8 v13, v13, 0x5

    invoke-virtual {v11, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->enclosingTypeAt(I)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v11

    invoke-virtual {p1, v11, v10, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v13, p0, v11, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_3

    :cond_c
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    :goto_3
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    iget-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v11, :cond_e

    aget-object v7, v11, v7

    if-nez v7, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {v2, v12, v7, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_5

    :cond_e
    :goto_4
    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, v4, v7, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    const/16 v11, -0x4c

    invoke-virtual {v2, v11, v4, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_5
    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v7, :cond_f

    invoke-virtual {v2, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_6

    :cond_f
    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_6
    if-eqz v3, :cond_13

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_11

    iget v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v3, v5, :cond_10

    if-eq v3, v6, :cond_10

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    goto :goto_7

    :cond_10
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2()V

    goto :goto_7

    :cond_11
    iget v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v3, v5, :cond_12

    if-eq v3, v6, :cond_12

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    goto :goto_7

    :cond_12
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2_x1()V

    :cond_13
    :goto_7
    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->operator:I

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sendOperator(II)V

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->preAssignImplicitConversion:I

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_14

    goto :goto_8

    :cond_14
    aget-object v0, v0, v10

    move-object v9, v0

    :goto_8
    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    move-object v4, v9

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->fieldStore(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZ)V

    return-void
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

.method public getName()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    filled-new-array {v0}, [[C

    move-result-object v0

    return-object v0
.end method

.method public isEquivalent(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;

    if-nez v0, :cond_1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->token:[C

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    return-object v0
.end method

.method public manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 5

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

    if-ne p2, v0, :cond_6

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->isUninitializedIn(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-wide v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v3, 0x800

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    if-eq v1, v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->emulateOuterAccess(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)V
    .locals 4

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq p2, v0, :cond_1

    return-void

    :cond_1
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x1fe0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isNestmateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isProtected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    if-eq v0, v1, :cond_5

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_4

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    xor-int/lit8 v1, p3, 0x1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v3, v3, 0x1fe0

    shr-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->enclosingTypeAt(I)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ZZ)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p0, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needToEmulateFieldAccess(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    :cond_5
    return-void
.end method

.method public nullAnnotatedVariableBinding(Z)Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/high16 v2, 0x180000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    return-object p1
.end method

.method public nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result p1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result p1

    return p1
.end method

.method public postConversionType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v2, v2, 0x4

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    :goto_0
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_1
    return-object v0

    nop

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
    .locals 0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public reportError(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

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
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x7

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    invoke-virtual {p1, v0, v2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v2, v1

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getBinding([CILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v2, v0, 0x7

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v2, v3, :cond_1

    if-eq v2, v4, :cond_9

    if-eq v2, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    if-eqz v2, :cond_8

    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v3, :cond_4

    and-int/lit8 v0, v0, -0x8

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->markReferenced()V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v3, 0x340000

    cmp-long v0, v0, v3

    if-gez v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    move-object v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotReferToNonFinalOuterLocal(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_2
    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_3

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->constant(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :goto_1
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->checkFieldAccess(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_7

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_5

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v3, 0x80

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_6
    const/4 p1, 0x0

    return-object p1

    :cond_7
    return-object v0

    :cond_8
    and-int/lit8 v0, v0, -0x8

    or-int/2addr v0, v4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_9
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isTypeUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_a
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_b
    :goto_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->reportError(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    .line 2
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 3
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    .line 4
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method

.method public unboundReferenceErrorName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
