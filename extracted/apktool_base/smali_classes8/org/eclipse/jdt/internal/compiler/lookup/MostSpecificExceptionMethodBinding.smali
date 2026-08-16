.class public Lorg/eclipse/jdt/internal/compiler/lookup/MostSpecificExceptionMethodBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
.source "SourceFile"


# instance fields
.field private originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 7

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MostSpecificExceptionMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    return-void
.end method


# virtual methods
.method public original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MostSpecificExceptionMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0
.end method
