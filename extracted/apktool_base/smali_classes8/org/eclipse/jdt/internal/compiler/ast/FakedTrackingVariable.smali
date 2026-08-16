.class public Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;
.super Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;
    }
.end annotation


# static fields
.field private static final CLOSED_IN_NESTED_METHOD:I = 0x8

.field private static final CLOSE_SEEN:I = 0x1

.field private static final FOREACH_ELEMENT_VAR:I = 0x80

.field private static final OWNED_BY_OUTSIDE:I = 0x4

.field private static final REPORTED_DEFINITIVE_LEAK:I = 0x40

.field private static final REPORTED_EXPLICIT_CLOSE:I = 0x10

.field private static final REPORTED_POTENTIAL_LEAK:I = 0x20

.field private static final SHARED_WITH_OUTSIDE:I = 0x2

.field private static final TEMPLATE_ARGUMENT:[C

.field public static TEST_372319:Z

.field private static final UNASSIGNED_CLOSEABLE_NAME:[C

.field private static final UNASSIGNED_CLOSEABLE_NAME_TEMPLATE:[C


# instance fields
.field private currentAssignment:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field private globalClosingState:I

.field public innerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

.field methodScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

.field public originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field public outerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

.field private recordedLocations:Ljava/util/HashMap;

.field private tryContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<unassigned Closeable value>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->UNASSIGNED_CLOSEABLE_NAME:[C

    const-string v0, "<unassigned Closeable value from line {0}>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->UNASSIGNED_CLOSEABLE_NAME_TEMPLATE:[C

    const-string v0, "{0}"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->TEMPLATE_ARGUMENT:[C

    const/4 v0, 0x0

    sput-boolean v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->TEST_372319:Z

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)V
    .locals 5

    .line 14
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->UNASSIGNED_CLOSEABLE_NAME:[C

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {p0, v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;-><init>([CII)V

    const/4 p2, 0x0

    .line 15
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    .line 16
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    .line 17
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->OBJECT:[C

    .line 18
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-direct {p2, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    .line 19
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 20
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->methodScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    const/4 p2, 0x0

    .line 21
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    .line 22
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    if-eqz p4, :cond_0

    .line 23
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p3, p1, p4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;I)V
    .locals 5

    .line 1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {p0, v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;-><init>([CII)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    .line 3
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    .line 4
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->OBJECT:[C

    .line 5
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-direct {p2, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    .line 6
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 7
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->methodScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    .line 8
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    :goto_0
    if-nez p4, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    instance-of p2, p4, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;

    if-eqz p2, :cond_2

    .line 10
    check-cast p4, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;

    iget-object p2, p4, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->tryContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->tryContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    .line 11
    :goto_1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    if-eqz p5, :cond_1

    .line 12
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p3, p1, p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    :cond_1
    return-void

    .line 13
    :cond_2
    iget-object p4, p4, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    goto :goto_0
.end method

.method public static analyseCloseableAllocation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)V
    .locals 5

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeBit(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->withdraw()V

    iput-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    goto/16 :goto_5

    :cond_0
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeBit(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_a

    array-length v2, v0

    if-lez v2, :cond_a

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->findCloseTracker(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v1, v0

    :cond_1
    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->innerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-nez v2, :cond_3

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    invoke-direct {v2, p0, p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)V

    iput-object v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->finallyInfo:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    if-eqz v4, :cond_4

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result v2

    if-eq v2, v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v3

    :goto_1
    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->innerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz v1, :cond_5

    invoke-static {v1, v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->pickMoreUnsafe(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object v0

    :cond_5
    iget-object p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->innerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->outerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    if-eq v2, v3, :cond_7

    :goto_2
    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object p0, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    iget p0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    or-int/2addr p0, v1

    iput p0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->innerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    goto :goto_2

    :cond_7
    :goto_3
    return-void

    :cond_8
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->isAnyCloseable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    iget-object p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->withdraw()V

    iput-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    goto :goto_5

    :cond_a
    :goto_4
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->handleRegularResource(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)V

    goto :goto_5

    :cond_b
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->handleRegularResource(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)V

    :cond_c
    :goto_5
    return-void
.end method

.method private static analyseCloseableExpression(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;
    .locals 6

    :goto_0
    instance-of p5, p4, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    if-eqz p5, :cond_0

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    iget-object p4, p4, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_0

    :cond_0
    instance-of p5, p4, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz p5, :cond_1

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object p4, p4, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_0

    :cond_1
    iget-object p5, p4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v0, p5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    check-cast p5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v0, 0x8

    invoke-virtual {p5, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeBit(I)Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-static {p4}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->isBlacklistedMethod(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result p5

    if-eqz p5, :cond_2

    move p5, v2

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    const/4 p5, 0x0

    :goto_1
    instance-of v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz v0, :cond_5

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object p0, p4, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz p0, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    return-object p0

    :cond_5
    instance-of v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-nez v0, :cond_b

    instance-of v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    iget p5, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 p5, p5, 0x7

    if-eq p5, v2, :cond_a

    instance-of p5, p4, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz p5, :cond_7

    move-object p5, p4

    check-cast p5, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->isFieldAccess()Z

    move-result p5

    if-eqz p5, :cond_7

    goto :goto_2

    :cond_7
    iget-object p5, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz p5, :cond_8

    return-object p5

    :cond_8
    new-instance p5, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    const/4 v5, 0x1

    move-object v0, p5

    move-object v1, p2

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;I)V

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->isParameter()Z

    move-result p0

    if-eqz p0, :cond_9

    iget p0, p5, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    or-int/lit8 p0, p0, 0x4

    iput p0, p5, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    :cond_9
    return-object p5

    :cond_a
    :goto_2
    new-instance p4, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    const/4 v5, 0x1

    move-object v0, p4

    move-object v1, p2

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;I)V

    iget p0, p4, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    or-int/lit8 p0, p0, 0x4

    iput p0, p4, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    return-object p4

    :cond_b
    :goto_3
    new-instance p4, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    const/16 v5, 0x10

    move-object v0, p4

    move-object v1, p2

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;I)V

    if-nez p5, :cond_c

    iget p0, p4, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    or-int/lit8 p0, p0, 0x2

    iput p0, p4, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    :cond_c
    return-object p4
.end method

.method public static cleanUpAfterAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ILorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 0

    :goto_0
    instance-of p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    if-eqz p0, :cond_0

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_0

    :cond_0
    instance-of p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz p0, :cond_1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_0

    :cond_1
    instance-of p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz p0, :cond_2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz p0, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->withdraw()V

    const/4 p0, 0x0

    iput-object p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz p0, :cond_3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->withdraw()V

    :cond_3
    :goto_1
    return-void
.end method

.method private static containsAllocation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z
    .locals 3

    .line 3
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->containsAllocation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->containsAllocation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    return v1

    .line 7
    :cond_2
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v0, :cond_3

    .line 8
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->containsAllocation(Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;)Z

    move-result p0

    return p0

    .line 9
    :cond_3
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v0, :cond_4

    .line 10
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->containsAllocation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p0

    return p0

    :cond_4
    return v2
.end method

.method private static containsAllocation(Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 2
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->containsAllocation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method private static findCloseTracker(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;
    .locals 0

    :goto_0
    instance-of p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    if-nez p0, :cond_2

    instance-of p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    return-object p0

    :cond_0
    instance-of p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz p0, :cond_1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    return-object p0

    :cond_3
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_0
.end method

.method public static getCloseTrackingVariable(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;
    .locals 9

    :goto_0
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->getCloseTrackingVariable(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->getCloseTrackingVariable(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_5

    return-object v1

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->getCloseTrackingVariable(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    :cond_6
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v0, :cond_b

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v2, :cond_c

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz v2, :cond_7

    return-object v2

    :cond_7
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->isAnyCloseable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p0

    if-nez p0, :cond_8

    return-object v1

    :cond_8
    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v4, 0x2000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_9

    return-object v1

    :cond_9
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;I)V

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->isParameter()Z

    move-result p0

    if-eqz p0, :cond_a

    iget-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    :cond_a
    iget-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    return-object p0

    :cond_b
    instance-of p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz p1, :cond_c

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    return-object p0

    :cond_c
    return-object v1
.end method

.method private getNullStatusAggressively(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result p1

    sget-boolean v1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->TEST_372319:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x5

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_2
    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    or-int/2addr v0, v1

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p2, p1, 0x2

    const/16 v0, 0x10

    if-eqz p2, :cond_4

    and-int/lit8 p1, p1, 0x24

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x2

    return p1

    :cond_4
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_6

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x4

    return p1

    :cond_6
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_7

    return v0

    :cond_7
    return p1

    :goto_1
    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    or-int/2addr v0, v1

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    throw p1
.end method

.method private static handleRegularResource(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)V
    .locals 3

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v2, :cond_0

    iget-object p0, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result p0

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->currentAssignment:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-nez v1, :cond_1

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    invoke-virtual {v1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->recordErrorLocation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    invoke-direct {v0, p0, p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)V

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    :cond_1
    :goto_0
    iget-object p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    return-void
.end method

.method public static handleResourceAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v6, p5

    move-object/from16 v10, p6

    iget-object v2, v10, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1, v10}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object v7, v2

    :goto_0
    move-object v12, v7

    goto :goto_1

    :cond_0
    move-object v7, v2

    move-object v12, v11

    goto :goto_1

    :cond_1
    move-object v7, v11

    goto :goto_0

    :goto_1
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    const/4 v13, 0x4

    if-eq v2, v3, :cond_d

    move-object/from16 v14, p3

    invoke-static {v6, v8, v14}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->getCloseTrackingVariable(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v3, v10, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-nez v3, :cond_3

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v3, :cond_2

    iput-object v2, v10, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    :cond_2
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->currentAssignment:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v3, v9, :cond_d

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    and-int/lit16 v3, v3, -0x87

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    goto/16 :goto_4

    :cond_3
    instance-of v4, v6, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-nez v4, :cond_4

    instance-of v4, v6, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-nez v4, :cond_4

    instance-of v4, v6, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v4, :cond_6

    :cond_4
    if-ne v2, v12, :cond_5

    return-void

    :cond_5
    if-ne v3, v2, :cond_6

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    and-int/2addr v3, v13

    if-eqz v3, :cond_6

    new-instance v15, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    const/4 v7, 0x2

    move-object v2, v15

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;I)V

    iput-object v15, v10, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    goto :goto_4

    :cond_6
    iput-object v2, v10, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    goto :goto_4

    :cond_7
    if-eqz v7, :cond_c

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->tryContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    if-eqz v2, :cond_a

    move-object v2, v14

    :goto_2
    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->tryContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    if-ne v3, v2, :cond_9

    goto :goto_4

    :cond_9
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    goto :goto_2

    :cond_a
    :goto_3
    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    and-int/lit16 v2, v2, 0x86

    if-nez v2, :cond_b

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->hasNullInfoFor(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_b
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->analyseCloseableExpression(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object v2

    iput-object v2, v10, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    goto :goto_4

    :cond_c
    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->analyseCloseableExpression(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object v2

    if-eqz v2, :cond_d

    iput-object v2, v10, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    and-int/lit16 v3, v3, 0x86

    if-nez v3, :cond_d

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_d
    :goto_4
    if-eqz v12, :cond_f

    iget-object v2, v12, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->innerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz v2, :cond_e

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-ne v3, v0, :cond_e

    iput-object v11, v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->outerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->pruneWrapperTrackingVar(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)V

    goto :goto_5

    :cond_e
    iget-object v0, v12, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result v0

    if-eq v0, v13, :cond_f

    invoke-virtual {v12, v9, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->recordErrorLocation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)V

    :cond_f
    :goto_5
    return-void
.end method

.method public static isAnyCloseable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeBit(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isBlacklistedMethod(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_NIO_FILE_FILES:[[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static markForeachElementVar(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V
    .locals 1

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz p0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    :cond_0
    return-void
.end method

.method public static markPassedToOutside(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 3

    invoke-static {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->getCloseTrackingVariable(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object p1

    if-eqz p1, :cond_5

    if-eqz p4, :cond_0

    move-object p3, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    :goto_0
    if-eqz p4, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :cond_2
    :goto_1
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    or-int/2addr v1, v0

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->methodScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-eq v1, v2, :cond_3

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    :cond_3
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p3, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->innerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-nez p1, :cond_2

    if-eqz p4, :cond_4

    return-object p3

    :cond_4
    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->conditional(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p2
.end method

.method private neverClosedAtLocations()Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->recordedLocations:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static pick(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->withdraw()V

    return-object p0
.end method

.method private static pickMoreUnsafe(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result v0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p3, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result p3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v2, 0x4

    if-ne p3, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq v0, v2, :cond_4

    if-ne p3, v1, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->pick(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object p0

    return-object p0

    :cond_2
    and-int/lit8 p3, p3, 0x10

    if-eqz p3, :cond_3

    invoke-static {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->pick(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->pick(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    invoke-static {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->pick(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->pick(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object p0

    return-object p0
.end method

.method public static preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 9

    .line 1
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->containsAllocation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-nez v0, :cond_0

    .line 3
    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-eq v1, v2, :cond_0

    .line 4
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v0

    move-object v4, p1

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;I)V

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->isParameter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->currentAssignment:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    .line 8
    invoke-static {p0, p1, p3, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :cond_1
    return-void
.end method

.method private static preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)V
    .locals 0

    .line 21
    iput-object p4, p3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    .line 22
    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p3, :cond_0

    array-length p4, p3

    if-lez p4, :cond_0

    const/4 p4, 0x0

    .line 23
    aget-object p3, p3, p4

    invoke-static {p0, p1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_0
    return-void
.end method

.method private static preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)V
    .locals 1

    .line 17
    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {p0, p1, p2, p4, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    .line 18
    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {p0, p1, p2, p4, p3}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-void
.end method

.method private static preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 1

    .line 9
    instance-of v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz v0, :cond_0

    .line 10
    check-cast p4, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    invoke-static {p0, p1, p2, p4, p3}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)V

    goto :goto_0

    .line 11
    :cond_0
    instance-of v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-eqz v0, :cond_1

    .line 12
    check-cast p4, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    invoke-static {p0, p1, p2, p4, p3}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)V

    goto :goto_0

    .line 13
    :cond_1
    instance-of v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v0, :cond_2

    .line 14
    check-cast p4, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    invoke-static {p0, p1, p2, p4, p3}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)V

    goto :goto_0

    .line 15
    :cond_2
    instance-of p3, p4, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz p3, :cond_3

    .line 16
    check-cast p4, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object p3, p4, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {p0, p1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)V
    .locals 1

    .line 19
    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 20
    invoke-static {p0, p1, p2, p4, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_0
.end method


# virtual methods
.method public findMostSpecificStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)I
    .locals 5

    const/4 v0, 0x1

    move-object v1, p0

    move v2, v0

    :goto_0
    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-direct {p0, v3, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->getNullStatusAggressively(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v4

    if-eqz p3, :cond_1

    invoke-virtual {p0, p3, v4, v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->mergeCloseStatus(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)I

    move-result v4

    :cond_1
    const/4 v3, 0x4

    if-ne v4, v3, :cond_2

    move v2, v4

    :goto_1
    return v2

    :cond_2
    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    if-ne v2, v0, :cond_4

    :cond_3
    move v2, v4

    :cond_4
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->innerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    goto :goto_0
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 0

    return-void
.end method

.method public hasDefinitelyNoResource(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->originalBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public isClosedInFinallyOfEnclosing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 2

    :goto_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->finallyInfo:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    goto :goto_0
.end method

.method public isResourceBeingReturned(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)Z
    .locals 1

    move-object v0, p0

    :cond_0
    if-ne v0, p1, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->innerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public markClose(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)V
    .locals 3

    move-object v0, p0

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->markFinallyNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->innerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-nez v0, :cond_0

    return-void
.end method

.method public markClosedInNestedMethod()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    return-void
.end method

.method public mergeCloseStatus(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)I
    .locals 2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->finallyInfo:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result v1

    if-ne v1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->finallyInfo:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->hasNullInfoFor(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p2, 0x10

    :cond_1
    if-eq p1, p4, :cond_2

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->mergeCloseStatus(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)I

    move-result p1

    return p1

    :cond_2
    return p2
.end method

.method public nameForReporting(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->UNASSIGNED_CLOSEABLE_NAME:[C

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object p2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, p2, v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v0

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, p2, v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result p1

    if-eq v0, p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->UNASSIGNED_CLOSEABLE_NAME_TEMPLATE:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->TEMPLATE_ARGUMENT:[C

    invoke-static {p2, v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([C[C[C)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public recordErrorLocation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->recordedLocations:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->recordedLocations:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->recordedLocations:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reportError(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne p3, v1, :cond_1

    and-int/lit8 p3, v0, 0x8

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_1
    and-int/lit8 p3, p3, 0x30

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    const/16 p3, 0x40

    if-eqz v3, :cond_4

    and-int/lit8 v0, v0, 0x60

    if-eqz v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->potentiallyUnclosedCloseable(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_1

    :cond_4
    and-int/2addr v0, p3

    if-eqz v0, :cond_5

    return v2

    :cond_5
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unclosedCloseable(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :goto_1
    if-eqz v3, :cond_6

    const/16 p3, 0x20

    :cond_6
    if-nez p2, :cond_8

    move-object p1, p0

    :cond_7
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    or-int/2addr p2, p3

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->innerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-nez p1, :cond_7

    :cond_8
    return p3
.end method

.method public reportExplicitClosing(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;)V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    and-int/lit16 v1, v0, 0x94

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->explicitlyClosedAutoCloseable(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)V

    :cond_0
    return-void
.end method

.method public reportRecordedErrors(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;IZ)Z
    .locals 4

    move-object v0, p0

    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->innerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-nez v0, :cond_0

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->neverClosedAtLocations()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p2, 0x2

    :cond_2
    and-int/lit8 p3, p2, 0x32

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->reportError(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    return v2

    :cond_3
    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->recordedLocations:Ljava/util/HashMap;

    const/4 p3, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v0, p3

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p3, :cond_5

    move-object p1, p0

    :cond_4
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    or-int/2addr p2, p3

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->globalClosingState:I

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->innerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-nez p1, :cond_4

    :cond_5
    move p3, v0

    goto :goto_2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->reportError(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result v0

    or-int/2addr p3, v0

    move v0, v2

    goto :goto_1

    :cond_7
    :goto_2
    return p3
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->registerTrackingVariable(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)I

    move-result p1

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    return-void
.end method

.method public withdraw()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->removeTrackingVar(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)V

    return-void
.end method
