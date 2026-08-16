.class public abstract Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

.field public static final FREE_TYPEVARIABLE:I = 0x30

.field public static final NON_NULL:I = 0x4

.field public static final NULL:I = 0x2

.field public static final NULL_FLAG_MASK:I = 0x4

.field public static final POTENTIALLY_NON_NULL:I = 0x20

.field public static final POTENTIALLY_NULL:I = 0x10

.field public static final POTENTIALLY_UNKNOWN:I = 0x8

.field public static final REACHABLE:I = 0x0

.field public static final UNKNOWN:I = 0x1

.field public static final UNREACHABLE:I = 0x3

.field public static final UNREACHABLE_BY_NULLANALYSIS:I = 0x2

.field public static final UNREACHABLE_OR_DEAD:I = 0x1

.field public static final UNROOTED:I = 0x40


# instance fields
.field public tagBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    const/4 v1, 0x3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static conditional(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    return-object v0
.end method

.method public static initial(I)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;-><init>()V

    iput p0, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    return-object v0
.end method

.method public static mergeNullStatus(II)I
    .locals 6

    const/16 v0, 0x20

    const/16 v1, 0x10

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    move p0, v5

    goto :goto_2

    :cond_0
    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v4

    goto :goto_2

    :cond_3
    :goto_1
    move p0, v5

    move v5, v4

    :goto_2
    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    goto :goto_5

    :cond_4
    move v5, v4

    goto :goto_3

    :cond_5
    move p0, v4

    goto :goto_4

    :cond_6
    :goto_3
    move p0, v4

    goto :goto_5

    :cond_7
    :goto_4
    move v5, v4

    :goto_5
    if-eqz v5, :cond_9

    if-eqz p0, :cond_8

    return v1

    :cond_8
    return v3

    :cond_9
    if-eqz p0, :cond_a

    return v2

    :cond_a
    return v4
.end method

.method public static mergedOptimizedBranches(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ZLorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ZZ)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne p0, p1, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne p2, p1, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static mergedOptimizedBranchesIfElse(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ZLorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ZZLorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;Z)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne p0, p1, :cond_2

    if-eqz p4, :cond_2

    if-nez p7, :cond_1

    iget-object p0, p6, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez p0, :cond_0

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    if-eq p2, p1, :cond_c

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    if-eqz p3, :cond_8

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne p2, p1, :cond_7

    if-eqz p4, :cond_7

    if-nez p7, :cond_6

    iget-object p2, p6, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez p2, :cond_4

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p2

    if-eq p0, p1, :cond_5

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result p0

    invoke-virtual {p2, p0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_5
    move-object p0, p2

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    goto/16 :goto_0

    :cond_8
    iget p1, p5, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p3, p1, 0x3

    const/4 p4, 0x2

    if-nez p3, :cond_9

    iget p3, p6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p3, p3, 0x80

    if-eqz p3, :cond_9

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq p0, p3, :cond_9

    if-eq p2, p3, :cond_9

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergeDefiniteInitsWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p3, p1, 0x1

    if-eqz p3, :cond_c

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p2, p2, 0x3

    if-ne p2, p4, :cond_c

    and-int/lit8 p1, p1, -0x2

    or-int/2addr p1, p4

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    goto :goto_0

    :cond_9
    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_b

    iget p1, p6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_b

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq p0, p1, :cond_b

    if-eq p2, p1, :cond_b

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergeDefiniteInitsWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_a

    iget p0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p0, p0, 0x3

    if-ne p0, p4, :cond_a

    and-int/lit8 p0, p2, -0x2

    or-int/2addr p0, p4

    iput p0, p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    :cond_a
    move-object p0, p1

    goto :goto_0

    :cond_b
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p0

    :cond_c
    :goto_0
    return-object p0
.end method

.method public static tagBitsToNullStatus(J)I
    .locals 4

    const-wide/high16 v0, 0x100000000000000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const-wide/high16 v0, 0x80000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    const/16 p0, 0x30

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
.end method

.method public abstract addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
.end method

.method public abstract addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
.end method

.method public asNegatedCondition()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 0

    return-object p0
.end method

.method public canOnlyBeNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isProtectedNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public cannotBeDefinitelyNullOrNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public cannotBeNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isProtectedNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
.end method

.method public abstract hasNullInfoFor(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
.end method

.method public abstract initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
.end method

.method public abstract initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
.end method

.method public abstract isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z
.end method

.method public abstract isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
.end method

.method public abstract isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
.end method

.method public abstract isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
.end method

.method public abstract isDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
.end method

.method public abstract isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z
.end method

.method public abstract isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
.end method

.method public abstract isPotentiallyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
.end method

.method public abstract isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
.end method

.method public abstract isPotentiallyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
.end method

.method public abstract isProtectedNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
.end method

.method public abstract isProtectedNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
.end method

.method public abstract markAsComparedEqualToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
.end method

.method public abstract markAsComparedEqualToNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
.end method

.method public abstract markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V
.end method

.method public abstract markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
.end method

.method public abstract markAsDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
.end method

.method public abstract markAsDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
.end method

.method public abstract markAsDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
.end method

.method public markNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->resetNullInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markPotentiallyUnknownBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_0
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markPotentiallyNullBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_1
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markPotentiallyNonNullBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_2
    and-int/lit8 p2, p2, 0x38

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public abstract markPotentiallyNonNullBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
.end method

.method public abstract markPotentiallyNullBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
.end method

.method public abstract markPotentiallyUnknownBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
.end method

.method public abstract mergeDefiniteInitsWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
.end method

.method public abstract mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
.end method

.method public abstract nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
.end method

.method public nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I
    .locals 3

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 v0, v0, 0x10

    :cond_4
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-eqz p1, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    if-lez v0, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method public reachMode()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public abstract resetAssignmentInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
.end method

.method public abstract resetNullInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
.end method

.method public abstract safeInitsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
.end method

.method public abstract setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne p0, v0, :cond_0

    const-string v0, "FlowInfo.DEAD_END"

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
.end method

.method public abstract unconditionalFieldLessCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
.end method

.method public abstract unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
.end method

.method public abstract unconditionalInitsWithoutSideEffect()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
.end method
