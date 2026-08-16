.class public Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
.source "SourceFile"


# instance fields
.field private env:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field private typeUnresolved:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->typeUnresolved:Z

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->env:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-void
.end method


# virtual methods
.method public getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->resolve()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->env:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->typeUnresolved:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->resolve()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->pairs:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->env:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    goto :goto_4

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->pairs:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->getName()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    array-length v5, v2

    if-ne v5, v3, :cond_2

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->setMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->env:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    iput-boolean v3, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    :try_start_0
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    invoke-virtual {v2, v5, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    instance-of v1, v2, [Ljava/lang/Object;

    if-eqz v1, :cond_6

    check-cast v2, [Ljava/lang/Object;

    move v1, v4

    :goto_1
    array-length v3, v2

    if-lt v1, v3, :cond_4

    goto :goto_2

    :cond_4
    aget-object v3, v2, v1

    instance-of v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz v5, :cond_5

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->env:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v3, v5, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->env:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    goto :goto_0

    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->env:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    throw v0

    :cond_7
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->pairs:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    return-object v0
.end method

.method public resolve()V
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->typeUnresolved:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->env:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->env:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->typeUnresolved:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;->env:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
