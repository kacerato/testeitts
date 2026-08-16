.class public Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;
.super Lorg/eclipse/jdt/internal/core/AnnotatableInfo;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ISourceType;


# static fields
.field protected static final NO_FIELDS:[Lorg/eclipse/jdt/internal/core/SourceField;

.field protected static final NO_IMPORTS:[Lorg/eclipse/jdt/internal/compiler/env/ISourceImport;

.field protected static final NO_INITIALIZERS:[Lorg/eclipse/jdt/internal/core/InitializerElementInfo;

.field protected static final NO_METHODS:[Lorg/eclipse/jdt/internal/core/SourceMethod;

.field protected static final NO_TYPES:[Lorg/eclipse/jdt/internal/core/SourceType;


# instance fields
.field protected categories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected children:[Lorg/eclipse/jdt/core/IJavaElement;

.field protected handle:Lorg/eclipse/jdt/core/IType;

.field protected superInterfaceNames:[[C

.field protected superclassName:[C

.field protected typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/env/ISourceImport;

    sput-object v1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->NO_IMPORTS:[Lorg/eclipse/jdt/internal/compiler/env/ISourceImport;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/core/InitializerElementInfo;

    sput-object v1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->NO_INITIALIZERS:[Lorg/eclipse/jdt/internal/core/InitializerElementInfo;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/core/SourceField;

    sput-object v1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->NO_FIELDS:[Lorg/eclipse/jdt/internal/core/SourceField;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/core/SourceMethod;

    sput-object v1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->NO_METHODS:[Lorg/eclipse/jdt/internal/core/SourceMethod;

    new-array v0, v0, [Lorg/eclipse/jdt/internal/core/SourceType;

    sput-object v0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->NO_TYPES:[Lorg/eclipse/jdt/internal/core/SourceType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;-><init>()V

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->handle:Lorg/eclipse/jdt/core/IType;

    sget-object v0, Lorg/eclipse/jdt/internal/core/TypeParameter;->NO_TYPE_PARAMETERS:[Lorg/eclipse/jdt/core/ITypeParameter;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    return-void
.end method


# virtual methods
.method public addCategories(Lorg/eclipse/jdt/core/IJavaElement;[[C)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->categories:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->categories:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->categories:Ljava/util/HashMap;

    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCategories()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->categories:Ljava/util/HashMap;

    return-object v0
.end method

.method public getChildren()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    return-object v0
.end method

.method public bridge synthetic getDeclarationSourceEnd()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getDeclarationSourceEnd()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDeclarationSourceStart()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getDeclarationSourceStart()I

    move-result v0

    return v0
.end method

.method public getEnclosingType()Lorg/eclipse/jdt/internal/compiler/env/ISourceType;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->handle:Lorg/eclipse/jdt/core/IType;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    :try_start_0
    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public getFieldHandles()[Lorg/eclipse/jdt/internal/core/SourceField;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->NO_FIELDS:[Lorg/eclipse/jdt/internal/core/SourceField;

    return-object v0

    :cond_0
    new-array v1, v0, [Lorg/eclipse/jdt/internal/core/SourceField;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-lt v3, v0, :cond_3

    if-nez v4, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->NO_FIELDS:[Lorg/eclipse/jdt/internal/core/SourceField;

    return-object v0

    :cond_1
    if-ge v4, v0, :cond_2

    new-array v0, v4, [Lorg/eclipse/jdt/internal/core/SourceField;

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    :cond_2
    return-object v1

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v5, v5, v3

    instance-of v6, v5, Lorg/eclipse/jdt/internal/core/SourceField;

    if-eqz v6, :cond_4

    add-int/lit8 v6, v4, 0x1

    check-cast v5, Lorg/eclipse/jdt/internal/core/SourceField;

    aput-object v5, v1, v4

    move v4, v6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getFields()[Lorg/eclipse/jdt/internal/compiler/env/ISourceField;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getFieldHandles()[Lorg/eclipse/jdt/internal/core/SourceField;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/env/ISourceField;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/env/ISourceField;

    aput-object v4, v2, v3
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->handle:Lorg/eclipse/jdt/core/IType;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getHandle()Lorg/eclipse/jdt/core/IType;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->handle:Lorg/eclipse/jdt/core/IType;

    return-object v0
.end method

.method public getInitializers()[Lorg/eclipse/jdt/internal/core/InitializerElementInfo;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->NO_INITIALIZERS:[Lorg/eclipse/jdt/internal/core/InitializerElementInfo;

    return-object v0

    :cond_0
    new-array v1, v0, [Lorg/eclipse/jdt/internal/core/InitializerElementInfo;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-lt v3, v0, :cond_2

    if-nez v4, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->NO_INITIALIZERS:[Lorg/eclipse/jdt/internal/core/InitializerElementInfo;

    return-object v0

    :cond_1
    new-array v0, v4, [Lorg/eclipse/jdt/internal/core/InitializerElementInfo;

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v5, v5, v3

    instance-of v6, v5, Lorg/eclipse/jdt/internal/core/Initializer;

    if-eqz v6, :cond_3

    :try_start_0
    check-cast v5, Lorg/eclipse/jdt/internal/core/Initializer;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/InitializerElementInfo;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v6, v4, 0x1

    :try_start_1
    aput-object v5, v1, v4
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move v4, v6

    :catch_1
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getInterfaceNames()[[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->superInterfaceNames:[[C

    return-object v0
.end method

.method public getMemberTypeHandles()[Lorg/eclipse/jdt/internal/core/SourceType;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->NO_TYPES:[Lorg/eclipse/jdt/internal/core/SourceType;

    return-object v0

    :cond_0
    new-array v1, v0, [Lorg/eclipse/jdt/internal/core/SourceType;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-lt v3, v0, :cond_3

    if-nez v4, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->NO_TYPES:[Lorg/eclipse/jdt/internal/core/SourceType;

    return-object v0

    :cond_1
    if-ge v4, v0, :cond_2

    new-array v0, v4, [Lorg/eclipse/jdt/internal/core/SourceType;

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    :cond_2
    return-object v1

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v5, v5, v3

    instance-of v6, v5, Lorg/eclipse/jdt/internal/core/SourceType;

    if-eqz v6, :cond_4

    add-int/lit8 v6, v4, 0x1

    check-cast v5, Lorg/eclipse/jdt/internal/core/SourceType;

    aput-object v5, v1, v4

    move v4, v6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getMemberTypes()[Lorg/eclipse/jdt/internal/compiler/env/ISourceType;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getMemberTypeHandles()[Lorg/eclipse/jdt/internal/core/SourceType;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    aput-object v4, v2, v3
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getMethodHandles()[Lorg/eclipse/jdt/internal/core/SourceMethod;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->NO_METHODS:[Lorg/eclipse/jdt/internal/core/SourceMethod;

    return-object v0

    :cond_0
    new-array v1, v0, [Lorg/eclipse/jdt/internal/core/SourceMethod;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-lt v3, v0, :cond_3

    if-nez v4, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->NO_METHODS:[Lorg/eclipse/jdt/internal/core/SourceMethod;

    return-object v0

    :cond_1
    if-ge v4, v0, :cond_2

    new-array v0, v4, [Lorg/eclipse/jdt/internal/core/SourceMethod;

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    :cond_2
    return-object v1

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v5, v5, v3

    instance-of v6, v5, Lorg/eclipse/jdt/internal/core/SourceMethod;

    if-eqz v6, :cond_4

    add-int/lit8 v6, v4, 0x1

    check-cast v5, Lorg/eclipse/jdt/internal/core/SourceMethod;

    aput-object v5, v1, v4

    move v4, v6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getMethods()[Lorg/eclipse/jdt/internal/compiler/env/ISourceMethod;
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getMethodHandles()[Lorg/eclipse/jdt/internal/core/SourceMethod;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/env/ISourceMethod;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v3, v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    aget-object v5, v0, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/env/ISourceMethod;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v6, v4, 0x1

    :try_start_1
    aput-object v5, v2, v4
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move v4, v6

    :catch_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getModifiers()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->handle:Lorg/eclipse/jdt/core/IType;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getSuperclassName()[C
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->superInterfaceNames:[[C

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->superclassName:[C

    return-object v0
.end method

.method public getTypeParameterBounds()[[[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    array-length v0, v0

    new-array v1, v0, [[[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    aget-object v3, v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;->bounds:[[C

    aput-object v3, v1, v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getTypeParameterNames()[[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    array-length v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object v0

    :cond_0
    new-array v1, v0, [[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isAnonymous()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->handle:Lorg/eclipse/jdt/core/IType;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->isAnonymous()Z

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAnonymousMember()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBinaryType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setHandle(Lorg/eclipse/jdt/core/IType;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->handle:Lorg/eclipse/jdt/core/IType;

    return-void
.end method

.method public setSuperInterfaceNames([[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->superInterfaceNames:[[C

    return-void
.end method

.method public setSuperclassName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->superclassName:[C

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Info for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->handle:Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
