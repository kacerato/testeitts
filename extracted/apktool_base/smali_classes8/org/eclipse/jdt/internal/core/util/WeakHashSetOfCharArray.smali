.class public Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;
    }
.end annotation


# instance fields
.field public elementSize:I

.field referenceQueue:Ljava/lang/ref/ReferenceQueue;

.field threshold:I

.field values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->elementSize:I

    .line 5
    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->threshold:I

    int-to-float v0, p1

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 6
    :cond_0
    new-array p1, v0, [Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    return-void
.end method

.method private addValue(Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    array-length v1, v1

    iget v2, p1, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;->hashCode:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int/2addr v2, v1

    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    aget-object v4, v3, v2

    if-nez v4, :cond_3

    aput-object p1, v3, v2

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->elementSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->elementSize:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->threshold:I

    if-le p1, v0, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->rehash()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private cleanupGarbageCollectedValues()V
    .locals 7

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;->hashCode:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    array-length v2, v2

    const v3, 0x7fffffff

    and-int/2addr v3, v1

    rem-int/2addr v3, v2

    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    aget-object v4, v4, v3

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    if-ne v4, v0, :cond_5

    move v0, v3

    :goto_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    add-int/lit8 v5, v0, 0x1

    rem-int/2addr v5, v2

    aget-object v6, v4, v5

    if-eqz v6, :cond_4

    iget v6, v6, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;->hashCode:I

    if-eq v6, v1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v5

    goto :goto_2

    :cond_4
    :goto_3
    aget-object v1, v4, v0

    aput-object v1, v4, v3

    const/4 v1, 0x0

    aput-object v1, v4, v0

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->elementSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->elementSize:I

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v2, :cond_1

    const/4 v3, 0x0

    goto :goto_1
.end method

.method private rehash()V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->elementSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->threshold:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->threshold:I

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->elementSize:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->elementSize:I

    return-void

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->addValue(Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add([C)[C
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->cleanupGarbageCollectedValues()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;-><init>([CLjava/lang/ref/ReferenceQueue;)V

    aput-object v0, v2, v1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->elementSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->elementSize:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->threshold:I

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->rehash()V

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public contains([C)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->get([C)[C

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get([C)[C
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->cleanupGarbageCollectedValues()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove([C)[C
    .locals 5

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->cleanupGarbageCollectedValues()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->elementSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->elementSize:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    aput-object v3, p1, v1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->rehash()V

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->elementSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->values:[Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray$HashableWeakReference;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    if-eqz v3, :cond_1

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v3, "\", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
