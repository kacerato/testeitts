.class public Lorg/eclipse/jdt/internal/compiler/lookup/PolyParameterizedGenericMethodBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;
.source "SourceFile"


# instance fields
.field private wrappedBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;)V
    .locals 7

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->inferredWithUncheckedConversion:Z

    const/4 v5, 0x0

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->targetType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;ZZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyParameterizedGenericMethodBinding;->wrappedBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PolyParameterizedGenericMethodBinding;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/PolyParameterizedGenericMethodBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyParameterizedGenericMethodBinding;->wrappedBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PolyParameterizedGenericMethodBinding;->wrappedBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyParameterizedGenericMethodBinding;->wrappedBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
