.class Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Queue"
.end annotation


# instance fields
.field public end:I

.field public names:[[C

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->names:[[C

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->start:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->end:I

    return-void
.end method


# virtual methods
.method public add([C)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->end:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->names:[[C

    array-length v2, v1

    if-ne v0, v2, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->start:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->end:I

    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [[C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->names:[[C

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->start:I

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->names:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->end:I

    aput-object p1, v0, v1

    return-void
.end method

.method public retrieve()[C
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->start:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->end:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->names:[[C

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->start:I

    aget-object v0, v2, v0

    if-le v3, v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->start:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->end:I

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Queue:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->start:I

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->end:I

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->names:[[C

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
