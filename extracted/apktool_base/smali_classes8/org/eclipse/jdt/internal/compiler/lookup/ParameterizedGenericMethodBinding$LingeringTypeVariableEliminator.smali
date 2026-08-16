.class Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LingeringTypeVariableEliminator"
.end annotation


# instance fields
.field private final scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

.field private final substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field private final variables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;->variables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;->substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    return-void
.end method


# virtual methods
.method public environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public isRawSubstitution()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 9

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;->variables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v0, v1, v0

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;->substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;->variables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-direct {v0, v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;-><init>([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;->substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    aget-object p1, v1, p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_2

    move-object v1, v0

    :cond_2
    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    const/4 v7, 0x0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1
.end method
