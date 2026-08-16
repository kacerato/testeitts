.class public Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;
.super Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;
    }
.end annotation


# instance fields
.field annotationBinding:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

.field compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

.field compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

.field compoundName:[[C

.field dimension:I

.field environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field moduleName:[C

.field outerMostParsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

.field parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

.field resolvedUnits:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

.field scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

.field secondarySimpleName:[C

.field typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

.field types:Ljava/util/ArrayList;

.field wildcardRank:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/Compiler;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->types:Ljava/util/ArrayList;

    .line 9
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    .line 10
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 11
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->resolvedUnits:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;Lorg/eclipse/jdt/internal/compiler/Compiler;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;-><init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->types:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    .line 4
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 5
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->outerMostParsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 6
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->resolvedUnits:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    return-void
.end method

.method private getArrayBinding(ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1
.end method

.method private getBaseTypeBinding([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    const/4 v0, 0x0

    aget-char p1, p1, v0

    const/16 v0, 0x46

    if-eq p1, v0, :cond_6

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x53

    if-eq p1, v0, :cond_4

    const/16 v0, 0x56

    if-eq p1, v0, :cond_3

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x49

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4a

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :cond_3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    return-object p1

    :cond_4
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :cond_5
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    return-object p1

    :cond_6
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBinaryBinding()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compoundName:[[C

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method private getType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    move v3, v1

    :goto_0
    aget-char v4, p1, v1

    const/16 v5, 0x5b

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    const/16 v2, 0x2f

    invoke-static {v2, p1, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz v3, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    aget-char p1, p1, v1

    const/16 v0, 0x46

    if-eq p1, v0, :cond_7

    const/16 v0, 0x53

    if-eq p1, v0, :cond_6

    const/16 v0, 0x56

    if-eq p1, v0, :cond_5

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_4

    const/16 v0, 0x49

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4a

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    :pswitch_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_1

    :pswitch_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_1

    :pswitch_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_1

    :cond_3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_1

    :cond_4
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_1

    :cond_5
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    goto :goto_1

    :cond_6
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_1

    :cond_7
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    :cond_8
    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTypeBinding([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMemberType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    :goto_0
    if-nez v0, :cond_3

    return-object v1

    :cond_3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_4

    return-object v1

    :cond_4
    aget-object v4, v0, v3

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {p1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_5

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p1, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    return-object p1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getTypeBindingArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->types:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->types:Ljava/util/ArrayList;

    return-object v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->types:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->types:Ljava/util/ArrayList;

    const/4 v0, 0x0

    return-object v0

    :cond_1
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compoundName()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compoundName:[[C

    return-object v0
.end method

.method public consumeAnnotation()V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->types:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->types:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    if-eqz v2, :cond_5

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_3

    goto :goto_2

    :cond_3
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    if-ne v5, v0, :cond_4

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->annotationBinding:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    :goto_2
    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public consumeAnyCapture(II)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->outerMostParsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->types:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->types:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;

    invoke-direct {v2, p0, p2, v1, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;-><init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;ILorg/eclipse/jdt/internal/compiler/lookup/Binding;I)V

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    iget-object p1, v2, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->capture:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public consumeArrayDimension([C)V
    .locals 0

    array-length p1, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->dimension:I

    return-void
.end method

.method public consumeBaseType([C)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    filled-new-array {v0}, [[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compoundName:[[C

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getBaseTypeBinding([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_0
    return-void
.end method

.method public consumeCapture(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->consumeAnyCapture(II)V

    return-void
.end method

.method public consumeCapture18ID(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->consumeAnyCapture(II)V

    return-void
.end method

.method public consumeException()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->types:Ljava/util/ArrayList;

    return-void
.end method

.method public consumeField([C)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->availableFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return-void

    :cond_1
    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {p1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public consumeFullyQualifiedName([C)V
    .locals 1

    const/16 v0, 0x2f

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compoundName:[[C

    return-void
.end method

.method public consumeKey()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->dimension:I

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getArrayBinding(ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    :cond_0
    return-void
.end method

.method public consumeLocalType([C)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypeCount:I

    if-lt v2, v3, :cond_1

    return-void

    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->computeUniqueKey(Z)[C

    move-result-object v3

    invoke-static {p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object p1, v0, v2

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public consumeLocalVar([CII)V
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNames:[[C

    array-length v3, v0

    const/4 v4, -0x1

    if-nez v3, :cond_2

    :goto_0
    move v10, p3

    goto :goto_2

    :cond_2
    move p3, v2

    :goto_1
    array-length v3, v0

    if-lt p3, v3, :cond_3

    move v10, v4

    goto :goto_2

    :cond_3
    aget-object v3, v0, p3

    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :goto_2
    if-eq v10, v4, :cond_5

    new-instance p2, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p3, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v8, p3, v10

    move-object v5, p2

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;-><init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-void

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz p3, :cond_9

    :goto_4
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    if-lt v2, v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object p3, p3, v2

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v0, p2, -0x1

    if-nez p2, :cond_7

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return-void

    :cond_7
    move p2, v0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    return-void
.end method

.method public consumeMemberType([C)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getTypeBinding([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public consumeMethod([C[C)V
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->availableMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_1

    return-void

    :cond_1
    aget-object v4, v0, v3

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {p1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-nez v5, :cond_2

    array-length v5, p1

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_2
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->genericSignature()[C

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature()[C

    move-result-object v5

    :cond_3
    invoke-static {p2, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    iput-object v6, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return-void

    :cond_4
    iget-wide v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v9, 0x10000000000000L

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_6

    iput-object v6, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p2}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v5

    array-length v6, v5

    new-array v7, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_1
    if-lt v2, v6, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v4, v7, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createPolymorphicMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {p2}, Lorg/eclipse/jdt/core/Signature;->getReturnType([C)[C

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->updatePolymorphicMethodReturnType(Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return-void

    :cond_5
    aget-object p1, v5, v2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    aput-object p1, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public consumeModule([C)V
    .locals 1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->moduleName:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return-void
.end method

.method public consumePackage([C)V
    .locals 4

    const/16 v0, 0x2f

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compoundName:[[C

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compoundName:[[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return-void
.end method

.method public consumeParameterizedGenericMethod()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getTypeBindingArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return-void

    :cond_1
    array-length v2, v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v3

    array-length v3, v3

    if-eq v2, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return-void
.end method

.method public consumeParameterizedType([CZ)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getTypeBindingArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-void

    :cond_1
    if-eqz p1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMemberType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMemberType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_0
    if-nez p2, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2, v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_1
    return-void
.end method

.method public consumeParser(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->types:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public consumeRawType()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public consumeScope(I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopeCount:I

    if-lt p1, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->subscopes:[Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    aget-object p1, v0, p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    return-void
.end method

.method public consumeSecondaryType([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->secondarySimpleName:[C

    return-void
.end method

.method public consumeTopLevelType()V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getCompilationUnitDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->resolvedUnits:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->containsKey([C)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/Compiler;->process(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->resolvedUnits:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v1, v0, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getBinaryBinding()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->secondarySimpleName:[C

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compoundName:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :cond_2
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getTypeBinding([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    return-void
.end method

.method public consumeTypeVariable([C[C)V
    .locals 4

    array-length v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->availableMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p1

    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_3

    return-void

    :cond_3
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v3

    invoke-static {p2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public consumeTypeWithCapture()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->types:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public consumeWildCard(I)V
    .locals 8

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->types:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->wildcardRank:I

    move-object v5, v0

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v6, 0x0

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->wildcardRank:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    return-void
.end method

.method public consumeWildcardRank(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->wildcardRank:I

    return-void
.end method

.method public getAnnotationBinding()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->annotationBinding:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object v0
.end method

.method public getCompilationUnitDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compoundName:[[C

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-nez v3, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->secondarySimpleName:[C

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    array-length v1, v0

    new-array v3, v1, [[C

    add-int/lit8 v1, v1, -0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->secondarySimpleName:[C

    aput-object v0, v3, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    instance-of v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-nez v0, :cond_3

    return-object v2

    :cond_3
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-nez v0, :cond_4

    return-object v2

    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-object v0
.end method

.method public getCompilerBinding()Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compilerBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create binding from binding key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public malformedKey()V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compoundName:[[C

    return-void
.end method

.method public moduleName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->moduleName:[C

    return-object v0
.end method

.method public newParser()Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->outerMostParsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    :cond_0
    move-object v4, v0

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->resolvedUnits:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;-><init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;Lorg/eclipse/jdt/internal/compiler/Compiler;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
