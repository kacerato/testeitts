.class public Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;
    }
.end annotation


# instance fields
.field private annotationTypes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field protected parameterizedTypes:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;

.field private typeid:I

.field private types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/16 v1, 0x10

    invoke-direct {p1, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->annotationTypes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    const/16 p1, 0x100

    new-array p1, p1, [[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->parameterizedTypes:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;

    return-void
.end method

.method private cacheDerivedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_5

    .line 2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v1, v0

    .line 3
    array-length v1, v0

    .line 4
    div-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    move v5, v1

    move v4, v3

    .line 5
    :cond_0
    aget-object v6, v0, v2

    if-nez v6, :cond_2

    if-eq v2, v4, :cond_3

    if-lez v2, :cond_1

    add-int/lit8 v5, v2, -0x1

    .line 6
    aget-object v5, v0, v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v2, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v2, 0x1

    :goto_0
    add-int v2, v4, v5

    .line 7
    div-int/lit8 v2, v2, 0x2

    if-ge v2, v1, :cond_3

    if-le v4, v5, :cond_0

    :cond_3
    :goto_1
    if-ne v2, v1, :cond_4

    mul-int/lit8 v4, v1, 0x2

    .line 8
    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    aput-object v4, v0, p1

    move-object v0, v4

    .line 10
    :cond_4
    aput-object p2, v0, v2

    return-object p2

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final cacheDerivedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    .line 12
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->cacheDerivedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 13
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v0, p1, :cond_0

    .line 14
    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->cacheDerivedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_0
    return-object p3
.end method

.method public fixTypeVariableDeclaringElement(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V
    .locals 4

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v1, v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 p1, 0x0

    :goto_0
    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, v0, p1

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object p2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    :goto_1
    return-void
.end method

.method public forceRegisterAsDerived(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 3

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v1, v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-ne v2, p1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    invoke-direct {p0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->cacheDerivedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type was not yet registered as expected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    return-object p1
.end method

.method public getAnnotatedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method public final getAnnotationType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->annotationTypes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ELEMENT_VALUE_PAIRS:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ELEMENT_VALUE_PAIRS:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->annotationTypes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->resolve()V

    :cond_2
    return-object v0
.end method

.method public getArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;
    .locals 6

    .line 1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v0

    add-int/2addr p2, v0

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    aget-object v0, v0, v1

    .line 6
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    aget-object v4, v0, v3

    if-nez v4, :cond_4

    :goto_1
    if-ne v3, v1, :cond_2

    mul-int/lit8 v4, v1, 0x2

    .line 8
    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    aput-object v4, v0, v1

    move-object v0, v4

    .line 10
    :cond_2
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v1, p1, p2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    aput-object v1, v0, v3

    .line 11
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p2, p1

    .line 12
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    if-ne v0, p2, :cond_3

    mul-int/lit8 v0, p2, 0x2

    .line 13
    new-array v0, v0, [[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v0, p1, p2

    add-int/lit8 p1, p2, 0x1

    .line 15
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    iput p2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    aput-object v1, v0, v2

    return-object v1

    .line 16
    :cond_4
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 17
    :cond_5
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    if-ne v5, p1, :cond_6

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v5

    if-ne v5, p2, :cond_6

    .line 18
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    return-object v4

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1
.end method

.method public final getCapturedWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;IILorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    aget-object v2, v2, v3

    array-length v3, v2

    add-int/lit8 v4, v3, -0x1

    move v5, v3

    :goto_0
    const/4 v6, -0x1

    if-ge v4, v6, :cond_0

    move-object/from16 v13, p5

    goto :goto_2

    :cond_0
    if-ne v4, v6, :cond_1

    move-object/from16 v13, p5

    goto :goto_1

    :cond_1
    aget-object v6, v2, v4

    if-nez v6, :cond_2

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v13, p5

    move v5, v4

    goto :goto_4

    :cond_2
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v7

    if-nez v7, :cond_3

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v13, p5

    goto :goto_4

    :cond_3
    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->cud:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-object/from16 v13, p5

    if-eq v7, v13, :cond_5

    :goto_1
    move v4, v5

    :goto_2
    if-ne v4, v3, :cond_4

    mul-int/lit8 v5, v3, 0x2

    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v6, 0x0

    invoke-static {v2, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    aput-object v5, v2, v1

    move-object v2, v5

    :cond_4
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    move-object v8, v1

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;IILorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)V

    aput-object v1, v2, v4

    return-object v1

    :cond_5
    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->sourceType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 v8, p2

    if-ne v7, v8, :cond_8

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->start:I

    move/from16 v9, p3

    if-ne v7, v9, :cond_7

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->end:I

    move/from16 v10, p4

    if-eq v7, v10, :cond_6

    goto :goto_4

    :cond_6
    return-object v6

    :cond_7
    :goto_3
    move/from16 v10, p4

    goto :goto_4

    :cond_8
    move/from16 v9, p3

    goto :goto_3

    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method public final getDerivedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    aget-object v2, p1, v0

    if-eqz v2, :cond_9

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getDerivedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_1
    if-lt v5, v4, :cond_3

    goto :goto_2

    :cond_3
    aget-object v6, v3, v5

    if-nez v6, :cond_4

    :goto_2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;-><init>([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    invoke-direct {p0, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->cacheDerivedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isIntersectionType18()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getIntersectingTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    array-length v8, v7

    if-eq v8, v1, :cond_6

    goto :goto_4

    :cond_6
    move v8, v0

    :goto_3
    if-lt v8, v1, :cond_7

    return-object v6

    :cond_7
    aget-object v9, p1, v8

    aget-object v10, v7, v8

    if-eq v9, v10, :cond_8

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    return-object v2
.end method

.method public getMemberType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 0

    return-object p1
.end method

.method public getParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez p3, :cond_0

    .line 2
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz v1, :cond_0

    .line 3
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    move v2, v1

    goto :goto_0

    .line 5
    :cond_1
    array-length v2, p2

    :goto_0
    const/4 v3, 0x0

    if-nez p2, :cond_2

    move-object v4, v3

    goto :goto_1

    .line 6
    :cond_2
    new-array v4, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_1
    move v5, v1

    :goto_2
    if-lt v5, v2, :cond_6

    if-nez p3, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 8
    :goto_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->parameterizedTypes:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v2, v0, v4, v3, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->get(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    .line 9
    :cond_4
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v2, v0, v4, v3, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    .line 10
    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->cacheDerivedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 11
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->parameterizedTypes:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;

    invoke-virtual {v0, p1, p2, p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->put(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)V

    .line 12
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p2, p1

    .line 13
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    if-ne p3, p2, :cond_5

    mul-int/lit8 p3, p2, 0x2

    .line 14
    new-array p3, p3, [[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, v1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    const/4 p3, 0x1

    new-array p3, p3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object p3, p1, p2

    add-int/lit8 p1, p2, 0x1

    .line 16
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    iput p2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    aput-object v2, p3, v1

    return-object v2

    .line 17
    :cond_6
    aget-object v6, p2, v5

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public getParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public getRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 5
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    aget-object v0, v0, v1

    .line 6
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-lt v3, v1, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    aget-object v4, v0, v3

    if-nez v4, :cond_5

    :goto_2
    if-ne v3, v1, :cond_3

    mul-int/lit8 v4, v1, 0x2

    .line 8
    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    aput-object v4, v0, v1

    move-object v0, v4

    .line 10
    :cond_3
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v1, p1, p2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    aput-object v1, v0, v3

    .line 11
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p2, p1

    .line 12
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    if-ne v0, p2, :cond_4

    mul-int/lit8 v0, p2, 0x2

    .line 13
    new-array v0, v0, [[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v0, p1, p2

    add-int/lit8 p1, p2, 0x1

    .line 15
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    iput p2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    aput-object v1, v0, v2

    return-object v1

    .line 16
    :cond_5
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    if-ne v5, p1, :cond_7

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    .line 17
    :cond_6
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    if-ne v5, p2, :cond_7

    .line 18
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    return-object v4

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public final getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnresolvedType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_1

    move-object p1, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    const v2, 0x7fffffff

    :try_start_0
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne v3, v2, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v1

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    if-ne v6, v3, :cond_2

    mul-int/lit8 v6, v3, 0x2

    new-array v6, v6, [[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v5, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_5

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    iput v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v4, v1, v3

    goto :goto_4

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_4
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v6, v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    aget-object v1, v3, v5

    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_3
    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v3, v2, :cond_8

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_8
    return-object v1

    :cond_9
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v4, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-eqz v0, :cond_a

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v1, v2, :cond_a

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    aget-object v0, v0, v1

    aput-object p1, v0, v5

    return-object p1

    :goto_5
    if-eqz v0, :cond_b

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v3, v2, :cond_b

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_b
    throw v1
.end method

.method public getWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;
    .locals 10

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->LUB_GENERIC:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 p1, 0x0

    if-nez p4, :cond_1

    move v0, p1

    goto :goto_0

    .line 3
    :cond_1
    array-length v0, p4

    :goto_0
    const/4 v2, 0x0

    if-nez p4, :cond_2

    move-object v4, v2

    goto :goto_1

    .line 4
    :cond_2
    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v4, v3

    :goto_1
    move v3, p1

    :goto_2
    if-lt v3, v0, :cond_f

    if-nez p3, :cond_3

    move-object v5, v2

    goto :goto_3

    .line 5
    :cond_3
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    move-object v5, p3

    .line 6
    :goto_3
    nop

    instance-of p3, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/4 v7, 0x1

    if-nez p3, :cond_5

    instance-of p3, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz p3, :cond_4

    instance-of p3, v5, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    if-eqz p3, :cond_5

    :cond_4
    move v6, p1

    goto :goto_4

    :cond_5
    move v6, v7

    .line 7
    :goto_4
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v6, :cond_6

    iget p4, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    goto :goto_5

    :cond_6
    iget p4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :goto_5
    aget-object v8, p3, p4

    .line 8
    array-length v9, v8

    move p3, p1

    :goto_6
    if-lt p3, v9, :cond_7

    goto :goto_7

    .line 9
    :cond_7
    aget-object p4, v8, p3

    if-nez p4, :cond_b

    :goto_7
    if-ne p3, v9, :cond_9

    mul-int/lit8 p4, v9, 0x2

    .line 10
    new-array p4, p4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v8, p1, p4, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v6, :cond_8

    iget v2, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    goto :goto_8

    :cond_8
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :goto_8
    aput-object p4, v0, v2

    move-object v8, p4

    .line 12
    :cond_9
    new-instance p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-object v0, p4

    move v2, p2

    move-object v3, v5

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    aput-object p4, v8, p3

    .line 13
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p3, p2

    .line 14
    iget p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    if-ne p5, p3, :cond_a

    mul-int/lit8 p5, p3, 0x2

    .line 15
    new-array p5, p5, [[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p2, p1, p5, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    :cond_a
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    new-array p5, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object p5, p2, p3

    add-int/lit8 p2, p3, 0x1

    .line 17
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    iput p3, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    aput-object p4, p5, p1

    return-object p4

    .line 18
    :cond_b
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-ne v0, v1, :cond_e

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_9

    .line 19
    :cond_c
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->rank()I

    move-result v0

    if-ne v0, p2, :cond_e

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->boundKind()I

    move-result v0

    if-ne v0, p5, :cond_e

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->bound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eq v0, v5, :cond_d

    goto :goto_9

    .line 20
    :cond_d
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->additionalBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-static {v0, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->effectivelyEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 21
    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    return-object p4

    :cond_e
    :goto_9
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    .line 22
    :cond_f
    aget-object v5, p4, v3

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method public getWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;
    .locals 0

    .line 23
    invoke-virtual/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p1

    return-object p1
.end method

.method public isAnnotatedTypeSystem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->annotationTypes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/16 v0, 0x80

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->typeid:I

    const/16 v0, 0x100

    new-array v0, v0, [[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->parameterizedTypes:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;

    return-void
.end method

.method public updateCaches(Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 7

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_0
    const/4 v1, 0x0

    if-eq v0, v2, :cond_6

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->types:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    array-length v4, v3

    :goto_0
    move v5, v1

    :goto_1
    if-lt v5, v4, :cond_2

    goto :goto_2

    :cond_2
    aget-object v6, v3, v5

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    if-ne v6, p1, :cond_5

    iget v6, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v6, v2, :cond_4

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_4
    aput-object p2, v3, v5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->annotationTypes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->annotationTypes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    array-length v2, v0

    :goto_3
    if-lt v1, v2, :cond_7

    goto :goto_4

    :cond_7
    aget-object v3, v0, v1

    if-ne v3, p1, :cond_8

    aput-object p2, v0, v1

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method
