.class public Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;
.super Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;
    }
.end annotation


# instance fields
.field public isFromInitialSubstitution:Z

.field nullHints:J

.field private prototype:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

.field site:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

.field typeParameter:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field varId:I


# direct methods
.method private constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V
    .locals 7

    .line 1
    invoke-static {p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->makeName(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)[C

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;[CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    .line 2
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->varId:I

    .line 3
    iput-boolean p7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->isFromInitialSubstitution:Z

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;[CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 2

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p4, v0, p2, p5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    .line 5
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->site:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->typeParameter:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 7
    iget-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide p4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v0, 0x180000000000000L

    and-long/2addr p4, v0

    or-long/2addr p2, p4

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 10
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_1

    .line 11
    iget-wide p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr p1, v0

    const-wide/high16 p3, 0x100000000000000L

    cmp-long p3, p1, p3

    if-nez p3, :cond_0

    .line 12
    iget-wide p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr p1, p3

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_0

    .line 13
    :cond_0
    iget-wide p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->nullHints:J

    or-long/2addr p1, p3

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->nullHints:J

    .line 14
    :cond_1
    :goto_0
    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 15
    iput-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    return-void
.end method

.method public static get(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;
    .locals 11

    move-object v1, p0

    move-object v4, p2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->uniqueInferenceVariables:Ljava/util/Map;

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;

    move v2, p1

    invoke-direct {v0, p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;I)V

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-object v9, v0

    goto :goto_0

    :cond_0
    move v2, p1

    const/4 v0, 0x0

    move-object v3, v0

    move-object v9, v3

    :goto_0
    if-nez v3, :cond_2

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v3

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v5

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    if-eqz v9, :cond_1

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v3, v10

    :cond_2
    return-object v3
.end method

.method private static makeName(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)[C
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/16 v2, 0x23

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object p0

    const/16 v0, 0x29

    const/16 v1, 0x28

    invoke-static {v1, p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat(C[CC)[C

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->typeParameter:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->site:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;[CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iput-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->nullHints:J

    iput-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->nullHints:J

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->varId:I

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->varId:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->isFromInitialSubstitution:Z

    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->isFromInitialSubstitution:Z

    iput-object p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    return-object p1
.end method

.method public collectInferenceVariables(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constantPoolName()[C
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public debugName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->site:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->site:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->isSameSite(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->typeParameter:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->typeParameter:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasTypeBit(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->typeParameter:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->site:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->site:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isProperType(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    return-object v0
.end method

.method public bridge synthetic prototype()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object v0

    return-object v0
.end method

.method public qualifiedSourceName()[C
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public readableName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    return-object v0
.end method

.method public sourceName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    return-object v0
.end method

.method public substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    return-object p0
.end method

.method public superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->debugName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
