.class public Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;
.super Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
.source "SourceFile"


# instance fields
.field public initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

.field public initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr p1, p2

    and-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    return-void
.end method


# virtual methods
.method public addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-object p0
.end method

.method public addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-object p0
.end method

.method public addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-object p0
.end method

.method public asNegatedCondition()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-object p0
.end method

.method public copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    return-object v0
.end method

.method public hasNullInfoFor(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->hasNullInfoFor(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->hasNullInfoFor(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-object v0
.end method

.method public initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-object v0
.end method

.method public isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isPotentiallyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isPotentiallyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isProtectedNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isProtectedNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isProtectedNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isProtectedNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isProtectedNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isProtectedNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public markAsComparedEqualToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsComparedEqualToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsComparedEqualToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    return-void
.end method

.method public markAsComparedEqualToNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsComparedEqualToNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsComparedEqualToNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    return-void
.end method

.method public markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    return-void
.end method

.method public markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    return-void
.end method

.method public markAsDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    return-void
.end method

.method public markAsDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    return-void
.end method

.method public markAsDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    return-void
.end method

.method public markPotentiallyNonNullBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markPotentiallyNonNullBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markPotentiallyNonNullBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    return-void
.end method

.method public markPotentiallyNullBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markPotentiallyNullBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markPotentiallyNullBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    return-void
.end method

.method public markPotentiallyUnknownBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markPotentiallyUnknownBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markPotentiallyUnknownBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    return-void
.end method

.method public mergeDefiniteInitsWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergeDefiniteInitsWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    return-object p1
.end method

.method public nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->unconditionalInitsWithoutSideEffect()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    return-object v0
.end method

.method public resetAssignmentInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->resetAssignmentInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->resetAssignmentInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    return-void
.end method

.method public resetNullInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->resetNullInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->resetNullInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    return-void
.end method

.method public safeInitsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-object v0
.end method

.method public setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 1

    if-nez p1, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlowInfo<true: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", false: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    return-object v0
.end method

.method public unconditionalFieldLessCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalFieldLessCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalFieldLessCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    return-object v0
.end method

.method public unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    return-object v0
.end method

.method public unconditionalInitsWithoutSideEffect()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenTrue:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ConditionalFlowInfo;->initsWhenFalse:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    return-object v0
.end method
