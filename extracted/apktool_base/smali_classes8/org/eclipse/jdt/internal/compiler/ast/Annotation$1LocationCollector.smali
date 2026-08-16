.class Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getLocations(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationCollector"
.end annotation


# instance fields
.field continueSearch:Z

.field searchedAnnotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field typePathEntries:Ljava/util/Stack;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->searchedAnnotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-void
.end method

.method private computeNestingDepth(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)[I
    .locals 5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAnnotatableLevels()I

    move-result p1

    new-array v1, p1, [I

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move-object v3, v0

    :goto_1
    if-nez v3, :cond_2

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-eqz v0, :cond_3

    if-gez p1, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, p1, -0x1

    aput v2, v1, p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isStatic()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    sub-int/2addr v2, p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    move p1, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isStatic()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    goto :goto_1

    :cond_3
    :goto_3
    return-object v1
.end method

.method private inspectAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    move v2, v0

    :goto_1
    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    if-eqz v3, :cond_3

    if-lt v2, v1, :cond_1

    goto :goto_2

    :cond_1
    aget-object v3, p1, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->searchedAnnotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-ne v3, v4, :cond_2

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private inspectArrayDimensions([[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    if-eqz v1, :cond_3

    if-lt v0, p2, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    aget-object v1, p1, v0

    :goto_1
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->inspectAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->TYPE_PATH_ELEMENT_ARRAY:[I

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private inspectTypeArguments([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    if-eqz v2, :cond_3

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    const/4 v4, 0x3

    filled-new-array {v4, v0}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    aget-object v3, p1, v0

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->setSize(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "search location for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->searchedAnnotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\ncurrent type_path entries : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/16 v5, 0x28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget v5, v4, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 2

    .line 30
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->getAnnotationsOnDimensions()[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v1, v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->inspectArrayDimensions([[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    .line 32
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    if-eqz v0, :cond_0

    .line 33
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 34
    :cond_0
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 8

    .line 1
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAnnotationsOnDimensions()[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->dimensions()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->inspectArrayDimensions([[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    .line 3
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    if-eqz p2, :cond_4

    .line 4
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->computeNestingDepth(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)[I

    move-result-object p2

    .line 5
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    .line 6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeArguments()[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAnnotatableLevels()I

    move-result p1

    .line 8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    add-int/lit8 p1, p1, -0x1

    .line 9
    :goto_0
    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    if-eqz v4, :cond_4

    if-gez p1, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->setSize(I)V

    .line 11
    aget v4, p2, p1

    move v5, v0

    :goto_1
    if-lt v5, v4, :cond_3

    if-eqz v1, :cond_1

    .line 12
    aget-object v4, v1, p1

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->inspectAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    .line 13
    :cond_1
    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 14
    aget-object v4, v2, p1

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->inspectTypeArguments([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 15
    :cond_3
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->TYPE_PATH_INNER_TYPE:[I

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v0
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 3

    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    .line 23
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    if-eqz v0, :cond_0

    .line 24
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p1, :cond_0

    .line 25
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 26
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->TYPE_PATH_ANNOTATION_ON_WILDCARD_BOUND:[I

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 28
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->continueSearch:Z

    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->setSize(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
