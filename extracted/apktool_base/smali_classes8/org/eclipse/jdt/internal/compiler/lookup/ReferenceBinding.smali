.class public abstract Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
.source "SourceFile"


# static fields
.field private static final FIELD_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;",
            ">;"
        }
    .end annotation
.end field

.field public static final LUB_GENERIC:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field private static final METHOD_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;",
            ">;"
        }
    .end annotation
.end field

.field protected static samProblemBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;


# instance fields
.field private compatibleCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field public compoundName:[[C

.field constantPoolName:[C

.field public fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

.field fileName:[C

.field public modifiers:I

.field signature:[C

.field protected singleAbstractMethod:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public sourceName:[C

.field typeBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding$1;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->LUB_GENERIC:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding$2;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding$2;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->FIELD_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding$3;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding$3;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->METHOD_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ANONYMOUS_METHOD:[C

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->samProblemBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 2
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    .line 3
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    .line 4
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    .line 5
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 6
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fileName:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fileName:[C

    .line 7
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    .line 8
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature:[C

    .line 9
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compatibleCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compatibleCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    .line 10
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    .line 11
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->singleAbstractMethod:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->singleAbstractMethod:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-void
.end method

.method public static binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)J
    .locals 8

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 6
    :cond_0
    array-length v2, p1

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 7
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-le v4, v2, :cond_2

    return-wide v0

    :cond_2
    sub-int v5, v2, v4

    .line 8
    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .line 9
    aget-object v6, p1, v5

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    array-length v7, v6

    invoke-static {p0, v6, v3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compare([C[CII)I

    move-result v6

    if-gez v6, :cond_3

    add-int/lit8 v2, v5, -0x1

    goto :goto_0

    :cond_3
    if-lez v6, :cond_4

    add-int/lit8 v4, v5, 0x1

    goto :goto_0

    :cond_4
    move v0, v5

    :goto_1
    if-le v0, v4, :cond_6

    add-int/lit8 v1, v0, -0x1

    .line 10
    aget-object v1, p1, v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v1, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-ge v5, v2, :cond_8

    add-int/lit8 v1, v5, 0x1

    .line 11
    aget-object v3, p1, v1

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v3, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    move v5, v1

    goto :goto_2

    :cond_8
    :goto_3
    int-to-long p0, v0

    int-to-long v0, v5

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public static binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    array-length v1, p1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 2
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-le v3, v1, :cond_2

    return-object v0

    :cond_2
    sub-int v4, v1, v3

    .line 3
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    .line 4
    aget-object v5, p1, v4

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    array-length v6, v5

    invoke-static {p0, v5, v2, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compare([C[CII)I

    move-result v5

    if-gez v5, :cond_3

    add-int/lit8 v1, v4, -0x1

    goto :goto_0

    :cond_3
    if-lez v5, :cond_4

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 5
    :cond_4
    aget-object p0, p1, v4

    return-object p0
.end method

.method public static compare([C[CII)I
    .locals 4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_0

    sub-int/2addr p2, p3

    return p2

    :cond_0
    aget-char v0, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-char v1, p1, v1

    if-eq v0, v1, :cond_1

    sub-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v2

    move v1, v3

    goto :goto_0
.end method

.method private static getSourceTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;
    .locals 2

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    :cond_1
    return-object v1
.end method

.method private isCompatibleWith0(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 7

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/4 v2, 0x4

    const/16 v3, 0x804

    const/16 v4, 0x404

    const/16 v5, 0x104

    const/4 v6, 0x0

    if-eq v0, v2, :cond_6

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_6

    const/16 v2, 0x1004

    if-eq v0, v2, :cond_3

    const v2, 0x8004

    if-eq v0, v2, :cond_6

    return v6

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1

    :cond_5
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v2, :cond_6

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->inferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v6

    :cond_8
    :goto_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isIntersectionType18()Z

    move-result v0

    if-eqz v0, :cond_b

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v2, v0

    move p1, v6

    :goto_1
    if-lt p1, v2, :cond_9

    return v1

    :cond_9
    aget-object p2, v0, p1

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-nez p2, :cond_a

    return v6

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->implementsInterface(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v0, :cond_d

    if-eqz p2, :cond_d

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v1, :cond_d

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1

    :cond_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_e

    return v6

    :cond_e
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSuperclassOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p1

    return p1
.end method

.method public static isConsistentIntersection([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 7

    array-length v0, p0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_5

    aget-object p0, v1, v2

    const/4 v4, 0x1

    move v3, v4

    :goto_1
    if-lt v3, v0, :cond_0

    return v4

    :cond_0
    aget-object v5, v1, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v5, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5, p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object p0, v5

    goto :goto_2

    :cond_3
    return v2

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    aget-object v4, p0, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    :cond_7
    :goto_3
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static sortFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;II)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->FIELD_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, p1, p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    return-void
.end method

.method public static sortMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->METHOD_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, p1, p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public acceptsNonNullDefault()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public appendNullAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V
    .locals 9

    iget-boolean v0, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->usesNullTypeAnnotations()Z

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0x40

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    array-length v3, v0

    const/4 p2, 0x0

    :goto_0
    if-lt p2, v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v0, p2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    const/16 v5, 0x60

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->shortReadableName()[C

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v5, 0x100000000000000L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->nonNullAnnotationName:[[C

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v7, 0x80000000000000L

    and-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->nullableAnnotationName:[[C

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    :goto_1
    return-void
.end method

.method public applyCloseableClassWhitelists()I
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v3, :cond_3

    if-eq v1, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA:[C

    aget-object v0, v0, v6

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UTIL:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ZIP:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v0, v0, v3

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_UTIL_ZIP_WRAPPER_CLOSEABLES:[[C

    array-length v1, v1

    move v2, v6

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_3

    :cond_1
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_UTIL_ZIP_WRAPPER_CLOSEABLES:[[C

    aget-object v3, v3, v2

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA:[C

    aget-object v0, v0, v6

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->IO:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v0, v0, v2

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_IO_WRAPPER_CLOSEABLES:[[C

    array-length v1, v1

    move v2, v6

    :goto_1
    if-lt v2, v1, :cond_6

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_IO_RESOURCE_FREE_CLOSEABLES:[[C

    array-length v3, v1

    move v1, v6

    :goto_2
    if-lt v1, v3, :cond_4

    goto :goto_3

    :cond_4
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_IO_RESOURCE_FREE_CLOSEABLES:[[C

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v0, 0x8

    return v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_IO_WRAPPER_CLOSEABLES:[[C

    aget-object v3, v3, v2

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_7

    return v4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->OTHER_WRAPPER_CLOSEABLES:[[[C

    array-length v0, v0

    move v1, v6

    :goto_4
    if-lt v1, v0, :cond_9

    return v6

    :cond_9
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->OTHER_WRAPPER_CLOSEABLES:[[[C

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v2

    if-eqz v2, :cond_a

    return v4

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public applyCloseableInterfaceWhitelists()I
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v0, v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->RESOURCE_FREE_CLOSEABLE_J_U_STREAMS:[[C

    array-length v3, v1

    move v0, v2

    :goto_1
    if-lt v0, v3, :cond_1

    :goto_2
    return v2

    :cond_1
    aget-object v4, v1, v0

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-static {v5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v0, 0x8

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v1, v1, v0

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_UTIL_STREAM:[[C

    aget-object v3, v3, v0

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public availableFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    return-object v0
.end method

.method public availableMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0
.end method

.method public canBeInstantiated()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x6600

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPublic()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPrivate()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 8

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPublic()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    .line 7
    :cond_2
    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isProtected()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 9
    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    .line 10
    :cond_4
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne p1, v0, :cond_5

    return v1

    .line 11
    :cond_5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    .line 13
    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_7

    return v2

    .line 14
    :cond_7
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    if-eqz p2, :cond_8

    return v1

    .line 15
    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_7

    return v2

    .line 16
    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 17
    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 18
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 19
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 20
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v5, 0x320000

    cmp-long v0, v3, v5

    if-gtz v0, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->isErasureBoundTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->isErasureBoundTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    return v2

    .line 21
    :cond_b
    :goto_0
    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 22
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    :goto_1
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    if-nez p2, :cond_d

    .line 23
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 24
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    :goto_2
    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    if-nez p2, :cond_c

    .line 25
    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v2

    .line 26
    :cond_c
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_2

    .line 27
    :cond_d
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    goto :goto_1

    :cond_e
    return v1

    .line 28
    :cond_f
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eq p2, v0, :cond_10

    return v2

    .line 29
    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    if-nez p2, :cond_11

    move-object p2, p0

    goto :goto_3

    :cond_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    :goto_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    .line 30
    :cond_12
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 31
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 32
    :cond_13
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 33
    :cond_14
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v0, :cond_15

    .line 34
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eq v0, v3, :cond_15

    return v2

    .line 35
    :cond_15
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_12

    return v2
.end method

.method public canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 6

    .line 36
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPublic()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 37
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    .line 38
    invoke-static {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 39
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getCurrentPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    return v2

    .line 40
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isProtected()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 41
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne p1, v3, :cond_4

    return v1

    .line 42
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_5

    return v2

    .line 43
    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    .line 44
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    .line 45
    :cond_6
    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_7

    return v1

    .line 46
    :cond_7
    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v4, :cond_8

    return v1

    .line 47
    :cond_8
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-nez v3, :cond_6

    return v2

    .line 48
    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 49
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    :goto_0
    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    if-nez v0, :cond_b

    .line 50
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 51
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    :goto_1
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    if-nez v0, :cond_a

    .line 52
    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1

    .line 53
    :cond_a
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    goto :goto_1

    .line 54
    :cond_b
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    goto :goto_0

    .line 55
    :cond_c
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne p1, v0, :cond_d

    return v1

    :cond_d
    return v2
.end method

.method public computeGenericTypeSignature([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)[C
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne p1, v3, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature()[C

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v0

    array-length v5, v0

    sub-int/2addr v5, v1

    invoke-virtual {v4, v0, v2, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/16 v0, 0x2e

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature()[C

    move-result-object v0

    array-length v5, v0

    sub-int/2addr v5, v1

    invoke-virtual {v4, v0, v2, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_1
    if-ne p1, v3, :cond_3

    const/16 p1, 0x3b

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    const/16 v0, 0x3c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v0, p1

    move v1, v2

    :goto_2
    if-lt v1, v0, :cond_4

    const-string p1, ">;"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    new-array v0, p1, [C

    invoke-virtual {v4, v2, p1, v0, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v0

    :cond_4
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->genericTypeSignature()[C

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public computeId()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v2, v1

    const/16 v7, 0x69

    const/16 v8, 0x61

    const/4 v9, 0x7

    const/16 v11, 0x10

    const/16 v12, 0x4d

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x2

    if-eq v2, v5, :cond_47

    const/16 v6, 0x44

    const/16 v10, 0x72

    const/16 v3, 0x52

    if-eq v2, v15, :cond_24

    if-eq v2, v14, :cond_a

    if-eq v2, v13, :cond_3

    if-eq v2, v9, :cond_0

    goto/16 :goto_b

    .line 2
    :cond_0
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JDT:[C

    aget-object v1, v1, v17

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->TYPEBINDING:[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v2, v2, v13

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ORG_ECLIPSE_JDT_INTERNAL_COMPILER_LOOKUP_TYPEBINDING:[[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 4
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    or-int/2addr v1, v11

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    goto/16 :goto_b

    :cond_2
    :goto_0
    return-void

    .line 5
    :cond_3
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ORG:[C

    aget-object v1, v1, v16

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 6
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SPRING:[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v2, v2, v4

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->AUTOWIRED:[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v2, v2, v14

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ORG_SPRING_AUTOWIRED:[[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_4
    return-void

    .line 10
    :cond_5
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JUNIT:[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v2, v2, v4

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 11
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->METHOD_SOURCE:[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v2, v2, v14

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ORG_JUNIT_METHOD_SOURCE:[[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x5d

    .line 13
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_6
    return-void

    .line 14
    :cond_7
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JDT:[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ITYPEBINDING:[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v2, v2, v14

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    .line 15
    :cond_8
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ORG_ECLIPSE_JDT_CORE_DOM_ITYPEBINDING:[[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 16
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    or-int/2addr v1, v11

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    goto/16 :goto_b

    :cond_9
    :goto_1
    return-void

    .line 17
    :cond_a
    aget-object v1, v1, v16

    .line 18
    aget-char v2, v1, v16

    const/16 v3, 0x63

    if-eq v2, v3, :cond_21

    const/16 v9, 0x6a

    if-eq v2, v9, :cond_18

    const/16 v7, 0x6f

    if-eq v2, v7, :cond_b

    goto/16 :goto_b

    .line 19
    :cond_b
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ORG:[C

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_c

    return-void

    .line 20
    :cond_c
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v1, v1, v4

    .line 21
    array-length v2, v1

    if-nez v2, :cond_d

    return-void

    .line 22
    :cond_d
    aget-char v2, v1, v16

    if-eq v2, v8, :cond_15

    const/16 v4, 0x65

    if-eq v2, v4, :cond_e

    return-void

    .line 23
    :cond_e
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ECLIPSE:[C

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 24
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v1, v1, v17

    .line 25
    array-length v2, v1

    if-nez v2, :cond_f

    return-void

    .line 26
    :cond_f
    aget-char v2, v1, v16

    if-eq v2, v3, :cond_10

    return-void

    .line 27
    :cond_10
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CORE:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 28
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v2, v1, v5

    .line 29
    array-length v3, v2

    if-nez v3, :cond_11

    return-void

    .line 30
    :cond_11
    aget-char v3, v2, v16

    if-eq v3, v10, :cond_12

    goto :goto_2

    .line 31
    :cond_12
    aget-object v1, v1, v15

    .line 32
    array-length v3, v1

    if-nez v3, :cond_13

    return-void

    .line 33
    :cond_13
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ORG_ECLIPSE_CORE_RUNTIME_ASSERT:[[C

    aget-object v4, v3, v5

    invoke-static {v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 34
    aget-object v2, v3, v15

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 35
    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_14
    :goto_2
    return-void

    .line 36
    :cond_15
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->APACHE:[C

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 37
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->COMMONS:[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 38
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ORG_APACHE_COMMONS_LANG_VALIDATE:[[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v1, 0x47

    .line 39
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    goto :goto_3

    .line 40
    :cond_16
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ORG_APACHE_COMMONS_LANG3_VALIDATE:[[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0x48

    .line 41
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_17
    :goto_3
    return-void

    .line 42
    :cond_18
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA:[C

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_19

    return-void

    .line 43
    :cond_19
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v1, v1, v4

    .line 44
    array-length v2, v1

    if-nez v2, :cond_1a

    return-void

    .line 45
    :cond_1a
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->LANG:[C

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 46
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v1, v1, v17

    .line 47
    array-length v2, v1

    if-nez v2, :cond_1b

    return-void

    .line 48
    :cond_1b
    aget-char v2, v1, v16

    if-eq v2, v7, :cond_1c

    return-void

    .line 49
    :cond_1c
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INVOKE:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 50
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v2, v1, v5

    .line 51
    array-length v3, v2

    if-nez v3, :cond_1d

    return-void

    .line 52
    :cond_1d
    aget-char v3, v2, v16

    if-eq v3, v12, :cond_1e

    goto :goto_4

    .line 53
    :cond_1e
    aget-object v1, v1, v15

    .line 54
    array-length v3, v1

    if-nez v3, :cond_1f

    return-void

    .line 55
    :cond_1f
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_INVOKE_METHODHANDLE_POLYMORPHICSIGNATURE:[[C

    aget-object v4, v3, v5

    invoke-static {v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 56
    aget-object v2, v3, v15

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v1, 0x3d

    .line 57
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_20
    :goto_4
    return-void

    .line 58
    :cond_21
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->COM:[C

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_22

    return-void

    .line 59
    :cond_22
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->COM_GOOGLE_COMMON_BASE_PRECONDITIONS:[[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v1, 0x49

    .line 60
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_23
    return-void

    .line 61
    :cond_24
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->COM_GOOGLE_INJECT_INJECT:[[C

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x51

    .line 62
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    return-void

    .line 63
    :cond_25
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA:[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v2, v2, v16

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_26

    return-void

    .line 64
    :cond_26
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v2, v1, v4

    .line 65
    array-length v2, v2

    if-nez v2, :cond_27

    return-void

    .line 66
    :cond_27
    aget-object v2, v1, v17

    .line 67
    array-length v4, v2

    if-nez v4, :cond_28

    return-void

    .line 68
    :cond_28
    aget-object v1, v1, v5

    .line 69
    array-length v4, v1

    if-nez v4, :cond_29

    return-void

    .line 70
    :cond_29
    aget-char v4, v2, v16

    if-eq v4, v8, :cond_35

    if-eq v4, v7, :cond_31

    if-eq v4, v10, :cond_2a

    goto/16 :goto_b

    .line 71
    :cond_2a
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->REFLECT:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 72
    aget-char v2, v1, v16

    const/16 v3, 0x43

    if-eq v2, v3, :cond_2f

    const/16 v3, 0x46

    if-eq v2, v3, :cond_2d

    if-eq v2, v12, :cond_2b

    goto :goto_5

    .line 73
    :cond_2b
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_REFLECT_METHOD:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v1, 0x37

    .line 74
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_2c
    return-void

    .line 75
    :cond_2d
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_REFLECT_FIELD:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/16 v1, 0x36

    .line 76
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_2e
    return-void

    .line 77
    :cond_2f
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_REFLECT_CONSTRUCTOR:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_30

    const/16 v1, 0x14

    .line 78
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_30
    :goto_5
    return-void

    .line 79
    :cond_31
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INVOKE:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 80
    array-length v2, v1

    if-nez v2, :cond_32

    return-void

    .line 81
    :cond_32
    aget-char v2, v1, v16

    if-eq v2, v12, :cond_33

    goto :goto_6

    .line 82
    :cond_33
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE:[[C

    aget-object v2, v2, v5

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_34

    const/16 v1, 0x3d

    .line 83
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_34
    :goto_6
    return-void

    .line 84
    :cond_35
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ANNOTATION:[C

    invoke-static {v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 85
    aget-char v2, v1, v16

    const/16 v4, 0x41

    if-eq v2, v4, :cond_45

    const/16 v4, 0x49

    if-eq v2, v4, :cond_43

    if-eq v2, v3, :cond_3c

    const/16 v3, 0x54

    if-eq v2, v3, :cond_3a

    if-eq v2, v6, :cond_38

    const/16 v3, 0x45

    if-eq v2, v3, :cond_36

    goto/16 :goto_7

    .line 86
    :cond_36
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[[C

    aget-object v2, v2, v5

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_37

    const/16 v1, 0x34

    .line 87
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_37
    return-void

    .line 88
    :cond_38
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_DOCUMENTED:[[C

    aget-object v2, v2, v5

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_39

    const/16 v1, 0x2d

    .line 89
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_39
    return-void

    .line 90
    :cond_3a
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_TARGET:[[C

    aget-object v2, v2, v5

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x32

    .line 91
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_3b
    return-void

    .line 92
    :cond_3c
    array-length v2, v1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_41

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3f

    const/16 v3, 0xf

    if-eq v2, v3, :cond_3d

    return-void

    .line 93
    :cond_3d
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_RETENTIONPOLICY:[[C

    aget-object v2, v2, v5

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/16 v1, 0x33

    .line 94
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_3e
    return-void

    .line 95
    :cond_3f
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_REPEATABLE:[[C

    aget-object v2, v2, v5

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_40

    const/16 v1, 0x5a

    .line 96
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_40
    return-void

    .line 97
    :cond_41
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_RETENTION:[[C

    aget-object v2, v2, v5

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_42

    const/16 v1, 0x30

    .line 98
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_42
    return-void

    .line 99
    :cond_43
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_INHERITED:[[C

    aget-object v2, v2, v5

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_44

    const/16 v1, 0x2e

    .line 100
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_44
    return-void

    .line 101
    :cond_45
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ANNOTATION:[[C

    aget-object v2, v2, v5

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_46

    const/16 v1, 0x2b

    .line 102
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_46
    :goto_7
    return-void

    .line 103
    :cond_47
    aget-object v2, v1, v16

    .line 104
    array-length v3, v2

    if-eq v3, v5, :cond_9e

    if-eq v3, v15, :cond_4d

    if-eq v3, v14, :cond_48

    return-void

    .line 105
    :cond_48
    aget-char v2, v2, v4

    if-eq v2, v8, :cond_4b

    const/16 v3, 0x75

    if-eq v2, v3, :cond_49

    return-void

    .line 106
    :cond_49
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JUNIT_FRAMEWORK_ASSERT:[[C

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/16 v1, 0x45

    .line 107
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_4a
    return-void

    .line 108
    :cond_4b
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVAX_ANNOTATION_INJECT_INJECT:[[C

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/16 v1, 0x50

    .line 109
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_4c
    return-void

    .line 110
    :cond_4d
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_4e

    return-void

    .line 111
    :cond_4e
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v2, v1, v4

    .line 112
    array-length v3, v2

    if-nez v3, :cond_4f

    return-void

    .line 113
    :cond_4f
    aget-object v1, v1, v17

    .line 114
    array-length v3, v1

    if-nez v3, :cond_50

    return-void

    .line 115
    :cond_50
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->LANG:[C

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_69

    .line 116
    aget-char v3, v2, v16

    if-eq v3, v7, :cond_5c

    const/16 v4, 0x75

    if-eq v3, v4, :cond_51

    return-void

    .line 117
    :cond_51
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UTIL:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 118
    aget-char v2, v1, v16

    const/16 v3, 0x43

    if-eq v2, v3, :cond_5a

    const/16 v3, 0x49

    if-eq v2, v3, :cond_58

    const/16 v3, 0x4f

    if-eq v2, v3, :cond_56

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_54

    if-eq v2, v12, :cond_52

    goto :goto_8

    .line 119
    :cond_52
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_UTIL_MAP:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_53

    const/16 v1, 0x5b

    .line 120
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    .line 121
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    :cond_53
    return-void

    .line 122
    :cond_54
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_UTIL_LIST:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_55

    const/16 v1, 0x5c

    .line 123
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    .line 124
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    :cond_55
    return-void

    .line 125
    :cond_56
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_UTIL_OBJECTS:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_57

    const/16 v1, 0x4a

    .line 126
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_57
    return-void

    .line 127
    :cond_58
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_UTIL_ITERATOR:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_59

    const/16 v1, 0x27

    .line 128
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_59
    return-void

    .line 129
    :cond_5a
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_UTIL_COLLECTION:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_5b

    const/16 v1, 0x3b

    .line 130
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    .line 131
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    :cond_5b
    :goto_8
    return-void

    .line 132
    :cond_5c
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->IO:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 133
    aget-char v2, v1, v16

    const/16 v3, 0x43

    if-eq v2, v3, :cond_67

    const/16 v3, 0x45

    if-eq v2, v3, :cond_65

    const/16 v3, 0x49

    if-eq v2, v3, :cond_63

    const/16 v3, 0x53

    if-eq v2, v3, :cond_61

    const/16 v3, 0x4f

    if-eq v2, v3, :cond_5f

    const/16 v3, 0x50

    if-eq v2, v3, :cond_5d

    goto :goto_9

    .line 134
    :cond_5d
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_IO_PRINTSTREAM:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_5e

    const/16 v1, 0x35

    .line 135
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_5e
    return-void

    .line 136
    :cond_5f
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_IO_OBJECTSTREAMEXCEPTION:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_60

    const/16 v1, 0x39

    .line 137
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_60
    return-void

    .line 138
    :cond_61
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_IO_SERIALIZABLE:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_62

    const/16 v1, 0x25

    .line 139
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_62
    return-void

    .line 140
    :cond_63
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_IO_IOEXCEPTION:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_64

    const/16 v1, 0x3a

    .line 141
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_64
    return-void

    .line 142
    :cond_65
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_IO_EXTERNALIZABLE:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_66

    const/16 v1, 0x38

    .line 143
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_66
    return-void

    .line 144
    :cond_67
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_IO_CLOSEABLE:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 145
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    :cond_68
    :goto_9
    return-void

    .line 146
    :cond_69
    aget-char v2, v1, v16

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_b

    .line 147
    :pswitch_1
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_VOID:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_6a

    const/16 v1, 0x22

    .line 148
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_6a
    return-void

    .line 149
    :pswitch_2
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_THROWABLE:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_6b

    const/16 v1, 0x15

    .line 150
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_6b
    return-void

    .line 151
    :pswitch_3
    array-length v2, v1

    if-eq v2, v14, :cond_74

    if-eq v2, v13, :cond_71

    if-eq v2, v11, :cond_6f

    packed-switch v2, :pswitch_data_1

    return-void

    .line 152
    :pswitch_4
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_STRINGBUILDER:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_6c

    const/16 v1, 0x28

    .line 153
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_6c
    return-void

    .line 154
    :pswitch_5
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_STRINGBUFFER:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/16 v1, 0x11

    .line 155
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_6d
    return-void

    .line 156
    :pswitch_6
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_SAFEVARARGS:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_6e

    const/16 v1, 0x3c

    .line 157
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_6e
    return-void

    .line 158
    :cond_6f
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_SUPPRESSWARNINGS:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x31

    .line 159
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_70
    return-void

    .line 160
    :cond_71
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_STRING:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_72

    const/16 v1, 0xb

    .line 161
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    goto :goto_a

    .line 162
    :cond_72
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_SYSTEM:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_73

    const/16 v1, 0x12

    .line 163
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_73
    :goto_a
    return-void

    .line 164
    :cond_74
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_SHORT:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_75

    const/16 v1, 0x1b

    .line 165
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_75
    return-void

    .line 166
    :pswitch_7
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_RUNTIMEEXCEPTION:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_76

    const/16 v1, 0x18

    .line 167
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_76
    :goto_b
    return-void

    .line 168
    :pswitch_8
    array-length v2, v1

    if-eq v2, v13, :cond_79

    const/16 v3, 0x8

    if-eq v2, v3, :cond_77

    return-void

    .line 169
    :cond_77
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OVERRIDE:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_78

    const/16 v1, 0x2f

    .line 170
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_78
    return-void

    .line 171
    :cond_79
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 172
    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_7a
    return-void

    .line 173
    :pswitch_9
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_NOCLASSDEFERROR:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_7b

    const/16 v1, 0x16

    .line 174
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_7b
    return-void

    .line 175
    :pswitch_a
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_LONG:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_7c

    const/16 v1, 0x1e

    .line 176
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_7c
    return-void

    .line 177
    :pswitch_b
    array-length v2, v1

    if-eq v2, v9, :cond_81

    const/16 v3, 0x8

    if-eq v2, v3, :cond_7f

    const/16 v3, 0x18

    if-eq v2, v3, :cond_7d

    return-void

    .line 178
    :cond_7d
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ILLEGALARGUMENTEXCEPTION:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_7e

    const/16 v1, 0x2a

    .line 179
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_7e
    return-void

    .line 180
    :cond_7f
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ITERABLE:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_80

    const/16 v1, 0x26

    .line 181
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_80
    return-void

    .line 182
    :cond_81
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_INTEGER:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_82

    const/16 v1, 0x1d

    .line 183
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_82
    return-void

    .line 184
    :pswitch_c
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_FLOAT:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_83

    const/16 v1, 0x1f

    .line 185
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    goto :goto_c

    .line 186
    :cond_83
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_FUNCTIONAL_INTERFACE:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 187
    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_84
    :goto_c
    return-void

    .line 188
    :pswitch_d
    array-length v2, v1

    if-eq v2, v15, :cond_89

    if-eq v2, v14, :cond_87

    const/16 v3, 0x9

    if-eq v2, v3, :cond_85

    return-void

    .line 189
    :cond_85
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_EXCEPTION:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_86

    const/16 v1, 0x19

    .line 190
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_86
    return-void

    .line 191
    :cond_87
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ERROR:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_88

    const/16 v1, 0x13

    .line 192
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_88
    return-void

    .line 193
    :cond_89
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ENUM:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_8a

    const/16 v1, 0x29

    .line 194
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_8a
    return-void

    .line 195
    :pswitch_e
    array-length v2, v1

    if-eq v2, v13, :cond_8d

    const/16 v3, 0xa

    if-eq v2, v3, :cond_8b

    return-void

    .line 196
    :cond_8b
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_DEPRECATED:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_8c

    const/16 v1, 0x2c

    .line 197
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_8c
    return-void

    .line 198
    :cond_8d
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_DOUBLE:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_8e

    const/16 v1, 0x20

    .line 199
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_8e
    return-void

    .line 200
    :pswitch_f
    array-length v2, v1

    if-eq v2, v14, :cond_94

    const/16 v3, 0x9

    if-eq v2, v3, :cond_91

    const/16 v3, 0x16

    if-eq v2, v3, :cond_8f

    return-void

    .line 201
    :cond_8f
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_CLASSNOTFOUNDEXCEPTION:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_90

    const/16 v1, 0x17

    .line 202
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_90
    return-void

    .line 203
    :cond_91
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_CHARACTER:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_92

    const/16 v1, 0x1c

    .line 204
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    goto :goto_d

    .line 205
    :cond_92
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_CLONEABLE:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_93

    const/16 v1, 0x24

    .line 206
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_93
    :goto_d
    return-void

    .line 207
    :cond_94
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_CLASS:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 208
    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_95
    return-void

    .line 209
    :pswitch_10
    array-length v2, v1

    if-eq v2, v15, :cond_98

    if-eq v2, v9, :cond_96

    return-void

    .line 210
    :cond_96
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_BOOLEAN:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_97

    const/16 v1, 0x21

    .line 211
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_97
    return-void

    .line 212
    :cond_98
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_BYTE:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_99

    const/16 v1, 0x1a

    .line 213
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_99
    return-void

    .line 214
    :pswitch_11
    array-length v2, v1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_9c

    const/16 v3, 0xe

    if-eq v2, v3, :cond_9a

    return-void

    .line 215
    :cond_9a
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ASSERTIONERROR:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_9b

    const/16 v1, 0x23

    .line 216
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_9b
    return-void

    .line 217
    :cond_9c
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_AUTOCLOSEABLE:[[C

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_9d

    const/16 v1, 0x3e

    .line 218
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    .line 219
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    or-int/2addr v1, v4

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    :cond_9d
    return-void

    .line 220
    :cond_9e
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ORG_JUNIT_ASSERT:[[C

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_9f

    const/16 v1, 0x46

    .line 221
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_9f
    return-void

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public computeId(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    .line 222
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public computeUniqueKey(Z)[C
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature()[C

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object p1

    return-object p1
.end method

.method public constantPoolName()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    const/16 v1, 0x2f

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    return-object v0
.end method

.method public debugName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->readableName()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_1
    const-string v0, "UNNAMED TYPE"

    :goto_0
    return-object v0
.end method

.method public depth()I
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public detectAnnotationCycle()Z
    .locals 12

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v2, 0x100000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return v5

    :cond_0
    const-wide v8, 0x80000000L

    and-long v10, v0, v8

    cmp-long v4, v10, v6

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    return v6

    :cond_1
    or-long/2addr v0, v8

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    array-length v1, v0

    move v4, v5

    move v7, v4

    :goto_0
    if-lt v4, v1, :cond_3

    if-eqz v7, :cond_2

    return v6

    :cond_2
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return v5

    :cond_3
    aget-object v8, v0, v4

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    invoke-static {p0, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_5

    instance-of v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v8, :cond_8

    aget-object v8, v0, v4

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    move-object v9, p0

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v9

    if-eqz v8, :cond_4

    iget-object v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :cond_4
    invoke-virtual {v9, p0, p0, v10}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationCircularity(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, v8

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->detectAnnotationCycle()Z

    move-result v9

    if-eqz v9, :cond_8

    instance-of v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v7, :cond_7

    aget-object v7, v0, v4

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    move-object v9, p0

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v9

    if-eqz v7, :cond_6

    iget-object v10, v7, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :cond_6
    invoke-virtual {v9, p0, v8, v10}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationCircularity(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_7
    move v7, v6

    :cond_8
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method

.method public final enclosingTypeAt(I)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    move-object v0, p0

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    move p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public enumConstantCount()I
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v2, v1, :cond_0

    return v3

    :cond_0
    aget-object v4, v0, v2

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public fieldCount()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v0
.end method

.method public final getAccessFlags()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getAnnotationTagBits()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return-wide v0
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    invoke-virtual {p0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->retrieveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingInstancesSlotSize()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public getExactConstructor([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fileName:[C

    return-object v0
.end method

.method public getInterfaceAbstractContracts(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZZ)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    const-string v1, "Not a functional interface"

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    move v7, v6

    move v8, v7

    :goto_0
    if-lt v6, v5, :cond_14

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v9

    if-nez v0, :cond_0

    move v10, v2

    goto :goto_1

    :cond_0
    array-length p2, v0

    move v10, p2

    :goto_1
    move p2, v2

    :goto_2
    if-lt p2, v10, :cond_b

    move p1, v2

    :goto_3
    if-lt p1, v8, :cond_2

    if-ge v8, v7, :cond_1

    new-array p1, v8, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v3, v2, p1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, p1

    :cond_1
    return-object v3

    :cond_2
    aget-object v4, v3, p1

    iget-object p2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_5

    :cond_3
    move p2, v2

    :goto_4
    if-lt p2, v8, :cond_6

    if-eqz p3, :cond_5

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultMethod()Z

    move-result p2

    if-eqz p2, :cond_5

    add-int/lit8 v8, v8, -0x1

    if-ge p1, v8, :cond_4

    add-int/lit8 p2, p1, 0x1

    sub-int v0, v8, p1

    invoke-static {v3, p2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int/lit8 p1, p1, -0x1

    :cond_5
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    aget-object v0, v3, p2

    if-eq p1, p2, :cond_a

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    if-eq v4, v0, :cond_8

    invoke-static {v4, v0, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    add-int/lit8 v8, v8, -0x1

    if-ge p2, v8, :cond_9

    add-int/lit8 v0, p2, 0x1

    sub-int v1, v8, p2

    invoke-static {v3, v0, v3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    add-int/lit8 p2, p2, -0x1

    if-ge p2, p1, :cond_a

    add-int/lit8 p1, p1, -0x1

    :cond_a
    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_b
    aget-object v4, v0, p2

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->redeclaresPublicObjectMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-eqz v5, :cond_12

    move v5, v2

    :goto_7
    if-lt v5, v8, :cond_10

    if-eqz p3, :cond_d

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultMethod()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_8

    :cond_d
    if-ne v8, v7, :cond_e

    add-int/lit8 v7, v7, 0x10

    new-array v5, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v3, v2, v5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v5

    :cond_e
    iget-object v5, v9, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v5, v5, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v5, :cond_f

    invoke-static {v4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->ensureNullnessIsKnown(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_f
    add-int/lit8 v5, v8, 0x1

    aput-object v4, v3, v8

    move v8, v5

    goto :goto_8

    :cond_10
    aget-object v6, v3, v5

    if-eqz v6, :cond_11

    invoke-static {v4, v6, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result v6

    if-eqz v6, :cond_11

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_11

    add-int/lit8 v6, v5, 0x1

    sub-int v11, v8, v5

    invoke-static {v3, v6, v3, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_12
    new-instance p1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {p1, v1}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_8
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_2

    :cond_14
    aget-object v9, v4, v6

    invoke-virtual {v9, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getInterfaceAbstractContracts(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZZ)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v9

    if-nez v9, :cond_15

    move v10, v2

    goto :goto_9

    :cond_15
    array-length v10, v9

    :goto_9
    if-nez v10, :cond_16

    goto :goto_a

    :cond_16
    add-int v11, v8, v10

    if-ge v7, v11, :cond_17

    new-array v7, v11, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v3, v2, v7, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v7

    move v7, v11

    :cond_17
    invoke-static {v9, v2, v3, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v11

    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_18
    new-instance p1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {p1, v1}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMemberType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->memberTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    array-length v1, v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    aget-object v2, v0, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object p1, v0, v1

    return-object p1
.end method

.method public getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 0

    .line 1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object p1
.end method

.method public getMethods([CI)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1
.end method

.method public getNullDefault()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOuterLocalVariablesSlotSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    return-object v0
.end method

.method public getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p2

    xor-int/lit8 v2, v1, 0x1

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->singleAbstractMethod:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v3, :cond_0

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    return-object v3

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->singleAbstractMethod:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_1
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v3

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    :cond_2
    const/4 v3, 0x1

    move-object/from16 v4, p1

    :try_start_0
    invoke-virtual {v0, v4, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getInterfaceAbstractContracts(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZZ)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-eqz v1, :cond_2b

    array-length v5, v1

    if-nez v5, :cond_3

    goto/16 :goto_1a

    :cond_3
    array-length v5, v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v6

    move v9, v8

    :goto_0
    if-lt v8, v5, :cond_24

    array-length v5, v1

    if-ne v5, v3, :cond_4

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->singleAbstractMethod:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v1, v1, v6

    aput-object v1, v3, v2

    return-object v1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v10

    array-length v11, v1

    iget-object v4, v10, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v12, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    add-int/lit8 v4, v11, -0x1

    move v5, v6

    :goto_1
    if-gez v4, :cond_5

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->singleAbstractMethod:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->samProblemBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    aput-object v3, v1, v2

    return-object v3

    :cond_5
    aget-object v7, v1, v4

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v8, v9, :cond_6

    move v5, v3

    :cond_6
    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v13, v6

    :goto_2
    if-lt v13, v11, :cond_1d

    new-array v4, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v10, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v10, v12, :cond_7

    if-eqz v5, :cond_7

    move v14, v3

    goto :goto_3

    :cond_7
    move v14, v6

    :goto_3
    if-eq v10, v12, :cond_8

    move v15, v3

    goto :goto_4

    :cond_8
    move v15, v6

    :goto_4
    array-length v3, v10

    move v5, v6

    move v10, v5

    move v12, v10

    :goto_5
    if-lt v5, v11, :cond_9

    move-object/from16 p1, v4

    goto :goto_7

    :cond_9
    aget-object v13, v1, v5

    iget-object v6, v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 p1, v4

    if-nez v6, :cond_a

    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    array-length v4, v6

    :goto_6
    if-nez v4, :cond_b

    :goto_7
    move-object/from16 v4, p1

    goto/16 :goto_d

    :cond_b
    if-eqz v15, :cond_e

    if-eq v13, v7, :cond_e

    new-array v13, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move/from16 v16, v10

    const/4 v10, 0x0

    invoke-static {v6, v10, v13, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    :goto_8
    if-lt v6, v3, :cond_c

    move-object v6, v13

    goto :goto_9

    :cond_c
    aget-object v10, v13, v6

    instance-of v10, v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v10, :cond_d

    iget-object v10, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v10, v10, v6

    aput-object v10, v13, v6

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_e
    move/from16 v16, v10

    :goto_9
    move-object/from16 v10, p1

    move/from16 v13, v16

    move/from16 v16, v3

    move v3, v12

    const/4 v12, 0x0

    :goto_a
    if-lt v12, v4, :cond_f

    add-int/lit8 v5, v5, 0x1

    move v12, v3

    move-object v4, v10

    move v10, v13

    move/from16 v3, v16

    const/4 v6, 0x0

    goto :goto_5

    :cond_f
    aget-object v17, v6, v12

    if-eqz v14, :cond_10

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v17

    check-cast v17, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_10
    move-object/from16 p1, v6

    move-object/from16 v6, v17

    move/from16 v17, v4

    const/4 v4, 0x0

    :goto_b
    if-lt v4, v11, :cond_12

    if-ne v13, v3, :cond_11

    add-int/lit8 v3, v3, 0x10

    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move/from16 v18, v3

    const/4 v3, 0x0

    invoke-static {v10, v3, v4, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v4

    move/from16 v3, v18

    :cond_11
    add-int/lit8 v4, v13, 0x1

    aput-object v6, v10, v13

    move v13, v4

    move/from16 v19, v5

    move/from16 v21, v11

    goto/16 :goto_12

    :cond_12
    if-ne v5, v4, :cond_13

    move/from16 v18, v3

    move/from16 v19, v5

    move-object/from16 v20, v10

    move/from16 v21, v11

    goto/16 :goto_13

    :cond_13
    move/from16 v18, v3

    aget-object v3, v1, v4

    move/from16 v19, v5

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 v20, v10

    if-nez v5, :cond_14

    const/4 v10, 0x0

    goto :goto_c

    :cond_14
    array-length v10, v5

    :goto_c
    if-nez v10, :cond_16

    move v10, v13

    move/from16 v12, v18

    move-object/from16 v4, v20

    :goto_d
    if-eq v10, v12, :cond_15

    new-array v1, v10, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v3, 0x0

    invoke-static {v4, v3, v1, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v18, v1

    goto :goto_e

    :cond_15
    move-object/from16 v18, v4

    :goto_e
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->singleAbstractMethod:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v4, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/lit16 v14, v4, 0x1000

    iget-object v15, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v13, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v19, v4

    invoke-direct/range {v13 .. v19}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    aput-object v3, v1, v2

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->singleAbstractMethod:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v1, v1, v2

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    return-object v1

    :cond_16
    if-eqz v15, :cond_19

    if-eq v3, v7, :cond_19

    new-array v3, v10, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move/from16 v21, v11

    const/4 v11, 0x0

    invoke-static {v5, v11, v3, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v11

    :goto_f
    move/from16 v11, v16

    if-lt v5, v11, :cond_17

    move/from16 v16, v11

    goto :goto_10

    :cond_17
    move/from16 v16, v11

    aget-object v11, v3, v5

    instance-of v11, v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v11, :cond_18

    iget-object v11, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v11, v11, v5

    aput-object v11, v3, v5

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_19
    move/from16 v21, v11

    move-object v3, v5

    :goto_10
    const/4 v5, 0x0

    :goto_11
    if-lt v5, v10, :cond_1a

    move/from16 v3, v18

    move-object/from16 v10, v20

    :goto_12
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p1

    move/from16 v4, v17

    move/from16 v5, v19

    move/from16 v11, v21

    goto/16 :goto_a

    :cond_1a
    aget-object v11, v3, v5

    if-eqz v14, :cond_1b

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_1b
    invoke-virtual {v6, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v11

    if-eqz v11, :cond_1c

    :goto_13
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v18

    move/from16 v5, v19

    move-object/from16 v10, v20

    move/from16 v11, v21

    goto/16 :goto_b

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1d
    move/from16 v21, v11

    move v11, v4

    if-ne v11, v13, :cond_1e

    goto :goto_14

    :cond_1e
    aget-object v3, v1, v13

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v4, v6, :cond_1f

    const/4 v5, 0x1

    :cond_1f
    if-eqz v5, :cond_20

    invoke-static {v3, v7, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->computeSubstituteMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    if-nez v3, :cond_20

    goto :goto_15

    :cond_20
    invoke-static {v7, v3, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isSubstituteParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-static {v7, v3, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areReturnTypesCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_15

    :cond_21
    if-eqz v12, :cond_22

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v8, v4, v10}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->strongerType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v9, v3, v10}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->weakerTypes([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    move-object v9, v3

    move-object v8, v4

    :cond_22
    :goto_14
    add-int/lit8 v13, v13, 0x1

    move v4, v11

    move/from16 v11, v21

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_23
    :goto_15
    add-int/lit8 v4, v11, -0x1

    move/from16 v11, v21

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_24
    :try_start_1
    aget-object v3, v1, v8

    if-nez v3, :cond_25

    goto :goto_18

    :cond_25
    if-nez v7, :cond_27

    iget-object v6, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v3, :cond_26

    const/4 v9, 0x0

    goto :goto_16

    :cond_26
    array-length v3, v3

    move v9, v3

    :goto_16
    move-object v7, v6

    goto :goto_18

    :cond_27
    iget-object v6, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v6, :cond_28

    const/4 v10, 0x0

    goto :goto_17

    :cond_28
    array-length v10, v6

    :goto_17
    if-ne v10, v9, :cond_2a

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v3, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_19

    :cond_29
    :goto_18
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_2a
    :goto_19
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->singleAbstractMethod:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->samProblemBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    aput-object v3, v1, v2

    return-object v3

    :cond_2b
    :goto_1a
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->singleAbstractMethod:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->samProblemBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    aput-object v3, v1, v2
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->singleAbstractMethod:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->samProblemBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    aput-object v3, v1, v2

    return-object v3
.end method

.method public getTypeVariable([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    array-length v1, v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    aget-object v2, v0, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object p1, v0, v1

    return-object p1
.end method

.method public hasEnclosingInstanceContext()Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasIncompatibleSuperType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 11

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move-object v2, p0

    move v3, v1

    :cond_1
    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProvablyDistinct(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v5

    :cond_2
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-eqz v4, :cond_8

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v4, v6, :cond_8

    if-nez v0, :cond_3

    array-length v3, v4

    move-object v0, v4

    goto :goto_4

    :cond_3
    array-length v6, v4

    add-int v7, v3, v6

    array-length v8, v0

    if-lt v7, v8, :cond_4

    add-int/lit8 v7, v7, 0x5

    new-array v7, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    move-object v7, v0

    :goto_0
    move v8, v1

    move v9, v3

    :goto_1
    if-lt v8, v6, :cond_5

    move-object v0, v7

    move v3, v9

    goto :goto_4

    :cond_5
    aget-object v10, v4, v8

    move v0, v1

    :goto_2
    if-lt v0, v9, :cond_6

    add-int/lit8 v0, v9, 0x1

    aput-object v10, v7, v9

    move v9, v0

    goto :goto_3

    :cond_6
    aget-object v3, v7, v0

    invoke-static {v10, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v1

    :goto_5
    if-lt v2, v3, :cond_9

    return v1

    :cond_9
    aget-object v4, v0, v2

    invoke-static {v4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_a

    return v1

    :cond_a
    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProvablyDistinct(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_b

    return v5

    :cond_b
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-eqz v4, :cond_10

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v4, v6, :cond_10

    array-length v6, v4

    add-int v7, v3, v6

    array-length v8, v0

    if-lt v7, v8, :cond_c

    add-int/lit8 v7, v7, 0x5

    new-array v7, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_c
    move-object v7, v0

    :goto_6
    move v8, v1

    move v9, v3

    :goto_7
    if-lt v8, v6, :cond_d

    move-object v0, v7

    move v3, v9

    goto :goto_a

    :cond_d
    aget-object v10, v4, v8

    move v0, v1

    :goto_8
    if-lt v0, v9, :cond_e

    add-int/lit8 v0, v9, 0x1

    aput-object v10, v7, v9

    move v9, v0

    goto :goto_9

    :cond_e
    aget-object v3, v7, v0

    invoke-static {v10, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_f

    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_10
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public hasMemberTypes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasNonNullDefaultFor(II)Z
    .locals 3

    move-object p2, p0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getDefaultNullness()I

    move-result p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getNullDefault()I

    move-result v2

    if-eqz v2, :cond_3

    and-int/2addr p1, v2

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    goto :goto_0
.end method

.method public hasNullBit(I)Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hasRestrictedAccess()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    return v0
.end method

.method public implementsInterface(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z
    .locals 11

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move v4, v0

    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    if-eqz v5, :cond_7

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v5, v6, :cond_7

    if-nez v2, :cond_2

    array-length v4, v5

    move-object v2, v5

    goto :goto_4

    :cond_2
    array-length v6, v5

    add-int v7, v4, v6

    array-length v8, v2

    if-lt v7, v8, :cond_3

    add-int/lit8 v7, v7, 0x5

    new-array v7, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v2, v0, v7, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    move-object v7, v2

    :goto_0
    move v8, v0

    move v9, v4

    :goto_1
    if-lt v8, v6, :cond_4

    move-object v2, v7

    move v4, v9

    goto :goto_4

    :cond_4
    aget-object v10, v5, v8

    move v2, v0

    :goto_2
    if-lt v2, v9, :cond_5

    add-int/lit8 v2, v9, 0x1

    aput-object v10, v7, v9

    move v9, v2

    goto :goto_3

    :cond_5
    aget-object v4, v7, v2

    invoke-static {v10, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    if-eqz p2, :cond_8

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_8
    move p2, v0

    :goto_5
    if-lt p2, v4, :cond_9

    return v0

    :cond_9
    aget-object v3, v2, p2

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_a

    return v1

    :cond_a
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-eqz v3, :cond_f

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v3, v5, :cond_f

    array-length v5, v3

    add-int v6, v4, v5

    array-length v7, v2

    if-lt v6, v7, :cond_b

    add-int/lit8 v6, v6, 0x5

    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v2, v0, v6, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_b
    move-object v6, v2

    :goto_6
    move v7, v0

    move v8, v4

    :goto_7
    if-lt v7, v5, :cond_c

    move-object v2, v6

    move v4, v8

    goto :goto_a

    :cond_c
    aget-object v9, v3, v7

    move v2, v0

    :goto_8
    if-lt v2, v8, :cond_d

    add-int/lit8 v2, v8, 0x1

    aput-object v9, v6, v8

    move v8, v2

    goto :goto_9

    :cond_d
    aget-object v4, v6, v2

    invoke-static {v9, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_e

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    :goto_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_5
.end method

.method public implementsMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 7

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    move-object v1, p0

    :goto_0
    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_3

    long-to-int v5, v3

    const/16 v6, 0x20

    shr-long/2addr v3, v6

    long-to-int v3, v3

    :goto_1
    if-le v5, v3, :cond_1

    goto :goto_2

    :cond_1
    aget-object v4, v2, v5

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    goto :goto_0
.end method

.method public final isAbstract()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAnnotationType()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isBinaryBinding()Z
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isClass()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x6200

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 4

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compatibleCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compatibleCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, p1, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compatibleCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isCompatibleWith0(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compatibleCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_5
    if-nez p2, :cond_6

    instance-of p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz p2, :cond_6

    move-object p2, p0

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compatibleCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return v2
.end method

.method public final isDefault()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isDeprecated()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEnum()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isFinal()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isHierarchyBeingActivelyConnected()Z
    .locals 6

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHierarchyBeingConnected()Z
    .locals 6

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHierarchyConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInterface()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNestmateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getSourceTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getSourceTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isNestmateOf(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isOrEnclosedByPrivateType()Z
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_0
.end method

.method public final isPrivate()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProperType(Z)Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isProperType(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result p1

    return p1
.end method

.method public final isProtected()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

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

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isStatic()Z
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x208

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isStrictfp()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSubTypeOfRTL(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 4

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getIntersectingTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_5

    move v0, v2

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_3

    return v1

    :cond_3
    aget-object v3, p1, v0

    invoke-virtual {p0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z
    .locals 5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSubTypeOfRTL(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    if-eqz p2, :cond_8

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    move v2, v1

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_6

    return v0

    :cond_6
    aget-object v3, p2, v2

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeArgumentContainedBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_7

    return v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    :goto_1
    return v1
.end method

.method public isSuperclassOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public isThrowable()Z
    .locals 3

    move-object v0, p0

    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isUncheckedException(Z)Z
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-eq v0, v2, :cond_4

    const/16 v3, 0x15

    if-eq v0, v3, :cond_3

    const/16 v4, 0x18

    if-eq v0, v4, :cond_4

    const/16 v5, 0x19

    if-eq v0, v5, :cond_3

    move-object p1, p0

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v6, v2, :cond_2

    if-eq v6, v3, :cond_1

    if-eq v6, v4, :cond_2

    if-eq v6, v5, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return p1

    :cond_4
    return v1
.end method

.method public final isUsed()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isViewedAsDeprecated()Z
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v1, 0x300000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isViewedAsDeprecated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public memberTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MEMBER_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method

.method public module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)[C
    .locals 6

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v1

    const/16 v2, 0x2e

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->appendNullAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    .line 8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 9
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    if-eqz v1, :cond_2

    .line 10
    array-length v1, v1

    move v4, v3

    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-lt v4, v5, :cond_1

    .line 11
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->appendNullAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    .line 12
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 13
    :cond_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->appendNullAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    .line 16
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->readableName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 19
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 20
    array-length v2, v1

    if-lez v2, :cond_6

    const/16 v2, 0x3c

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 22
    array-length v2, v1

    move v4, v3

    :goto_2
    if-lt v4, v2, :cond_4

    const/16 p1, 0x3e

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    if-lez v4, :cond_5

    const/16 v5, 0x2c

    .line 24
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 25
    :cond_5
    aget-object v5, v1, v4

    invoke-virtual {v5, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 26
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    .line 27
    new-array v1, p1, [C

    .line 28
    invoke-virtual {v0, v3, p1, v1, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v1
.end method

.method public nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->nullAnnotatedShortReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)[C

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)[C

    move-result-object p1

    return-object p1
.end method

.method public nullAnnotatedShortReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)[C
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->appendNullAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->appendNullAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->shortReadableName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    array-length v4, v1

    if-lez v4, :cond_4

    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v4, v1

    move v5, v3

    :goto_1
    if-lt v5, v4, :cond_2

    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    if-lez v5, :cond_3

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    aget-object v6, v1, v5

    invoke-virtual {v6, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    new-array v1, p1, [C

    invoke-virtual {v0, v3, p1, v1, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v1
.end method

.method public final outermostEnclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public qualifiedSourceName()[C
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->qualifiedSourceName()[C

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v0

    return-object v0
.end method

.method public readableName()[C
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->readableName(Z)[C

    move-result-object v0

    return-object v0
.end method

.method public readableName(Z)[C
    .locals 5

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v0

    const/16 v1, 0x2e

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->readableName(Z)[C

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v0, v3, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p1

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq p1, v1, :cond_4

    .line 6
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x3c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 8
    array-length v3, p1

    move v0, v2

    :goto_2
    if-lt v0, v3, :cond_2

    const/16 p1, 0x3e

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    .line 11
    new-array v0, p1, [C

    .line 12
    invoke-virtual {v1, v2, p1, v0, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_3

    :cond_2
    if-lez v0, :cond_3

    const/16 v4, 0x2c

    .line 13
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 14
    :cond_3
    aget-object v4, p1, v0

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->readableName()[C

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v0
.end method

.method public retrieveAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    :goto_0
    return-object p1
.end method

.method public retrieveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->retrieveAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V
    .locals 0

    invoke-virtual {p0, p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->storeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    return-void
.end method

.method public setContainerAnnotationType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 0

    return-void
.end method

.method public shortReadableName()[C
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->shortReadableName(Z)[C

    move-result-object v0

    return-object v0
.end method

.method public shortReadableName(Z)[C
    .locals 5

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->shortReadableName(Z)[C

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    const/16 v3, 0x2e

    invoke-static {v0, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    :goto_1
    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq p1, v2, :cond_4

    .line 6
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x3c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 8
    array-length v3, p1

    move v0, v1

    :goto_2
    if-lt v0, v3, :cond_2

    const/16 p1, 0x3e

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    .line 11
    new-array v0, p1, [C

    .line 12
    invoke-virtual {v2, v1, p1, v0, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_3

    :cond_2
    if-lez v0, :cond_3

    const/16 v4, 0x2c

    .line 13
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 14
    :cond_3
    aget-object v4, p1, v0

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->shortReadableName()[C

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v0
.end method

.method public signature()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v0

    const/16 v1, 0x3b

    const/16 v2, 0x4c

    invoke-static {v2, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat(C[CC)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature:[C

    return-object v0
.end method

.method public sourceName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    return-object v0
.end method

.method public storeAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, v0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public storeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V
    .locals 1

    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    if-nez p3, :cond_4

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    invoke-direct {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;-><init>()V

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    if-nez p3, :cond_4

    return-void

    :cond_4
    :goto_2
    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->storeAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;)V

    return-void
.end method

.method public storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public syntheticEnclosingInstanceTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public tagAsHavingDefectiveContainerType()V
    .locals 0

    return-void
.end method

.method public unResolvedFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v0
.end method

.method public unResolvedMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0
.end method

.method public upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method
