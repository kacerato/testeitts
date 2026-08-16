.class public LS8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;

.field public final b:[I

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "LAc/b;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:[I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rootBones",
            "boneGlobalToLocalMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LS8/a;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LS8/a;->d:Ljava/util/HashMap;

    new-instance v7, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v8, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v8}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v3, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, v7

    move-object v5, v8

    invoke-virtual/range {v1 .. v6}, LS8/a;->d(Ljava/util/List;ILcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Ljava/util/HashSet;)V

    const/4 p1, 0x0

    new-array v1, p1, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;

    invoke-virtual {v7, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;

    iput-object v1, p0, LS8/a;->a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, LS8/a;->b:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, LS8/a;->e:[I

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    move p2, p1

    :goto_0
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, LS8/a;->b:[I

    invoke-virtual {v8, p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, p2

    iget-object v0, p0, LS8/a;->e:[I

    const/4 v1, -0x1

    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p2, p0, LS8/a;->a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;

    array-length v0, p2

    if-ge p1, v0, :cond_4

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LS8/a;->c:Ljava/util/HashMap;

    new-instance v1, LAc/b;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, LS8/a;->d:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;->d()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_3

    iget-object v0, p0, LS8/a;->e:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, v0, p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public a()[LS8/b;
    .locals 4

    iget-object v0, p0, LS8/a;->a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;

    array-length v0, v0

    new-array v0, v0, [LS8/b;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LS8/a;->a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, LS8/b;

    aget-object v2, v2, v1

    invoke-direct {v3, v2}, LS8/b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b(LAc/b;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "boneID"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, LS8/a;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    return v0
.end method

.method public final c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;ILcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bone",
            "parent",
            "outBones",
            "outParents",
            "visited"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;",
            "I",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v0

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;

    move-object v1, p0

    move v3, v0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, LS8/a;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;ILcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Ljava/util/HashSet;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final d(Ljava/util/List;ILcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Ljava/util/HashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "boneList",
            "parent",
            "outBones",
            "outParents",
            "visited"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;",
            ">;I",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, LS8/a;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;ILcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, LS8/a;->a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;

    array-length v0, v0

    return v0
.end method
