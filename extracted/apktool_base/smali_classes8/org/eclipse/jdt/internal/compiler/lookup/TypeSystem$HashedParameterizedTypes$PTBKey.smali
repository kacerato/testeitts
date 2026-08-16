.class final Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PTBKey"
.end annotation


# instance fields
.field public arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field private enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field final synthetic this$1:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;

.field protected type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 4

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->this$1:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p5, :cond_4

    instance-of p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    invoke-virtual {p2, p0, p5}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->addWrapper(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :cond_0
    if-eqz p3, :cond_4

    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-lt p2, p1, :cond_1

    goto :goto_1

    :cond_1
    aget-object p4, p3, p2

    instance-of v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz v0, :cond_2

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    invoke-virtual {p4, p0, p5}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->addWrapper(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :cond_2
    aget-object p4, p3, p2

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result p4

    if-eqz p4, :cond_3

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x100000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->effectivelyEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hash(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->hash(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    array-length v1, v1

    :goto_0
    if-lt v2, v1, :cond_1

    return v0

    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->hash(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public swapUnresolved(Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne v0, p1, :cond_1

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertUnresolvedBinaryToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_4

    array-length v0, v0

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v2, v1

    if-ne v3, p1, :cond_3

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertUnresolvedBinaryToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method
