.class Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreeSets"
.end annotation


# instance fields
.field dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;"
        }
    .end annotation
.end field

.field instantiation:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field inverseBounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;",
            ">;"
        }
    .end annotation
.end field

.field sameBounds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;",
            ">;"
        }
    .end annotation
.end field

.field subBounds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;",
            ">;"
        }
    .end annotation
.end field

.field superBounds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addBound1(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Z
    .locals 3

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->sameBounds:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->sameBounds:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->sameBounds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected bound relation in : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->subBounds:Ljava/util/Set;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->subBounds:Ljava/util/Set;

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->subBounds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private useNullHints(J[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 2

    const-wide/high16 v0, 0x180000000000000L

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :goto_0
    array-length p1, p3

    if-lt v1, p1, :cond_0

    goto :goto_2

    :cond_0
    aget-object p1, p3, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    aput-object p1, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nullAnnotationsFromTagBits(J)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    if-eqz p1, :cond_3

    :goto_1
    array-length p2, p3

    if-lt v1, p2, :cond_2

    goto :goto_2

    :cond_2
    aget-object p2, p3, v1

    invoke-virtual {p4, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    aput-object p2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public addBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Z
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->addBound1(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->dependencies:Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectInferenceVariables(Ljava/util/Set;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->dependencies:Ljava/util/Set;

    if-nez p1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->dependencies:Ljava/util/Set;

    :cond_1
    return v0
.end method

.method public combineAndUseNullHints(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;JLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->sameBounds:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->nullHints:J

    or-long/2addr p2, v1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->nullHints:J

    or-long/2addr p2, v1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->subBounds:Ljava/util/Set;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_5

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->nullHints:J

    or-long/2addr p2, v1

    goto :goto_4

    :cond_5
    :goto_5
    const-wide/high16 v0, 0x180000000000000L

    cmp-long v0, p2, v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p4, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nullAnnotationsFromTagBits(J)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :cond_7
    return-object p1
.end method

.method public copy()Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->sameBounds:Ljava/util/Set;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->sameBounds:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->sameBounds:Ljava/util/Set;

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->subBounds:Ljava/util/Set;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->subBounds:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->subBounds:Ljava/util/Set;

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->instantiation:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->instantiation:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->dependencies:Ljava/util/Set;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->dependencies:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->dependencies:Ljava/util/Set;

    :cond_3
    return-object v0
.end method

.method public findSingleWrapperType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->instantiation:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->instantiation:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-object v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->subBounds:Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return-object v2

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    packed-switch v3, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    return-object v2

    :cond_6
    :goto_4
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public flattenInto([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;I)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->sameBounds:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->sameBounds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->subBounds:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->subBounds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    :cond_2
    return p2
.end method

.method public hasDependency(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->dependencies:Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->inverseBounds:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public lowerBounds(ZLorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-wide v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->nullHints:J

    const/4 v5, 0x0

    move v6, v5

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v6, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_1
    if-ge v6, v0, :cond_2

    new-array p1, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v5, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p1

    :cond_2
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p0, v3, v4, v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->useNullHints(J[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->sortTypes([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_4

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_4
    add-int/lit8 v9, v6, 0x1

    aput-object v8, v1, v6

    iget-wide v6, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->nullHints:J

    or-long/2addr v3, v6

    move v6, v9

    goto :goto_0
.end method

.method public setInstantiation(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 10

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_3

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x180000000000000L

    and-long/2addr v0, v2

    iget-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v6, v4, v0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->instantiation:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p2, :cond_0

    iget-wide v8, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v6, v8

    :cond_0
    and-long/2addr v6, v2

    cmp-long p2, v6, v2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v6

    :goto_0
    and-long/2addr v2, v4

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    invoke-virtual {p3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nullAnnotationsFromTagBits(J)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->instantiation:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->superBounds:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->sameBounds:Ljava/util/Set;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->subBounds:Ljava/util/Set;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public upperBounds(ZLorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->subBounds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->subBounds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-wide v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->nullHints:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v6

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_5

    if-nez v7, :cond_2

    if-eqz v5, :cond_1

    new-array p1, v9, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v5, p1, v6

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_1
    return-object p1

    :cond_2
    if-ne v7, v9, :cond_3

    if-eqz v5, :cond_3

    filled-new-array {v5}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_3
    if-ge v7, v0, :cond_4

    new-array p1, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v6, p1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p1

    :cond_4
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p0, v3, v4, v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$ThreeSets;->useNullHints(J[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->sortTypes([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v1

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_6

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_6
    instance-of v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v9, :cond_7

    add-int/lit8 v9, v7, 0x1

    move-object v10, v8

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v10, v1, v7

    iget-wide v7, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v10, 0x180000000000000L

    and-long/2addr v7, v10

    or-long/2addr v3, v7

    move v7, v9

    goto :goto_0

    :cond_7
    if-eqz v5, :cond_8

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_8
    move-object v5, v8

    goto :goto_0
.end method
