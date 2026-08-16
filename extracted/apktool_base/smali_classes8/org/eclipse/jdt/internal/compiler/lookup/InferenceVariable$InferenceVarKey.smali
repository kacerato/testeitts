.class Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InferenceVarKey"
.end annotation


# instance fields
.field position:J

.field rank:I

.field typeParameter:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;->typeParameter:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;->position:J

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;->rank:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;->position:J

    iget-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;->position:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;->rank:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;->rank:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;->typeParameter:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;->typeParameter:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;->position:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;->rank:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;->typeParameter:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    add-int/2addr v0, v1

    return v0
.end method
