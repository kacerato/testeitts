.class public Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;
.super Lorg/eclipse/jdt/internal/compiler/lookup/Scope;
.source "SourceFile"


# static fields
.field public static final EmulationPathToImplicitThis:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

.field public static final NoEnclosingInstanceInConstructorCall:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

.field public static final NoEnclosingInstanceInStaticContext:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;


# instance fields
.field public blockStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

.field public enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

.field public finallyInfo:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

.field public insideTypeAnnotation:Z

.field public localIndex:I

.field public locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field public maxOffset:I

.field public offset:I

.field public shiftScopes:[Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

.field public startIndex:I

.field public subscopeCount:I

.field public subscopes:[Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

.field private trackingVariables:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->EmulationPathToImplicitThis:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->NoEnclosingInstanceInConstructorCall:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->NoEnclosingInstanceInStaticContext:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    return-void
.end method

.method public constructor <init>(ILorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;-><init>(ILorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    const/4 p1, 0x1

    .line 11
    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopes:[Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopeCount:I

    .line 13
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;I)V
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(ILorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    .line 7
    new-array p2, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    .line 8
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addSubscope(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    .line 9
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->startIndex:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(ILorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addSubscope(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    .line 5
    :cond_0
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->startIndex:I

    return-void
.end method

.method private checkAndSetModifiersForVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 4

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    instance-of v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateModifierForVariable(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Z)V

    :cond_0
    const v1, 0xffef

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    instance-of v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForVariable(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Z)V

    :cond_1
    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    return-void
.end method

.method private checkAppropriate(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-static {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalSuperCallBypassingOverride(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private reportResourceLeak(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->recordErrorLocation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->reportError(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final addAnonymousType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildAnonymousTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->shouldCaptureInstance:Z

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final addLocalType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addSubscope(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildLocalTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->shouldCaptureInstance:Z

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->checkAndSetModifiersForVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    aput-object p1, v0, v1

    iput-object p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->outerMostMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->analysisIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->analysisIndex:I

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    return-void
.end method

.method public addSubscope(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopeCount:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopes:[Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopes:[Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopes:[Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopeCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopeCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final allowBlankFinalFieldAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result p1

    if-eq v2, p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isLambdaScope()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isInsideInitializer()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isInitializationMethod()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public basicToString(I)Ljava/lang/String;
    .locals 4

    const-string v0, "\n"

    :goto_0
    add-int/lit8 p1, p1, -0x1

    const-string v1, "\t"

    if-gez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "--- Block Scope ---"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "locals:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    if-lt v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "startIndex = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->startIndex:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public checkAppropriateMethodAgainstSupers([CLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    invoke-direct {p0, p2, v1, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->checkAppropriate(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {p0, v2, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    invoke-direct {p0, p2, v2, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->checkAppropriate(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public checkUnclosedCloseables(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->analyseResourceLeaks:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->trackingVariables:Ljava/util/List;

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isLambdaScope()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->checkUnclosedCloseables(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    instance-of v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v0, p3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->getCloseTrackingVariable(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->trackingVariables:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p3, :cond_5

    move v6, v5

    goto :goto_1

    :cond_5
    move v6, v4

    :goto_1
    invoke-direct {v2, v3, p0, v6}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;-><init>(Ljava/util/List;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    if-nez p3, :cond_8

    :goto_3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    if-lt v4, p1, :cond_7

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->trackingVariables:Ljava/util/List;

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object p1, p1, v4

    iput-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    return-void

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz v0, :cond_a

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->isResourceBeingReturned(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_2

    :cond_a
    if-eqz p3, :cond_b

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->hasDefinitelyNoResource(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_2

    :cond_b
    if-eqz p3, :cond_c

    if-eqz p2, :cond_c

    invoke-virtual {p2, p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordExitAgainstResource(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {v3, p1, p0, p4}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->findMostSpecificStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_d

    invoke-direct {p0, v3, p3, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->reportResourceLeak(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)V

    goto :goto_2

    :cond_d
    if-nez p3, :cond_f

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v7

    if-eqz v7, :cond_e

    move v7, v5

    goto :goto_5

    :cond_e
    move v7, v4

    :goto_5
    invoke-virtual {v3, p0, v6, v7}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->reportRecordedErrors(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;IZ)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_2

    :cond_f
    const/16 v7, 0x10

    if-ne v6, v7, :cond_10

    invoke-direct {p0, v3, p3, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->reportResourceLeak(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)V

    goto :goto_2

    :cond_10
    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v6

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v6, v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v8, 0x330000

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->reportExplicitClosing(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;)V

    goto :goto_2
.end method

.method public computeLocalVariablePositions(IILorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 9

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->maxOffset:I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopeCount:I

    if-lez v3, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    move v5, v0

    :goto_2
    if-nez v2, :cond_3

    if-nez v4, :cond_3

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->maxOffset:I

    if-le p1, p2, :cond_2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->maxOffset:I

    :cond_2
    return-void

    :cond_3
    if-eqz v4, :cond_8

    if-eqz v2, :cond_4

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopes:[Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->startIndex()I

    move-result v6

    if-gt v6, p1, :cond_8

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopes:[Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    aget-object v4, v4, v5

    instance-of v6, v4, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v6, :cond_6

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->shiftScopes:[Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-nez v6, :cond_5

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->maxShiftedOffset()I

    move-result v6

    :goto_3
    invoke-virtual {v4, v0, v6, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->computeLocalVariablePositions(IILorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->maxOffset:I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->maxOffset:I

    if-le v4, v6, :cond_6

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->maxOffset:I

    :cond_6
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_7

    move v4, v1

    goto :goto_2

    :cond_7
    move v4, v0

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v2, v2, p1

    iget v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    if-lez v6, :cond_9

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v6

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v6, v7, :cond_9

    move v6, v1

    goto :goto_4

    :cond_9
    move v6, v0

    :goto_4
    iget v7, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    if-nez v7, :cond_b

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v7, :cond_b

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v7, v8

    if-eqz v7, :cond_b

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->isCatchParameter()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    iget-object v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedExceptionParameter(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    iget-object v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedLocalVariable(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V

    :cond_b
    :goto_5
    if-nez v6, :cond_d

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v7

    iget-boolean v7, v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->preserveAllLocalVariables:Z

    if-eqz v7, :cond_d

    iget v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    if-nez v6, :cond_c

    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    :cond_c
    move v6, v1

    :cond_d
    if-eqz v6, :cond_12

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v6, :cond_e

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->record(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_e
    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    iput v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_6

    :cond_f
    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    add-int/2addr v6, v1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    goto :goto_7

    :cond_10
    :goto_6
    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    :goto_7
    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    const v7, 0xffff

    if-le v6, v7, :cond_13

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-nez v7, :cond_11

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v7

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_11
    invoke-virtual {v6, v2, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->noMoreAvailableSpaceForLocal(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_8

    :cond_12
    const/4 v6, -0x1

    iput v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    :cond_13
    :goto_8
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_14

    move v2, v1

    goto/16 :goto_2

    :cond_14
    move v2, v0

    goto/16 :goto_2
.end method

.method public correlateTrackingVarsIfElse(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->trackingVariables:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->trackingVariables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto/16 :goto_3

    :cond_2
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto/16 :goto_3

    :cond_3
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq p1, v3, :cond_8

    if-ne p2, v3, :cond_4

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v3, v1, 0x1

    :goto_1
    if-lt v3, v0, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->trackingVariables:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-ne v5, v6, :cond_7

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->hasNullInfoFor(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v5

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v6}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->hasNullInfoFor(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v6

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->hasNullInfoFor(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v7

    iget-object v8, v4, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->hasNullInfoFor(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v8

    if-nez v5, :cond_6

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    if-nez v8, :cond_6

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result v5

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v6}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result v6

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergeNullStatus(II)I

    move-result v5

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    if-nez v6, :cond_7

    if-nez v7, :cond_7

    if-eqz v8, :cond_7

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result v5

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v6}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result v6

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergeNullStatus(II)I

    move-result v5

    :goto_2
    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v6, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v6, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object v2, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v6, 0x4

    invoke-virtual {p1, v5, v6}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v4, v6}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v1, :cond_a

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->correlateTrackingVarsIfElse(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_a
    return-void
.end method

.method public emulateOuterAccess(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move-object v2, p0

    :goto_0
    if-ne v0, v2, :cond_5

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isInsideInitializerOrConstructor()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->addSyntheticArgumentAndField(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->addSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isLambdaScope()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->addSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_8
    :goto_2
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    goto :goto_0
.end method

.method public final findLocalType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopeCount:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-gez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopes:[Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    aget-object v3, v3, v2

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v4, :cond_2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    const-wide/32 v4, 0x300000

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isInsideCase(Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->sourceName()[C

    move-result-object v4

    invoke-static {v4, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public findLocalVariableDeclarations(I)[Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;
    .locals 12

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopeCount:I

    if-lez v4, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    const/4 v6, 0x0

    move v7, v2

    move v8, v7

    move v10, v8

    move-object v9, v6

    :cond_2
    :goto_2
    if-nez v3, :cond_3

    if-nez v5, :cond_3

    return-object v6

    :cond_3
    if-eqz v5, :cond_7

    if-eqz v3, :cond_4

    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopes:[Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->startIndex()I

    move-result v11

    if-gt v11, v8, :cond_7

    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopes:[Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    aget-object v5, v5, v7

    iget v11, v5, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    if-ne v11, v1, :cond_5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->findLocalVariableDeclarations(I)[Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    move-result-object v9

    if-eqz v9, :cond_5

    return-object v9

    :cond_5
    add-int/lit8 v7, v7, 0x1

    if-ge v7, v4, :cond_6

    move v5, v1

    goto :goto_2

    :cond_6
    move v5, v2

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v3, v3, v8

    if-eqz v3, :cond_a

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v3, :cond_a

    iget v11, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-gt v11, p1, :cond_9

    iget v11, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-gt p1, v11, :cond_a

    if-nez v9, :cond_8

    new-array v9, v0, [Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    :cond_8
    add-int/lit8 v11, v10, 0x1

    aput-object v3, v9, v10

    move v10, v11

    goto :goto_3

    :cond_9
    return-object v9

    :cond_a
    :goto_3
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v0, :cond_b

    move v3, v1

    goto :goto_4

    :cond_b
    move v3, v2

    :goto_4
    if-nez v3, :cond_2

    if-eqz v9, :cond_2

    return-object v9
.end method

.method public findVariable([C)Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;
    .locals 5

    array-length v0, p1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v2, v2, v1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    array-length v4, v3

    if-ne v4, v0, :cond_1

    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getBinding([[CILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 1
    aget-object v4, v1, v3

    or-int/lit8 v5, p2, 0x14

    move/from16 v6, p4

    invoke-virtual {v0, v4, v5, v2, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getBinding([CILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v4

    const/4 v5, 0x1

    .line 2
    invoke-interface {v2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setFieldIndex(I)V

    .line 3
    instance-of v6, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    if-eqz v6, :cond_0

    return-object v4

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v6

    .line 5
    invoke-virtual {v6, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    .line 6
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v7

    if-nez v7, :cond_1

    return-object v4

    .line 7
    :cond_1
    array-length v7, v1

    .line 8
    instance-of v8, v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v8, :cond_8

    .line 9
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move v8, v5

    :goto_0
    if-lt v8, v7, :cond_2

    .line 10
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 11
    invoke-static {v1, v3, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    .line 12
    invoke-direct {v2, v1, v10, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v2

    .line 13
    :cond_2
    iget-object v11, v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    aget-object v12, v1, v8

    invoke-virtual {v6, v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordReference([[C[C)V

    add-int/lit8 v11, v8, 0x1

    .line 14
    aget-object v8, v1, v8

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v12

    if-ge v11, v7, :cond_3

    move v13, v5

    goto :goto_1

    :cond_3
    move v13, v3

    :goto_1
    invoke-virtual {v4, v8, v12, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getTypeOrPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v4

    .line 15
    invoke-interface {v2, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setFieldIndex(I)V

    if-nez v4, :cond_5

    if-ne v11, v7, :cond_4

    .line 16
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 17
    invoke-static {v1, v3, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    .line 18
    invoke-direct {v2, v1, v10, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v2

    .line 19
    :cond_4
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    .line 20
    invoke-static {v1, v3, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    .line 21
    invoke-direct {v2, v1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;-><init>([[CI)V

    return-object v2

    .line 22
    :cond_5
    instance-of v8, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v8, :cond_7

    .line 23
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v6

    if-nez v6, :cond_6

    .line 24
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 25
    invoke-static {v1, v3, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    .line 26
    move-object v3, v4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 27
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v4

    .line 28
    invoke-direct {v2, v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v2

    .line 29
    :cond_6
    move-object v6, v4

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 30
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 31
    invoke-static {v1, v3, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    .line 32
    invoke-direct {v2, v1, v6, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v2

    .line 33
    :cond_7
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move v8, v11

    goto :goto_0

    :cond_8
    move v11, v5

    .line 34
    :cond_9
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    .line 36
    instance-of v8, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v8, :cond_a

    .line 37
    move-object v12, v2

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    .line 38
    invoke-virtual {v12, v4, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isTypeUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 39
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v13

    invoke-virtual {v13, v4, v12}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_a
    move-object v4, v10

    :goto_2
    const/16 v12, 0x2e

    if-lt v11, v7, :cond_b

    goto :goto_3

    .line 40
    :cond_b
    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v13, v11, 0x1

    .line 41
    aget-object v11, v1, v11

    .line 42
    invoke-interface {v2, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setFieldIndex(I)V

    .line 43
    invoke-interface {v2, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setActualReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    and-int/lit8 v14, p2, 0x1

    if-eqz v14, :cond_10

    .line 44
    invoke-virtual {v0, v6, v11, v2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v15

    if-eqz v15, :cond_10

    .line 45
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-eqz v4, :cond_f

    move v11, v13

    move-object v6, v15

    :goto_3
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_d

    .line 46
    instance-of v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v2, :cond_d

    .line 47
    move-object v2, v6

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    .line 48
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v4

    if-nez v4, :cond_c

    .line 49
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    .line 50
    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 51
    invoke-static {v1, v3, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    invoke-static {v1, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v1

    const/4 v3, 0x7

    .line 52
    invoke-direct {v4, v2, v5, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object v4

    :cond_c
    return-object v6

    :cond_d
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_e

    .line 53
    instance-of v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_e

    return-object v6

    .line 54
    :cond_e
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    .line 55
    invoke-static {v1, v3, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    .line 56
    invoke-direct {v2, v1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;-><init>([[CI)V

    return-object v2

    .line 57
    :cond_f
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    .line 58
    move-object v5, v15

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v10, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    .line 59
    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 60
    invoke-static {v1, v3, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v9

    invoke-static {v9, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v9

    .line 61
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v12

    .line 62
    invoke-direct {v4, v10, v5, v9, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    .line 63
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v5

    const/4 v9, 0x2

    if-eq v5, v9, :cond_10

    return-object v4

    .line 64
    :cond_10
    invoke-virtual {v0, v11, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    if-nez v5, :cond_14

    if-eqz v4, :cond_11

    return-object v4

    :cond_11
    if-eqz v14, :cond_12

    .line 65
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-direct {v1, v12, v6, v11, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object v1

    :cond_12
    const/4 v10, 0x1

    and-int/lit8 v2, p2, 0x3

    if-eqz v2, :cond_13

    .line 66
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    .line 67
    invoke-static {v1, v3, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    .line 68
    invoke-direct {v2, v1, v6, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v2

    .line 69
    :cond_13
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 70
    invoke-static {v1, v3, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    .line 71
    invoke-direct {v2, v1, v6, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v2

    :cond_14
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 72
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v6

    if-nez v6, :cond_16

    if-eqz v4, :cond_15

    return-object v4

    .line 73
    :cond_15
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 74
    invoke-static {v1, v3, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    .line 75
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 76
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v4

    .line 77
    invoke-direct {v2, v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v2

    :cond_16
    if-eqz v8, :cond_17

    .line 78
    move-object v6, v2

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    .line 79
    invoke-virtual {v6, v5, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isTypeUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 80
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_17
    move-object v6, v5

    move v5, v10

    move-object v10, v12

    move v11, v13

    goto/16 :goto_2
.end method

.method public final getBinding([[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 10

    .line 81
    array-length v0, p1

    const/4 v1, 0x0

    .line 82
    aget-object v2, p1, v1

    const/16 v3, 0x17

    const/4 v4, 0x1

    .line 83
    invoke-virtual {p0, v2, v3, p2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getBinding([CILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    .line 85
    :cond_0
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    move v3, v4

    :goto_0
    if-lt v3, v0, :cond_1

    return-object v2

    .line 86
    :cond_1
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    add-int/lit8 v6, v3, 0x1

    .line 87
    aget-object v3, p1, v3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v7

    if-ge v6, v0, :cond_2

    move v8, v4

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    invoke-virtual {v2, v3, v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getTypeOrPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v2

    if-nez v2, :cond_4

    if-ne v6, v0, :cond_3

    .line 88
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 89
    invoke-static {p1, v1, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    .line 90
    invoke-direct {p2, p1, v5, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    .line 91
    :cond_3
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    .line 92
    invoke-static {p1, v1, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    .line 93
    invoke-direct {p2, p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;-><init>([[CI)V

    return-object p2

    .line 94
    :cond_4
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v3, :cond_6

    .line 95
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_5

    .line 96
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 97
    invoke-static {p1, v1, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    .line 98
    move-object v0, v2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 99
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v1

    .line 100
    invoke-direct {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    .line 101
    :cond_5
    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 102
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 103
    invoke-static {p1, v1, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    const/4 v0, 0x2

    .line 104
    invoke-direct {p2, p1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_6
    move v3, v6

    goto :goto_0

    :cond_7
    move v6, v4

    .line 105
    :cond_8
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v7, 0x2e

    if-eqz v3, :cond_f

    :goto_2
    if-lt v6, v0, :cond_9

    return-object v2

    .line 106
    :cond_9
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v3, v6, 0x1

    .line 107
    aget-object v6, p1, v6

    .line 108
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v8

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result v9

    invoke-virtual {v2, p0, v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    .line 109
    invoke-virtual {p0, v8, v6, p2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 110
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_a

    .line 111
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    .line 112
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 113
    invoke-static {p1, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-static {p1, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    .line 114
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v1

    .line 115
    invoke-direct {p2, v8, v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object p2

    .line 116
    :cond_a
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v2

    if-nez v2, :cond_b

    .line 117
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    .line 118
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 119
    invoke-static {p1, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-static {p1, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    const/4 v1, 0x7

    .line 120
    invoke-direct {p2, v8, v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object p2

    :cond_b
    move v6, v3

    move-object v2, v8

    goto :goto_3

    .line 121
    :cond_c
    invoke-virtual {p0, v6, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    if-nez v6, :cond_d

    .line 122
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    .line 123
    invoke-static {p1, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    .line 124
    invoke-direct {p2, p1, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    .line 125
    :cond_d
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_e

    .line 126
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 127
    invoke-static {p1, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    .line 128
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 129
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v1

    .line 130
    invoke-direct {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_e
    move-object v2, v6

    move v6, v3

    goto :goto_2

    .line 131
    :cond_f
    :goto_3
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    :goto_4
    if-lt v6, v0, :cond_10

    return-object v2

    .line 132
    :cond_10
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v2, :cond_11

    .line 133
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    .line 134
    invoke-static {p1, v1, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-static {p1, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    .line 135
    invoke-direct {p2, v5, v5, p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object p2

    .line 136
    :cond_11
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v3

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result v8

    invoke-virtual {v2, p0, v3, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    add-int/lit8 v3, v6, 0x1

    .line 137
    aget-object v6, p1, v6

    invoke-virtual {p0, v2, v6, p2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v6

    if-nez v6, :cond_13

    .line 138
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    .line 139
    instance-of v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_12

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_5

    :cond_12
    move-object v2, v5

    .line 140
    :goto_5
    invoke-static {p1, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-static {p1, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    .line 141
    invoke-direct {p2, v5, v2, p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object p2

    .line 142
    :cond_13
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_14

    return-object v6

    :cond_14
    move-object v2, v6

    move v6, v3

    goto :goto_4
.end method

.method public getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Ljava/lang/Object;
    .locals 9

    .line 17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v1

    .line 19
    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    if-nez v2, :cond_1

    .line 20
    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 21
    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->EmulationPathToImplicitThis:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    return-object p1

    .line 22
    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    .line 23
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isInsideInitializerOrConstructor()Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    .line 24
    move-object v6, v1

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    iget-boolean v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    invoke-virtual {v6, p1, p2, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->getSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 25
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_0
    if-eqz p3, :cond_5

    if-nez v4, :cond_5

    .line 27
    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p3

    if-nez p3, :cond_4

    if-nez p2, :cond_5

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 28
    :cond_4
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->NoEnclosingInstanceInConstructorCall:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    return-object p1

    .line 29
    :cond_5
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 30
    :cond_6
    iget-boolean p3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-eqz p3, :cond_7

    .line 31
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->NoEnclosingInstanceInStaticContext:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    return-object p1

    .line 32
    :cond_7
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 33
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    .line 34
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 35
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    .line 36
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    iget-boolean v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    invoke-virtual {p3, v6, p2, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->getSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 37
    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getSyntheticField(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 38
    iget-object v6, p3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v6, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-nez v6, :cond_8

    if-nez p2, :cond_9

    iget-object v6, p3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 39
    :cond_8
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 40
    :cond_9
    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getSyntheticField(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 41
    iget-boolean p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    if-eqz p1, :cond_a

    .line 42
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->NoEnclosingInstanceInConstructorCall:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    return-object p1

    .line 43
    :cond_a
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p3, 0x2

    .line 44
    new-array p3, p3, [Ljava/lang/Object;

    .line 45
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    if-eqz v2, :cond_c

    .line 46
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    invoke-virtual {v1, v6, p2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->getSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v1

    aput-object v1, p3, v5

    goto :goto_1

    .line 47
    :cond_c
    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    if-eqz v2, :cond_d

    .line 48
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->NoEnclosingInstanceInConstructorCall:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    return-object p1

    .line 49
    :cond_d
    invoke-virtual {v1, v6, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getSyntheticField(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v1

    aput-object v1, p3, v5

    .line 50
    :goto_1
    aget-object v1, p3, v5

    if-eqz v1, :cond_16

    move v1, v4

    .line 51
    :goto_2
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_3

    .line 52
    :cond_e
    invoke-static {v6, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-nez v7, :cond_14

    if-nez p2, :cond_f

    .line 53
    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    if-eqz v7, :cond_f

    goto :goto_3

    :cond_f
    if-eqz v0, :cond_11

    .line 54
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 55
    iget-boolean v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    if-eqz v7, :cond_10

    .line 56
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->NoEnclosingInstanceInConstructorCall:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    return-object p1

    :cond_10
    if-eqz v0, :cond_11

    .line 57
    iget-boolean v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-eqz v7, :cond_11

    .line 58
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->NoEnclosingInstanceInStaticContext:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    return-object p1

    .line 59
    :cond_11
    move-object v7, v6

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    invoke-virtual {v7, v2, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getSyntheticField(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v7

    if-nez v7, :cond_12

    goto :goto_3

    .line 60
    :cond_12
    array-length v6, p3

    if-ne v1, v6, :cond_13

    add-int/lit8 v6, v1, 0x1

    .line 61
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p3, v5, v6, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v6

    :cond_13
    add-int/lit8 v6, v1, 0x1

    .line 62
    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v8, v7, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ZZ)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v7

    aput-object v7, p3, v1

    move v1, v6

    move-object v6, v2

    goto :goto_2

    .line 63
    :cond_14
    :goto_3
    invoke-static {v6, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_15

    if-nez p2, :cond_16

    .line 64
    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-eqz p1, :cond_16

    :cond_15
    return-object p3

    :cond_16
    return-object v3

    .line 65
    :cond_17
    :goto_4
    iget-boolean p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    if-eqz p1, :cond_18

    .line 66
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->NoEnclosingInstanceInConstructorCall:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    return-object p1

    .line 67
    :cond_18
    iget-boolean p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-eqz p1, :cond_19

    .line 68
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->NoEnclosingInstanceInStaticContext:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    return-object p1

    :cond_19
    return-object v3
.end method

.method public getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v3

    .line 3
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v4, :cond_4

    .line 4
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v4

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isLambdaScope()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    .line 7
    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->getSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 8
    new-array p1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    aput-object v4, p1, v0

    return-object p1

    .line 9
    :cond_1
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isInsideInitializerOrConstructor()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    move-object v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->getSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 12
    new-array p1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    aput-object v4, p1, v0

    return-object p1

    .line 13
    :cond_2
    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-nez v2, :cond_3

    .line 14
    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getSyntheticField(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15
    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    aput-object p1, v1, v0

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_4
    :goto_0
    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    aput-object p1, v1, v0

    return-object v1
.end method

.method public final isDuplicateLocalVariable([C)Z
    .locals 5

    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    if-eq v2, v4, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public maxShiftedOffset()I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->shiftScopes:[Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    array-length v0, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->shiftScopes:[Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->maxOffset:I

    if-le v3, v1, :cond_1

    move v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public final needBlankFinalFieldInitializationCheck(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->namedMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-eq v3, v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isInsideInitializer()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isInitializationMethod()Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->namedMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    goto :goto_0
.end method

.method public problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    return-object v0
.end method

.method public propagateInnerEmulation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->syntheticOuterLocalVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    if-eqz p2, :cond_1

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->actualOuterLocalVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->emulateOuterAccess(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public pruneWrapperTrackingVar(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->trackingVariables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public registerTrackingVariable(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->trackingVariables:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->trackingVariables:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->trackingVariables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->outerMostMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->analysisIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->analysisIndex:I

    return v0
.end method

.method public removeTrackingVar(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)V
    .locals 2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->innerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->withdraw()V

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->innerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->trackingVariables:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->removeTrackingVar(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)V

    :cond_2
    return-void
.end method

.method public scopeIndex()I
    .locals 5

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopes:[Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopeCount:I

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v0, :cond_1

    return v1

    :cond_1
    aget-object v4, v2, v3

    if-ne v4, p0, :cond_2

    return v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public startIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->startIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    .line 2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->basicToString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopeCount:I

    if-lt v1, v2, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopes:[Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    aget-object v2, v2, v1

    instance-of v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v2, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopes:[Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
