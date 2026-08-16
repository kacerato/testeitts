.class public Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;
.source "SourceFile"


# instance fields
.field isSoft:Z

.field left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

.field nullHints:J


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V
    .locals 10

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 5
    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v4, v0, v2

    const-wide/high16 v6, 0x180000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long p2, v4, v8

    if-eqz p2, :cond_4

    and-long/2addr v0, v6

    and-long/2addr v2, v6

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    .line 7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_0
    const/4 p2, 0x2

    if-eq p3, p2, :cond_2

    const/4 p2, 0x3

    if-eq p3, p2, :cond_1

    const/4 p2, 0x4

    if-eq p3, p2, :cond_3

    move-wide v6, v8

    goto :goto_0

    :cond_1
    const-wide/high16 v6, 0x80000000000000L

    goto :goto_0

    :cond_2
    const-wide/high16 v6, 0x100000000000000L

    .line 8
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object p1

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->nullHints:J

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    iput-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->nullHints:J

    .line 9
    :cond_4
    :goto_1
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    .line 10
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->isSoft:Z

    return-void
.end method

.method public static createBoundOrDependency(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    invoke-virtual {p0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v1, 0x1

    invoke-direct {v0, p2, p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isBound()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v0, :cond_0

    const-string v0, "TypeBound  "

    goto :goto_0

    :cond_0
    const-string v0, "Dependency "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->left:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
