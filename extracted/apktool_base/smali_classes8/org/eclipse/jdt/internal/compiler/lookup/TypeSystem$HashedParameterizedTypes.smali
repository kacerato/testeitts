.class public final Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HashedParameterizedTypes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;
    }
.end annotation


# instance fields
.field hashedParameterizedTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;",
            "[",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;)V
    .locals 1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0x100

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->hashedParameterizedTypes:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public get(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    move-object/from16 v9, p1

    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v11, 0x0

    if-nez v7, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    array-length v0, v7

    :goto_0
    const/4 v12, 0x0

    if-nez v7, :cond_1

    move-object v13, v12

    goto :goto_1

    :cond_1
    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v13, v1

    :goto_1
    move v1, v11

    :goto_2
    if-lt v1, v0, :cond_a

    if-nez v8, :cond_2

    move-object v14, v12

    goto :goto_3

    :cond_2
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v14, v0

    :goto_3
    new-instance v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;

    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v13

    move-object v4, v14

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;

    if-eqz v0, :cond_3

    move-object v3, v7

    move-object v14, v8

    move-object v2, v9

    goto :goto_4

    :cond_3
    move-object v2, v10

    move-object v3, v13

    :goto_4
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->hashedParameterizedTypes:Ljava/util/HashMap;

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-nez v4, :cond_4

    move v5, v11

    goto :goto_5

    :cond_4
    array-length v0, v4

    move v5, v0

    :goto_5
    if-lt v11, v5, :cond_5

    return-object v12

    :cond_5
    aget-object v0, v4, v11

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eq v1, v2, :cond_7

    :cond_6
    :goto_6
    move-object/from16 v15, p4

    goto :goto_7

    :cond_7
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne v1, v14, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->effectivelyEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    move-object/from16 v15, p4

    invoke-static {v15, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->effectivelyEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v15, p4

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    aget-object v3, v7, v1

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    aput-object v2, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public put(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_1
    move v4, p1

    :goto_2
    if-lt v4, v0, :cond_4

    if-nez p3, :cond_2

    move-object v4, v1

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v4, p2

    :goto_3
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    iget-object v5, p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes$PTBKey;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->hashedParameterizedTypes:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-nez p3, :cond_3

    const/4 p3, 0x1

    new-array p3, p3, [Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    goto :goto_4

    :cond_3
    array-length v0, p3

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-static {p3, p1, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v0

    move-object p3, v1

    :goto_4
    aput-object p4, p3, p1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->hashedParameterizedTypes:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
