.class public Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
.source "SourceFile"


# instance fields
.field public closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public inferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

.field private problemReason:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    .line 13
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p1, :cond_1

    const/4 p2, 0x3

    if-eq p4, p2, :cond_1

    .line 14
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 15
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/16 p2, 0x17

    if-eq p4, p2, :cond_0

    const/16 p2, 0x19

    if-ne p4, p2, :cond_1

    .line 16
    :cond_0
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 17
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 18
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 19
    iget-wide p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_1
    return-void
.end method

.method public constructor <init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    if-eqz p2, :cond_0

    .line 3
    array-length p1, p2

    if-nez p1, :cond_1

    :cond_0
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_1
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 4
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->problemReason:I

    .line 5
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-void
.end method

.method public constructor <init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    if-eqz p2, :cond_0

    .line 8
    array-length p1, p2

    if-nez p1, :cond_1

    :cond_0
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_1
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 9
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 10
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->problemReason:I

    .line 11
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-void
.end method


# virtual methods
.method public computeSubstitutedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->computeSubstitutedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findOriginalInheritedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->findOriginalInheritedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public genericMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->genericMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hasSubstitutedParameters()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasSubstitutedParameters()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isParameterizedGeneric()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    return v0
.end method

.method public original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final problemId()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->problemReason:I

    return v0
.end method

.method public shallowOriginal()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->shallowOriginal()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public tiebreakMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tiebreakMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    :goto_0
    return-object v0
.end method
