.class abstract Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;
.source "SourceFile"


# static fields
.field static final EMPTY_VARIABLE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;"
        }
    .end annotation
.end field

.field static final LEFT_ANGLE_BRACKET:C = '\u27e8'

.field static final NO_CONSTRAINTS:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

.field static final RIGHT_ANGLE_BRACKET:C = '\u27e9'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->EMPTY_VARIABLE_LIST:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->NO_CONSTRAINTS:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;-><init>()V

    return-void
.end method


# virtual methods
.method public appendTypeName(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method public applySubstitution(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    aget-object v2, p2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->getInstantiation(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public inputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;"
        }
    .end annotation

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->EMPTY_VARIABLE_LIST:Ljava/util/List;

    return-object p1
.end method

.method public outputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectInferenceVariables(Ljava/util/Set;)V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->inputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public abstract reduce(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation
.end method
