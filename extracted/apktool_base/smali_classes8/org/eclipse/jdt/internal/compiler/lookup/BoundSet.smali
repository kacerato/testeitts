.class Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;
    }
.end annotation


# static fields
.field static final FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

.field static final TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;


# instance fields
.field boundsPerVariable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;",
            ">;"
        }
    .end annotation
.end field

.field captures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;",
            ">;"
        }
    .end annotation
.end field

.field inThrows:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;"
        }
    .end annotation
.end field

.field private incorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

.field private mostRecentBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

.field private unincorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

.field private unincorporatedBoundsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->captures:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->inThrows:Ljava/util/Set;

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    const/16 v1, 0x400

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBoundsCount:I

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->mostRecentBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    return-void
.end method

.method private addBounds([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    .line 3
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isBound()Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addConnected(Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Ljava/util/Map;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;>;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addConnected(Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private combineEqualSupers(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
    .locals 5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p2, :cond_0

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v0, v3, v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p2, :cond_2

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v0, v3, v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private combineSameSame(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
    .locals 2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p1, :cond_0

    iget-boolean p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/4 p2, 0x4

    invoke-static {v0, v1, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->combineSameSameWithProperType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->combineSameSameWithProperType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private combineSameSameWithProperType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
    .locals 5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p1, :cond_0

    iget-boolean p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 p1, 0x4

    invoke-static {v3, v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private combineSameSubSuper(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
    .locals 7

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p2, :cond_0

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p2, :cond_2

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v2, :cond_7

    move-object v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p2, :cond_4

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    invoke-static {v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p2, :cond_6

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v5, v1

    goto :goto_4

    :cond_8
    iget-object v5, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    :goto_4
    iget-object v6, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    or-int/2addr v1, v2

    if-eqz v1, :cond_a

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p2, :cond_9

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    move v3, v4

    :goto_5
    invoke-static {v5, v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method

.method private combineSuperAndSub(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
    .locals 4

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p2, :cond_0

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    const/4 p1, 0x2

    invoke-static {v0, v3, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v3, :cond_3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p2, :cond_2

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    const/4 p1, 0x3

    invoke-static {v0, v3, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private deriveTypeArgumentConstraints(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
    .locals 4

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->superTypesWithCommonGenericType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p1, :cond_0

    iget-boolean p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {p0, v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->typeArgumentEqualityConstraints(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private superOnlyRaw(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z
    .locals 2

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private typeArgumentEqualityConstraints(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const/16 v2, 0x104

    if-ne v1, v2, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_3
    return-object v0

    :cond_4
    aget-object v3, p1, v2

    aget-object v4, p2, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x4

    invoke-static {v3, v4, v5, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-object v0
.end method


# virtual methods
.method public addBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 8

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-ne v0, v3, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v4, 0x4

    if-lt v3, v4, :cond_8

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->mostRecentBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    const/4 v5, 0x3

    aget-object v6, v3, v2

    aput-object v6, v3, v5

    aget-object v5, v3, v1

    aput-object v5, v3, v2

    aget-object v2, v3, v0

    aput-object v2, v3, v1

    aput-object p1, v3, v0

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    invoke-direct {v5, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)V

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v5

    :cond_2
    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->addBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    array-length v6, v5

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBoundsCount:I

    if-lt v7, v6, :cond_3

    mul-int/lit8 v7, v6, 0x2

    new-array v7, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iput-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    invoke-static {v5, v0, v7, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBoundsCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBoundsCount:I

    aput-object p1, v0, v5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    if-ne v5, v4, :cond_4

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3, v0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->setInstantiation(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :cond_4
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_5
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->inverseBounds:Ljava/util/Map;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->inverseBounds:Ljava/util/Map;

    :cond_6
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->inverseBounds:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void

    :cond_8
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->mostRecentBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->mostRecentBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    aget-object v0, v0, v3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v3, 0x180000000000000L

    and-long/2addr v1, v3

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v3, v6

    cmp-long v6, v1, v3

    if-eqz v6, :cond_a

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-nez v3, :cond_9

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_9
    cmp-long p1, v1, v6

    if-eqz p1, :cond_a

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nullAnnotationsFromTagBits(J)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_a
    :goto_1
    return-void

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public addBounds(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->flatten()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBounds([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public addBoundsFromTypeParameters(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)V
    .locals 7

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    aget-object v3, p2, v2

    aget-object v4, p3, v2

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;

    invoke-direct {v5, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->getTypeBounds(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    move-result-object v3

    array-length v5, v3

    if-lez v5, :cond_1

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p0, v3, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBounds([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->object:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public addTypeBoundsFromWildcardBound(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    iget p3, p6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne p3, v1, :cond_0

    invoke-static {p4, p5, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget p4, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne p4, v1, :cond_2

    invoke-virtual {p2, p2, p6}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-static {p2, p5, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p3

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p2, p6}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-static {p2, p5, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p3

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->reduceOneConstraint(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    :cond_3
    return-void
.end method

.method public computeConnectedComponents([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, p1

    :goto_1
    if-lt v1, v5, :cond_0

    return-object v4

    :cond_0
    aget-object v2, p1, v1

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v6, v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addConnected(Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Ljava/util/Map;Ljava/util/Set;)V

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aget-object v3, p1, v2

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v1

    :goto_2
    if-lt v5, v2, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    aget-object v6, p1, v5

    invoke-virtual {p0, v3, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->dependsOnResolutionOf(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p0, v6, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->dependsOnResolutionOf(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public condition18_5_2_bullet_3_3_1(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 7

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->parameterizedWithWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p2

    if-eqz p2, :cond_1

    return v1

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->sameBounds:Ljava/util/Set;

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->parameterizedWithWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v2

    if-eqz v2, :cond_3

    return v0

    :cond_5
    :goto_0
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->parameterizedWithWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v2

    if-eqz v2, :cond_6

    return v0

    :cond_8
    :goto_1
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    if-eqz p2, :cond_c

    new-instance p2, Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v2, v1

    :goto_2
    if-lt v2, p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    :goto_3
    if-lt v4, p1, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v3, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->superTypesWithCommonGenericType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    if-eqz v5, :cond_b

    aget-object v6, v5, v1

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v6

    if-eqz v6, :cond_b

    aget-object v6, v5, v0

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v6

    if-eqz v6, :cond_b

    aget-object v6, v5, v1

    aget-object v5, v5, v0

    invoke-static {v6, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-nez v5, :cond_b

    return v0

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    return v1
.end method

.method public condition18_5_2_bullet_3_3_2(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Z
    .locals 5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->sameBounds:Ljava/util/Set;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p0, p2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->superOnlyRaw(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_4
    :goto_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p0, p2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->superOnlyRaw(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_7
    :goto_1
    return v1
.end method

.method public copy()Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->inThrows:Ljava/util/Set;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->inThrows:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->captures:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->captures:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    array-length v2, v1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    array-length v2, v1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBoundsCount:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBoundsCount:I

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->copy()Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public dependsOnResolutionOf(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->captures:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->hasDependency(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->hasDependency(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move v6, v0

    :goto_1
    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v8, v7

    if-lt v6, v8, :cond_4

    goto :goto_0

    :cond_4
    aget-object v7, v7, v6

    invoke-static {v7, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    new-array v8, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object p2, v8, v0

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z

    move-result v7

    if-eqz v7, :cond_5

    return v2

    :cond_5
    new-array v7, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object p2, v7, v0

    invoke-virtual {v5, v7, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z

    move-result v7

    if-eqz v7, :cond_7

    return v2

    :cond_6
    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v7, v6

    invoke-static {v7, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v2

    :cond_7
    add-int/2addr v6, v2

    goto :goto_1
.end method

.method public findWrapperTypeBound(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->findSingleWrapperType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public flatten()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->flattenInto([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;I)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public getEquivalentOuterVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->sameBounds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    array-length v3, p2

    move v4, v1

    :goto_1
    if-lt v4, v3, :cond_1

    goto :goto_0

    :cond_1
    aget-object v5, p2, v4

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v6, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-object v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    array-length v0, p2

    :goto_3
    if-lt v1, v0, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    aget-object v2, p2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->sameBounds:Ljava/util/Set;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v2

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public getInstantiation(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->instantiation:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p2, :cond_0

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v4, 0x180000000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->nullHints:J

    invoke-virtual {v0, v1, v2, v3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->combineAndUseNullHints(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;JLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasCaptureBound(Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->captures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    :goto_1
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v4, v3

    if-lt v2, v4, :cond_1

    goto :goto_0

    :cond_1
    aget-object v3, v3, v2

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public hasOnlyTrivialExceptionBounds(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 4

    const/4 p1, 0x1

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p2, v1

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v2, p1, :cond_1

    const/16 v3, 0x15

    if-eq v2, v3, :cond_1

    const/16 v3, 0x19

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method public incorporate(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBoundsCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->captures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBoundsCount:I

    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBoundsCount:I

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    invoke-virtual {p0, p1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporate(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Z

    move-result v0

    if-nez v0, :cond_1

    return v4

    .line 5
    :cond_1
    invoke-virtual {p0, p1, v3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporate(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Z

    move-result v0

    if-nez v0, :cond_2

    return v4

    .line 6
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    array-length v5, v0

    add-int v6, v5, v2

    .line 7
    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    .line 8
    invoke-static {v0, v4, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-static {v3, v4, v6, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporatedBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    .line 11
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->unincorporatedBoundsCount:I

    if-gtz v0, :cond_0

    return v1
.end method

.method public incorporate(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 12
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    const/4 v9, 0x4

    .line 13
    new-array v3, v9, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    .line 14
    array-length v4, v0

    const/4 v10, 0x0

    move v5, v10

    :goto_0
    const/4 v12, 0x1

    if-lt v5, v4, :cond_10

    .line 15
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->captures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 16
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->captures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return v12

    .line 18
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    .line 20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    .line 21
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 22
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v6

    .line 23
    iget-object v0, v14, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v0

    new-array v3, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    .line 24
    invoke-static {v0, v10, v3, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$1;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v9, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$1;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)V

    .line 26
    array-length v5, v6

    move v4, v10

    :goto_2
    if-lt v4, v5, :cond_1

    const/4 v9, 0x4

    goto :goto_1

    .line 27
    :cond_1
    aget-object v3, v6, v4

    .line 28
    iget-object v0, v14, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v0, v4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    .line 29
    invoke-virtual {v3, v0, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->getTypeBounds(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    move-result-object v1

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v7, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBounds([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    .line 30
    iget-object v1, v15, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v1, v1, v4

    .line 31
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eqz v2, :cond_e

    .line 32
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    .line 33
    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 34
    iget-object v11, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    if-eqz v11, :cond_d

    .line 35
    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->sameBounds:Ljava/util/Set;

    if-eqz v0, :cond_4

    .line 36
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 37
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_2

    goto :goto_4

    .line 38
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    .line 39
    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v12, v12, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-nez v12, :cond_3

    return v10

    :cond_3
    const/4 v12, 0x1

    goto :goto_3

    .line 40
    :cond_4
    :goto_4
    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->subBounds:Ljava/util/Set;

    if-eqz v0, :cond_6

    .line 41
    iget-object v12, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v12, :cond_5

    .line 42
    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->object:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 43
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 44
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    move-object/from16 p2, v1

    move/from16 v19, v4

    move/from16 v23, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v9

    move-object v9, v2

    goto/16 :goto_8

    .line 45
    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    .line 46
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-nez v10, :cond_9

    .line 47
    iget-object v10, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 p2, v0

    .line 48
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne v10, v0, :cond_8

    move-object/from16 p3, v1

    move-object/from16 v20, v3

    move/from16 v19, v4

    move-object v10, v12

    goto :goto_6

    .line 49
    :cond_8
    array-length v0, v10

    move-object/from16 p3, v1

    add-int/lit8 v1, v0, 0x1

    .line 50
    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 51
    move-object/from16 v19, v12

    check-cast v19, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 v20, v3

    const/4 v3, 0x0

    aput-object v19, v1, v3

    move/from16 v19, v4

    const/4 v4, 0x1

    .line 52
    invoke-static {v10, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    move-object v10, v0

    .line 54
    :goto_6
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    move-object/from16 v21, p2

    move-object/from16 v0, p0

    move-object/from16 p2, p3

    move-object/from16 v1, p1

    move-object v4, v2

    move-object v2, v9

    move-object/from16 v22, v9

    move-object v9, v4

    move-object/from16 v4, p2

    move/from16 v23, v5

    move-object/from16 v5, v21

    move-object/from16 v21, v6

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addTypeBoundsFromWildcardBound(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    move-object/from16 v1, p2

    move-object v2, v9

    move/from16 v4, v19

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v9, v22

    move/from16 v5, v23

    :goto_7
    const/4 v10, 0x0

    goto :goto_5

    :cond_9
    move-object/from16 v22, v9

    goto :goto_7

    .line 55
    :goto_8
    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    if-eqz v0, :cond_f

    .line 56
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 57
    :cond_a
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_a

    .line 58
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    .line 59
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-nez v2, :cond_a

    .line 60
    iget v2, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    move-object/from16 v2, p2

    .line 61
    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->reduceOneConstraint(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    return v1

    :cond_d
    move/from16 v19, v4

    move/from16 v23, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v9

    goto :goto_a

    :cond_e
    move/from16 v19, v4

    move/from16 v23, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v9

    .line 62
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v7, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :cond_f
    :goto_a
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v6, v21

    move-object/from16 v9, v22

    move/from16 v5, v23

    const/4 v10, 0x0

    const/4 v12, 0x1

    goto/16 :goto_2

    .line 63
    :cond_10
    aget-object v6, v0, v5

    .line 64
    array-length v9, v1

    move-object v10, v6

    const/4 v6, 0x0

    :goto_b
    if-lt v6, v9, :cond_11

    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 65
    :cond_11
    aget-object v11, v1, v6

    if-ne v10, v11, :cond_12

    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v20, v4

    move v13, v5

    move v4, v6

    const/4 v2, 0x2

    const/4 v6, 0x0

    goto/16 :goto_1b

    :cond_12
    move-object v12, v11

    const/4 v13, 0x2

    move-object v11, v10

    const/4 v10, 0x1

    :goto_c
    if-ne v10, v13, :cond_13

    move-object/from16 v24, v12

    move-object v12, v11

    move-object/from16 v11, v24

    .line 66
    :cond_13
    iget v14, v11, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    const/4 v15, 0x3

    if-eq v14, v13, :cond_1b

    if-eq v14, v15, :cond_17

    const/4 v15, 0x4

    if-eq v14, v15, :cond_14

    goto :goto_e

    .line 67
    :cond_14
    iget v14, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    if-eq v14, v13, :cond_16

    const/4 v13, 0x3

    if-eq v14, v13, :cond_16

    if-eq v14, v15, :cond_15

    goto :goto_e

    .line 68
    :cond_15
    invoke-direct {v7, v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->combineSameSame(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v13

    :goto_d
    const/4 v14, 0x0

    goto :goto_f

    .line 69
    :cond_16
    invoke-direct {v7, v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->combineSameSubSuper(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v13

    goto :goto_d

    .line 70
    :cond_17
    iget v13, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1a

    const/4 v14, 0x3

    if-eq v13, v14, :cond_19

    const/4 v14, 0x4

    if-eq v13, v14, :cond_18

    :goto_e
    const/4 v13, 0x0

    goto :goto_d

    .line 71
    :cond_18
    invoke-direct {v7, v12, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->combineSameSubSuper(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v13

    goto :goto_d

    .line 72
    :cond_19
    invoke-direct {v7, v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->combineEqualSupers(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v13

    goto :goto_d

    .line 73
    :cond_1a
    invoke-direct {v7, v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->combineSuperAndSub(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v13

    goto :goto_d

    .line 74
    :cond_1b
    iget v13, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1e

    const/4 v14, 0x3

    if-eq v13, v14, :cond_1d

    const/4 v14, 0x4

    if-eq v13, v14, :cond_1c

    goto :goto_e

    .line 75
    :cond_1c
    invoke-direct {v7, v12, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->combineSameSubSuper(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v13

    goto :goto_d

    .line 76
    :cond_1d
    invoke-direct {v7, v12, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->combineSuperAndSub(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v13

    goto :goto_d

    .line 77
    :cond_1e
    invoke-direct {v7, v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->combineEqualSupers(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v13

    .line 78
    iget-object v14, v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v15, v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v14, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    :goto_f
    if-eqz v13, :cond_21

    .line 79
    iget-object v15, v13, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move/from16 v20, v4

    iget-object v4, v13, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-ne v15, v4, :cond_20

    :cond_1f
    :goto_10
    const/4 v13, 0x0

    goto :goto_11

    :cond_20
    const/4 v4, 0x0

    .line 80
    aget-object v15, v3, v4

    invoke-virtual {v13, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;)Z

    move-result v4

    if-nez v4, :cond_1f

    const/4 v4, 0x1

    aget-object v15, v3, v4

    invoke-virtual {v13, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;)Z

    move-result v4

    if-nez v4, :cond_1f

    const/4 v4, 0x2

    .line 81
    aget-object v15, v3, v4

    invoke-virtual {v13, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;)Z

    move-result v4

    if-nez v4, :cond_1f

    const/4 v4, 0x3

    aget-object v15, v3, v4

    invoke-virtual {v13, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_10

    :cond_21
    move/from16 v20, v4

    :cond_22
    :goto_11
    if-eqz v13, :cond_28

    const/4 v4, 0x2

    .line 82
    aget-object v15, v3, v4

    const/16 v16, 0x3

    aput-object v15, v3, v16

    const/4 v15, 0x1

    .line 83
    aget-object v16, v3, v15

    aput-object v16, v3, v4

    const/4 v4, 0x0

    .line 84
    aget-object v18, v3, v4

    aput-object v18, v3, v15

    .line 85
    aput-object v13, v3, v4

    .line 86
    invoke-virtual {v7, v8, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->reduceOneConstraint(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result v18

    if-nez v18, :cond_23

    return v4

    :cond_23
    if-eqz v2, :cond_28

    .line 87
    iget-object v4, v13, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move/from16 v18, v2

    move-object/from16 v19, v3

    iget-wide v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v4, v13, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v13, v5

    iget-wide v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v2, v4

    const-wide/high16 v4, 0x180000000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_26

    .line 88
    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v5, v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 89
    iget v4, v11, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_25

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v15, v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v4, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_13

    :cond_24
    :goto_12
    move v4, v6

    goto :goto_15

    .line 90
    :cond_25
    :goto_13
    iget v4, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    if-ne v4, v5, :cond_26

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v15, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v4, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_12

    :cond_26
    :goto_14
    move v4, v6

    goto :goto_16

    :cond_27
    const/4 v5, 0x4

    goto :goto_12

    .line 91
    :goto_15
    iget-wide v5, v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->nullHints:J

    or-long/2addr v5, v2

    iput-wide v5, v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->nullHints:J

    .line 92
    iget-wide v5, v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->nullHints:J

    or-long/2addr v2, v5

    iput-wide v2, v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->nullHints:J

    goto :goto_16

    :cond_28
    move/from16 v18, v2

    move-object/from16 v19, v3

    move v13, v5

    goto :goto_14

    :goto_16
    if-eqz v14, :cond_29

    .line 93
    invoke-direct {v7, v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->deriveTypeArgumentConstraints(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v2

    goto :goto_17

    :cond_29
    const/4 v2, 0x0

    :goto_17
    if-eqz v2, :cond_2c

    .line 94
    array-length v3, v2

    const/4 v5, 0x0

    :goto_18
    if-lt v5, v3, :cond_2a

    const/4 v2, 0x2

    const/4 v6, 0x0

    goto :goto_19

    .line 95
    :cond_2a
    aget-object v6, v2, v5

    invoke-virtual {v7, v8, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->reduceOneConstraint(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result v6

    if-nez v6, :cond_2b

    const/4 v6, 0x0

    return v6

    :cond_2b
    const/4 v6, 0x0

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_2c
    const/4 v6, 0x0

    const/4 v2, 0x2

    :goto_19
    if-ne v10, v2, :cond_2d

    move-object/from16 v24, v12

    move-object v12, v11

    move-object/from16 v11, v24

    :cond_2d
    if-eq v0, v1, :cond_2f

    add-int/lit8 v10, v10, 0x1

    if-le v10, v2, :cond_2e

    goto :goto_1a

    :cond_2e
    move v6, v4

    move v5, v13

    move-object/from16 v3, v19

    move/from16 v4, v20

    move v13, v2

    move/from16 v2, v18

    goto/16 :goto_c

    :cond_2f
    :goto_1a
    move-object v10, v11

    :goto_1b
    add-int/lit8 v3, v4, 0x1

    move v6, v3

    move v5, v13

    move/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    goto/16 :goto_b
.end method

.method public isInstantiated(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->instantiation:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public lowerBounds(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->lowerBounds(ZLorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method public numUninstantiatedVariables([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->isInstantiated(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reduceOneConstraint(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->reduce(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    if-eq v0, p2, :cond_7

    if-eqz v0, :cond_6

    instance-of p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    if-eqz p2, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->reduceOneConstraint(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_2
    instance-of p2, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    if-eqz p2, :cond_5

    move-object p2, v0

    check-cast p2, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    move v0, v2

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_3

    goto :goto_1

    :cond_3
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->reduceOneConstraint(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :cond_6
    :goto_1
    return v3

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to reduce constraint formula"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public superTypesWithCommonGenericType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    if-eqz p2, :cond_6

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_1

    filled-new-array {p1, p2}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-eqz v1, :cond_2

    filled-new-array {p1, v1}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->superTypesWithCommonGenericType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_4

    goto :goto_1

    :cond_4
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->superTypesWithCommonGenericType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    if-eqz v2, :cond_5

    return-object v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Type Bounds:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->flatten()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    const/16 v4, 0x9

    if-lt v2, v3, :cond_1

    const-string v1, "Capture Bounds:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->captures:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " = capt("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public upperBounds(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->boundsPerVariable:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->subBounds:Ljava/util/Set;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->upperBounds(ZLorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method
