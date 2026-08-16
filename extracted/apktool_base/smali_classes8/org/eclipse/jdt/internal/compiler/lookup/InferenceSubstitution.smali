.class public Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;
.super Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;


# instance fields
.field private environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field private sites:[Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

.field private variables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V
    .locals 2

    .line 5
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->variables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    const/4 p1, 0x1

    .line 4
    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->sites:[Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    return-void
.end method

.method private isInSites(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->sites:[Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    return v0

    :cond_0
    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->isSameSite(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addContext(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution$1;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution$1;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->sites:[Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    array-length v1, v1

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->sites:[Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->sites:[Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->sites:[Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    aput-object p1, v2, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->variables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->variables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    return-object v0
.end method

.method public environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-object v0
.end method

.method public getP(I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->variables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->typeParameter:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method public isRawSubstitution()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSameParameter(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1
.end method

.method public substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->variables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    aget-object v1, v1, v0

    .line 4
    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->isFromInitialSubstitution:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->site:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->isInSites(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->getP(I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->isSameParameter(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 11

    .line 7
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 8
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 9
    :goto_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->variables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    array-length v6, v5

    if-lt v3, v6, :cond_3

    if-eqz v4, :cond_2

    .line 10
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v3, v4, v5, p1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    .line 11
    iput-object v0, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 12
    iput-object v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    aget-object v0, v1, v2

    :goto_1
    iput-object v0, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 14
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-wide v0, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v4, 0x100000

    or-long/2addr v0, v4

    iput-wide v0, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_1
    move-object p1, v3

    :cond_2
    return-object p1

    .line 16
    :cond_3
    aget-object v5, v5, v3

    .line 17
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->getP(I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    .line 18
    invoke-static {v6, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_4

    return-object v5

    .line 19
    :cond_4
    invoke-static {v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    move-object v0, v5

    :goto_2
    move v4, v8

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_9

    .line 20
    array-length v7, v1

    move v9, v2

    :goto_3
    if-lt v9, v7, :cond_6

    goto :goto_4

    .line 21
    :cond_6
    aget-object v10, v1, v9

    invoke-static {v6, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 22
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne v1, v4, :cond_7

    .line 23
    new-array v4, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v2, v4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v4

    .line 24
    :cond_7
    aput-object v5, v1, v9

    goto :goto_2

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
