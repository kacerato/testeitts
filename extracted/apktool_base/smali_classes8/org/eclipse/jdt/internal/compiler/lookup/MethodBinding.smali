.class public Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
.source "SourceFile"


# instance fields
.field public declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field public defaultNullness:I

.field public modifiers:I

.field public parameterNames:[[C

.field public parameterNonNullness:[Ljava/lang/Boolean;

.field public parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public receiver:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public selector:[C

.field signature:[C

.field public tagBits:J

.field public thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field protected typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

.field public typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;-><init>()V

    .line 2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    .line 4
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETER_NAMES:[[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNames:[[C

    return-void
.end method

.method public constructor <init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;-><init>()V

    .line 6
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 7
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    .line 8
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETER_NAMES:[[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNames:[[C

    .line 9
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 10
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    .line 11
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p4, :cond_0

    .line 12
    array-length p1, p4

    if-nez p1, :cond_1

    :cond_0
    sget-object p4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_1
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p5, :cond_2

    .line 13
    array-length p1, p5

    if-nez p1, :cond_3

    :cond_2
    sget-object p5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_3
    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 14
    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p6, :cond_4

    .line 15
    invoke-virtual {p6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStrictfp()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isNative()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result p1

    if-nez p1, :cond_4

    .line 17
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_4
    return-void
.end method

.method public constructor <init>(I[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 7

    .line 18
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;-><init>()V

    .line 20
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 21
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    .line 22
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETER_NAMES:[[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNames:[[C

    .line 23
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 24
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    .line 25
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 26
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 27
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 28
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 29
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->retrieveAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->storeAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;)V

    return-void
.end method

.method public static getNonNullByDefaultValue(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    array-length p0, v0

    if-lez p0, :cond_2

    move p0, v1

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    return p0

    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->nullLocationBitsFromAnnotationValue(Ljava/lang/Object;)I

    move-result v2

    or-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p0

    if-eqz p0, :cond_5

    array-length v0, p0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getDefaultValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->nullLocationBitsFromAnnotationValue(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_5
    const/16 p0, 0x38

    return p0
.end method

.method private hasNonNullDefaultFor(ILorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Z
    .locals 1

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v0, 0x4000000

    and-int/2addr p2, v0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    if-eqz p2, :cond_2

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNonNullDefaultFor(II)Z

    move-result p1

    return p1
.end method

.method private makeRawArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 12

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->boundsCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->upperBound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->makeRawArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    array-length v3, v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->boundsCount()I

    move-result v4

    if-ne v4, v3, :cond_3

    aget-object p2, v0, v1

    invoke-virtual {p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    add-int/lit8 p2, v3, -0x1

    new-array v5, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    if-lt v2, v3, :cond_2

    :goto_1
    move-object v9, v4

    move-object v10, v5

    goto :goto_3

    :cond_2
    add-int/lit8 p2, v2, -0x1

    aget-object v6, v0, v2

    invoke-virtual {p1, v6, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    aput-object v6, v5, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    new-array v5, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move p2, v1

    :goto_2
    if-lt p2, v3, :cond_4

    goto :goto_1

    :goto_3
    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p1

    return-object p1

    :cond_4
    aget-object v2, v0, p2

    invoke-virtual {p1, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    aput-object v2, v5, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public final areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 6

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    array-length v0, v0

    array-length v2, p1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    move v2, v3

    :goto_0
    if-lt v2, v0, :cond_2

    return v1

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v2

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    aget-object v5, p1, v2

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final areParametersCompatibleWith([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    array-length v1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    add-int/lit8 v2, v0, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v0, v2

    aget-object v1, p1, v2

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_4

    return v3

    :cond_0
    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v0, v2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    move v4, v2

    :goto_0
    if-lt v4, v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v5, p1, v4

    invoke-static {v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, p1, v4

    invoke-virtual {v5, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-nez v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eq v2, v1, :cond_4

    return v3

    :cond_4
    :goto_1
    move v1, v2

    :cond_5
    move v0, v3

    :goto_2
    if-lt v0, v1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v2, v2, v0

    aget-object v4, p1, v0

    invoke-static {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_7

    aget-object v2, p1, v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-nez v2, :cond_7

    return v3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 6

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    array-length v0, v0

    array-length v2, p1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    move v2, v3

    :goto_0
    if-lt v2, v0, :cond_2

    return v1

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v2

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final areTypeVariableErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 6

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    array-length v0, v0

    array-length v2, p1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    move v2, v3

    :goto_0
    if-lt v2, v0, :cond_2

    return v1

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v4, v4, v2

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    aget-object v5, p1, v2

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public asRawMethod(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    array-length v0, v0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    invoke-virtual {p1, p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v3, v3, v2

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->makeRawArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isProtected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne p2, v0, :cond_2

    return v1

    .line 6
    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->isSuperAccess()Z

    move-result p1

    return p1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    :goto_0
    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    if-nez p2, :cond_5

    .line 9
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 10
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    :goto_1
    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    if-nez p2, :cond_4

    .line 11
    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1

    .line 12
    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_6
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne p1, p2, :cond_7

    return v1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z
    .locals 3

    .line 15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 17
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 7

    .line 18
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_3

    .line 20
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p3

    iget-wide v0, p3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v4, 0x340000

    cmp-long p3, v0, v4

    if-gez p3, :cond_0

    return v2

    .line 21
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->isTypeAccess()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->receiverIsImplicitThis()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 22
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    .line 23
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v3

    :cond_5
    if-nez v0, :cond_7

    .line 24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getCurrentPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne p1, p2, :cond_6

    return v3

    :cond_6
    return v2

    .line 25
    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isProtected()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 26
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p3

    if-eqz p3, :cond_8

    return v3

    .line 27
    :cond_8
    iget-object p3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne p3, v1, :cond_9

    return v3

    .line 28
    :cond_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    .line 29
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move p3, v2

    .line 30
    :cond_a
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 31
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->isSuperAccess()Z

    move-result v5

    if-eqz v5, :cond_b

    return v3

    .line 32
    :cond_b
    instance-of v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v5, :cond_c

    return v2

    .line 33
    :cond_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_e

    if-lez p3, :cond_d

    .line 34
    invoke-interface {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setDepth(I)V

    :cond_d
    return v3

    .line 35
    :cond_e
    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    if-eqz v5, :cond_11

    :cond_f
    if-lez p3, :cond_10

    .line 36
    invoke-interface {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setDepth(I)V

    :cond_10
    return v3

    :cond_11
    add-int/lit8 p3, p3, 0x1

    .line 37
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_a

    return v2

    .line 38
    :cond_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result p2

    if-eqz p2, :cond_18

    .line 39
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 40
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p2

    iget-wide p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v4, 0x320000

    cmp-long p2, p2, v4

    if-gtz p2, :cond_13

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result p2

    if-eqz p2, :cond_13

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->isErasureBoundTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_0

    :cond_13
    return v2

    .line 41
    :cond_14
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 42
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    :goto_1
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    if-nez v0, :cond_16

    .line 43
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 44
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    :goto_2
    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    if-nez p2, :cond_15

    .line 45
    invoke-static {p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_17

    return v2

    .line 46
    :cond_15
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    goto :goto_2

    .line 47
    :cond_16
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    goto :goto_1

    :cond_17
    return v3

    .line 48
    :cond_18
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 49
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eq v0, p3, :cond_19

    return v2

    .line 50
    :cond_19
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v0, :cond_1a

    return v2

    .line 51
    :cond_1a
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    .line 52
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 53
    :cond_1b
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 54
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v3

    .line 55
    :cond_1c
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v3

    .line 56
    :cond_1d
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 57
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v1

    if-nez v1, :cond_1e

    if-eqz v0, :cond_1e

    if-eq v0, p3, :cond_1e

    return v2

    .line 58
    :cond_1e
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_1b

    return v2
.end method

.method public collectMissingTypes(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectMissingTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v3, v0

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v2, v0

    move v4, v1

    :goto_2
    if-lt v4, v2, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectMissingTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_3
    if-lt v0, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    aget-object v3, v5, v0

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectMissingTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectMissingTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectMissingTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    return-object p1
.end method

.method public computeSubstitutedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v1, v0

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v3, v2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    if-lt p2, v1, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v0, v0, p2

    aget-object v3, v2, p2

    invoke-virtual {v0, v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->isInterchangeableWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public computeUniqueKey(Z)[C
    .locals 12

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeUniqueKey(Z)[C

    move-result-object p1

    array-length v1, p1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    if-ne v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    array-length v2, v2

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->genericSignature()[C

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    if-nez v5, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature()[C

    move-result-object v3

    :cond_2
    array-length v6, v3

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v7, v7

    if-lez v7, :cond_6

    if-eqz v5, :cond_3

    const/16 v5, 0x5e

    invoke-static {v5, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v5

    if-gez v5, :cond_6

    :cond_3
    new-array v5, v7, [[C

    move v8, v0

    move v9, v8

    :goto_2
    if-lt v8, v7, :cond_4

    goto :goto_3

    :cond_4
    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v10, v10, v8

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature()[C

    move-result-object v10

    aput-object v10, v5, v8

    array-length v10, v10

    add-int/2addr v10, v4

    add-int/2addr v9, v10

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    move v9, v0

    :goto_3
    add-int/lit8 v4, v1, 0x1

    add-int v8, v4, v2

    add-int v10, v8, v6

    add-int v11, v10, v9

    new-array v11, v11, [C

    invoke-static {p1, v0, v11, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x2e

    aput-char p1, v11, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {p1, v0, v11, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v0, v11, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v9, :cond_9

    move p1, v0

    :goto_4
    if-lt p1, v7, :cond_7

    goto :goto_5

    :cond_7
    aget-object v1, v5, p1

    if-eqz v1, :cond_8

    add-int/lit8 v2, v10, 0x1

    const/16 v3, 0x7c

    aput-char v3, v11, v10

    array-length v3, v1

    invoke-static {v1, v0, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    move v10, v2

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    return-object v11
.end method

.method public final constantPoolName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    return-object v0
.end method

.method public doesParameterLengthMatch(I)Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/2addr p1, v1

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method public fillInDefaultNonNullness(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZLorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-wide/high16 v3, 0x100000000000000L

    if-lt v1, v0, :cond_5

    if-eqz v2, :cond_1

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v5, 0x400

    or-long/2addr v0, v5

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p2

    if-nez p2, :cond_3

    iget-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v5, 0x180000000000000L

    and-long/2addr v5, p2

    cmp-long v2, v5, v0

    if-nez v2, :cond_3

    or-long p1, p2, v3

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    iget-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    and-long/2addr p2, v3

    cmp-long p2, p2, v0

    if-eqz p2, :cond_4

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullAnnotationIsRedundant(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-interface {p3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;->hasNonNullDefaultForParam(I)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    aget-object v6, v5, v1

    if-nez v6, :cond_9

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v5, v1

    if-eqz p1, :cond_8

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    or-long/2addr v3, v5

    iput-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    :cond_8
    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullAnnotationIsRedundant(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)V

    :cond_a
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public fillInDefaultNonNullness18(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasNonNullDefaultForParameter(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;->hasAnyNonNullDefault()Z

    move-result v5

    const-wide/high16 v8, 0x180000000000000L

    const-wide/16 v10, 0x0

    if-eqz v5, :cond_7

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v5

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-lt v12, v5, :cond_1

    if-eqz v13, :cond_7

    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v12, 0x400

    or-long/2addr v4, v12

    iput-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_2

    :cond_1
    invoke-interface {v4, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;->hasNonNullDefaultForParam(I)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_1

    :cond_2
    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v14, v14, v12

    iget-object v15, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v15, v15, v12

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->acceptsNonNullDefault()Z

    move-result v15

    if-nez v15, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v6, v14, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v16, v6, v8

    cmp-long v16, v16, v10

    if-nez v16, :cond_5

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v7

    filled-new-array {v7}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v7

    invoke-virtual {v2, v14, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    aput-object v7, v6, v12

    if-eqz v1, :cond_4

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v6, v6, v12

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v7, v12

    iput-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_4
    const/4 v6, 0x1

    move v13, v6

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    const-wide/high16 v14, 0x100000000000000L

    and-long/2addr v6, v14

    cmp-long v6, v6, v10

    if-eqz v6, :cond_6

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v6, v6, v12

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->MAIN_TYPE:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v1, v12}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullAnnotationIsRedundant(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)V

    :cond_6
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasNonNullDefaultForReturnType(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->acceptsNonNullDefault()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v6, v4, v8

    cmp-long v6, v6, v10

    if-nez v6, :cond_8

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    filled-new-array {v1}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_3

    :cond_8
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    if-eqz v2, :cond_9

    const-wide/high16 v2, 0x100000000000000L

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-eqz v2, :cond_9

    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->MAIN_TYPE:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullAnnotationIsRedundant(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)V

    :cond_9
    :goto_3
    return-void
.end method

.method public findOriginalInheritedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([CI)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    if-ne v3, p1, :cond_2

    aget-object p1, v0, v2

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public genericMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 0

    return-object p0
.end method

.method public genericSignature()[C
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v2, v2

    move v3, v4

    :goto_0
    if-lt v3, v2, :cond_1

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->genericSignature()[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v2

    move v3, v4

    :goto_2
    if-lt v3, v2, :cond_7

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v5, v2

    move v2, v4

    :goto_3
    if-lt v2, v5, :cond_4

    goto :goto_5

    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v3, v3, v2

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_6

    move v1, v4

    :goto_4
    if-lt v1, v5, :cond_5

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-array v2, v1, [C

    invoke-virtual {v0, v4, v1, v2, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v2

    :cond_5
    const/16 v2, 0x5e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public final getAccessFlags()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const v1, 0x1ffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getAllTypeVariables(Z)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p1

    array-length v1, v0

    array-length v2, p1

    if-nez v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    add-int v3, v1, v2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getAnnotationTagBits()J
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide v3, 0x200000000L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v6, v7, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v6

    iget-boolean v6, v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v6, :cond_1

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    int-to-long v7, v6

    cmp-long v3, v7, v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v3, :cond_1

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    invoke-virtual {v1, v6, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->checkRedundantDefaultNullness(II)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {v2, v5, v3, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullDefaultAnnotationIsRedundant(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    :cond_1
    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    return-wide v0
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->retrieveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v3, 0x800000000000000L

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isAnnotationMethod()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    :cond_0
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->retrieveAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getParameterAnnotations()[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->retrieveAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;->getParameterAnnotations()[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_8

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v5, 0x400

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    new-array v3, v0, [[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v1

    :goto_1
    if-lt v5, v0, :cond_2

    goto :goto_5

    :cond_2
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v2, v2, v5

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v4, :cond_3

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-static {v6, v4, v7}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    aput-object v2, v3, v5

    goto :goto_2

    :cond_3
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    aput-object v2, v3, v5

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-lt v5, v0, :cond_5

    goto :goto_5

    :cond_5
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    aput-object v1, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-lt v5, v0, :cond_7

    :goto_5
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->setParameterAnnotations([[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)V

    move-object v1, v3

    goto :goto_6

    :cond_7
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    aput-object v1, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    return-object v1
.end method

.method public final getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object v0
.end method

.method public getTypeVariable([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v0, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object p1, p1, v0

    return-object p1
.end method

.method public hasNonNullDefaultForParameter(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;
    .locals 14

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v3, v0, :cond_2

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider$MixedProvider;

    invoke-direct {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider$MixedProvider;-><init>([Z)V

    return-object p1

    :cond_0
    if-eqz v4, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;->TRUE_PROVIDER:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;->FALSE_PROVIDER:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;

    :goto_1
    return-object p1

    :cond_2
    if-eqz p1, :cond_4

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v6, :cond_4

    array-length v7, v6

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    aget-object v6, v6, v3

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v6, -0x1

    :goto_3
    if-eqz p1, :cond_5

    if-ltz v6, :cond_5

    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->localNonNullByDefaultValue(I)I

    move-result v7

    goto :goto_4

    :cond_5
    move v7, v2

    :goto_4
    if-nez v7, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getParameterAnnotations()[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v8

    if-eqz v8, :cond_8

    aget-object v8, v8, v3

    array-length v9, v8

    move v10, v2

    :goto_5
    if-lt v10, v9, :cond_6

    goto :goto_7

    :cond_6
    aget-object v11, v8, v10

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v12

    const/16 v13, 0x80

    invoke-virtual {v12, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getNonNullByDefaultValue(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)I

    move-result v11

    or-int/2addr v7, v11

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_8
    :goto_7
    const/4 v8, 0x1

    if-eqz v7, :cond_a

    and-int/lit8 v6, v7, 0x8

    if-eqz v6, :cond_9

    move v6, v8

    goto :goto_8

    :cond_9
    move v6, v2

    goto :goto_8

    :cond_a
    const/16 v7, 0x8

    invoke-direct {p0, v7, p1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasNonNullDefaultFor(ILorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Z

    move-result v6

    :goto_8
    if-eqz v6, :cond_b

    move v4, v8

    goto :goto_9

    :cond_b
    move v5, v8

    :goto_9
    aput-boolean v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public hasNonNullDefaultForReturnType(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    :goto_0
    const/16 v1, 0x10

    invoke-direct {p0, v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasNonNullDefaultFor(ILorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Z

    move-result p1

    return p1
.end method

.method public hasSubstitutedParameters()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasSubstitutedReturnType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isAbstract()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isBridge()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isConstructor()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isDefault()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isProtected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isDefaultAbstract()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDefaultMethod()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isDeprecated()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isFinal()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isImplementing()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isMain()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    array-length v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->MAIN:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x9

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    return v3
.end method

.method public final isNative()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isOrEnclosedByPrivateType()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isOrEnclosedByPrivateType()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final isOverriding()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isParameterizedGeneric()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPolymorphic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isPrivate()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isProtected()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isPublic()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isStatic()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isStrictfp()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isSynchronized()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isSynthetic()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isUsed()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVarargs()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isViewedAsDeprecated()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v1, 0x300000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVoidMethod()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final kind()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 0

    return-object p0
.end method

.method public readableName()[C
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_0
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eq v1, v2, :cond_3

    array-length v1, v1

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_1

    goto :goto_2

    :cond_1
    if-lez v2, :cond_2

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public redeclaresPublicObjectMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    move v3, v1

    :goto_1
    if-lt v3, v2, :cond_1

    return v1

    :cond_1
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v6, v6

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->storeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    return-void
.end method

.method public setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;->storeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->storeAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;)V

    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v3, 0x800000000000000L

    or-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->retrieveAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;->getParameterAnnotations()[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :goto_0
    return-void
.end method

.method public setParameterAnnotations([[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->retrieveAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, p1, v1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :goto_0
    return-void
.end method

.method public final setSelector([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature:[C

    return-void
.end method

.method public setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-void
.end method

.method public shallowOriginal()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0
.end method

.method public shortReadableName()[C
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->shortReadableName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_0
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    array-length v1, v1

    move v2, v3

    :goto_1
    if-lt v2, v1, :cond_1

    goto :goto_2

    :cond_1
    if-lez v2, :cond_2

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-array v2, v1, [C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v2
.end method

.method public final signature()[C
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature:[C

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x28

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringSignature:[C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 8
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_1
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 9
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    if-eqz v2, :cond_5

    .line 10
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->syntheticEnclosingInstanceTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 11
    array-length v5, v4

    move v6, v3

    :goto_1
    if-lt v6, v5, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    aget-object v7, v4, v6

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature()[C

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 13
    :cond_4
    :goto_2
    instance-of v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-eqz v4, :cond_5

    .line 14
    move-object v1, p0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 15
    :cond_5
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eq v1, v4, :cond_7

    move v4, v3

    .line 16
    :goto_3
    array-length v5, v1

    if-lt v4, v5, :cond_6

    goto :goto_4

    .line 17
    :cond_6
    aget-object v5, v1, v4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v2, :cond_b

    .line 18
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->syntheticOuterLocalVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v2

    if-nez v2, :cond_8

    move v4, v3

    goto :goto_5

    .line 19
    :cond_8
    array-length v4, v2

    :goto_5
    move v5, v3

    :goto_6
    if-lt v5, v4, :cond_a

    .line 20
    array-length v1, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v6, v2

    :goto_7
    if-lt v1, v6, :cond_9

    goto :goto_8

    .line 21
    :cond_9
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 22
    :cond_a
    aget-object v6, v2, v5

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    :goto_8
    const/16 v1, 0x29

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 24
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_c

    .line 25
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 26
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 27
    new-array v2, v1, [C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature:[C

    .line 28
    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 29
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature:[C

    return-object v0
.end method

.method public signature(Lorg/eclipse/jdt/internal/compiler/ClassFile;)[C
    .locals 14

    .line 30
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature:[C

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x800

    if-eqz v0, :cond_c

    .line 31
    iget-wide v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    and-long/2addr v7, v5

    cmp-long v0, v7, v1

    if-eqz v0, :cond_b

    .line 32
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    .line 33
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_4

    .line 35
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->syntheticEnclosingInstanceTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 36
    array-length v8, v0

    move v9, v3

    :goto_1
    if-lt v9, v8, :cond_1

    goto :goto_2

    .line 37
    :cond_1
    aget-object v10, v0, v9

    .line 38
    iget-wide v11, v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v11, v5

    cmp-long v11, v11, v1

    if-eqz v11, :cond_2

    .line 39
    invoke-static {p1, v10}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 40
    :cond_3
    :goto_2
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-eqz v0, :cond_4

    .line 41
    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 42
    :cond_4
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eq v7, v0, :cond_7

    .line 43
    array-length v0, v7

    :goto_3
    if-lt v3, v0, :cond_5

    goto :goto_4

    .line 44
    :cond_5
    aget-object v8, v7, v3

    .line 45
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    .line 46
    iget-wide v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v9, v5

    cmp-long v9, v9, v1

    if-eqz v9, :cond_6

    .line 47
    invoke-static {p1, v8}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v4, :cond_a

    .line 48
    array-length v0, v7

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v3

    :goto_5
    if-lt v0, v3, :cond_8

    goto :goto_6

    .line 49
    :cond_8
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v0

    .line 50
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    .line 51
    iget-wide v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v7, v5

    cmp-long v7, v7, v1

    if-eqz v7, :cond_9

    .line 52
    invoke-static {p1, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 53
    :cond_a
    :goto_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_b

    .line 54
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    .line 55
    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-eqz v1, :cond_b

    .line 56
    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 57
    :cond_b
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature:[C

    return-object p1

    .line 58
    :cond_c
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v7, v7

    add-int/2addr v7, v4

    mul-int/lit8 v7, v7, 0x14

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v7, 0x28

    .line 59
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 61
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 62
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 63
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringSignature:[C

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 64
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_d
    if-eqz v8, :cond_e

    .line 65
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_7

    :cond_e
    move v4, v3

    :goto_7
    if-eqz v4, :cond_12

    .line 66
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->syntheticEnclosingInstanceTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 67
    array-length v9, v8

    move v10, v3

    :goto_8
    if-lt v10, v9, :cond_f

    goto :goto_9

    .line 68
    :cond_f
    aget-object v11, v8, v10

    .line 69
    iget-wide v12, v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v12, v5

    cmp-long v12, v12, v1

    if-eqz v12, :cond_10

    .line 70
    iget-wide v12, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v12, v5

    iput-wide v12, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 71
    invoke-static {p1, v11}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 72
    :cond_10
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature()[C

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 73
    :cond_11
    :goto_9
    instance-of v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-eqz v8, :cond_12

    .line 74
    move-object v7, p0

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 75
    :cond_12
    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eq v7, v8, :cond_15

    .line 76
    array-length v8, v7

    move v9, v3

    :goto_a
    if-lt v9, v8, :cond_13

    goto :goto_b

    .line 77
    :cond_13
    aget-object v10, v7, v9

    .line 78
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    .line 79
    iget-wide v12, v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v12, v5

    cmp-long v12, v12, v1

    if-eqz v12, :cond_14

    .line 80
    iget-wide v12, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v12, v5

    iput-wide v12, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 81
    invoke-static {p1, v11}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 82
    :cond_14
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_15
    :goto_b
    if-eqz v4, :cond_1a

    .line 83
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->syntheticOuterLocalVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v4

    if-nez v4, :cond_16

    move v8, v3

    goto :goto_c

    .line 84
    :cond_16
    array-length v8, v4

    :goto_c
    move v9, v3

    :goto_d
    if-lt v9, v8, :cond_19

    .line 85
    array-length v4, v7

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v10, v7

    :goto_e
    if-lt v4, v10, :cond_17

    goto :goto_f

    .line 86
    :cond_17
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v7, v4

    .line 87
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    .line 88
    iget-wide v11, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v11, v5

    cmp-long v9, v11, v1

    if-eqz v9, :cond_18

    .line 89
    iget-wide v11, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v11, v5

    iput-wide v11, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 90
    invoke-static {p1, v8}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 91
    :cond_18
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 92
    :cond_19
    aget-object v10, v4, v9

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_1a
    :goto_f
    const/16 v4, 0x29

    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v4, :cond_1c

    .line 95
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    .line 96
    iget-wide v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v7, v5

    cmp-long v1, v7, v1

    if-eqz v1, :cond_1b

    .line 97
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v1, v5

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 98
    invoke-static {p1, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 99
    :cond_1b
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 100
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    .line 101
    new-array v1, p1, [C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature:[C

    .line 102
    invoke-virtual {v0, v3, p1, v1, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 103
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature:[C

    return-object p1
.end method

.method public final sourceEnd()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->sourceEnd()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return v0
.end method

.method public sourceLambda()Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isSynthetic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    array-length v2, v0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne p0, v4, :cond_2

    return-object v3

    :catch_0
    :cond_4
    :goto_1
    return-object v1
.end method

.method public final sourceStart()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->sourceStart()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    return v0
.end method

.method public tiebreakMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const-string v1, "[unresolved] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printModifiers(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->debugName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "<no type>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_1

    :cond_2
    const-string v2, "<no selector>"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const-string v2, ", "

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eq v1, v4, :cond_7

    array-length v1, v1

    move v4, v3

    :goto_2
    if-lt v4, v1, :cond_3

    goto :goto_4

    :cond_3
    if-lez v4, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v5, v5, v4

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->debugName()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_5
    const-string v5, "<no argument type>"

    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const-string v1, "<no argument types>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    :goto_4
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_b

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v1, v4, :cond_c

    const-string v1, "throws "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v1, v1

    :goto_5
    if-lt v3, v1, :cond_8

    goto :goto_7

    :cond_8
    if-lez v3, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v4, v4, v3

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->debugName()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_a
    const-string v4, "<no exception type>"

    :goto_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    const-string v1, "<no exception types>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    return-object v0
.end method

.method public updateTypeVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_1

    aput-object p2, v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
