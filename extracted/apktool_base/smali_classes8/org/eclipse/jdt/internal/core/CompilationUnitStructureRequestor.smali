.class public Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;
.super Lorg/eclipse/jdt/internal/core/util/ReferenceInfoAdapter;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;


# instance fields
.field protected children:Ljava/util/HashMap;

.field protected fieldRefCache:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

.field protected handleStack:Ljava/util/Stack;

.field protected hasSyntaxErrors:Z

.field protected importContainer:Lorg/eclipse/jdt/internal/core/ImportContainer;

.field protected importContainerInfo:Lorg/eclipse/jdt/internal/core/ImportContainerInfo;

.field protected infoStack:Ljava/util/Stack;

.field private localOccurrenceCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected messageRefCache:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

.field protected newElements:Ljava/util/Map;

.field private occurenceCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

.field protected referenceCount:I

.field protected typeRefCache:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

.field protected unit:Lorg/eclipse/jdt/core/ICompilationUnit;

.field protected unitInfo:Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

.field protected unknownRefCache:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ReferenceInfoAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->importContainerInfo:Lorg/eclipse/jdt/internal/core/ImportContainerInfo;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->referenceCount:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->hasSyntaxErrors:Z

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->unit:Lorg/eclipse/jdt/core/ICompilationUnit;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->unitInfo:Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->occurenceCounts:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->localOccurrenceCounts:Ljava/util/HashMap;

    return-void
.end method

.method private acceptMethodParameters([Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)[Lorg/eclipse/jdt/internal/core/LocalVariable;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    array-length v2, v1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/core/LocalVariable;

    array-length v3, v1

    new-array v3, v3, [[Lorg/eclipse/jdt/internal/core/Annotation;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v1

    if-lt v5, v6, :cond_1

    return-object v2

    :cond_1
    aget-object v6, v1, v5

    new-instance v7, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;

    invoke-direct {v7}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;-><init>()V

    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeStart(I)V

    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeEnd(I)V

    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceStart(I)V

    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceEnd(I)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v8

    move-object/from16 v9, p3

    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterTypes:[[C

    aget-object v10, v10, v5

    invoke-static {v10, v4}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v8, Lorg/eclipse/jdt/internal/core/LocalVariable;

    new-instance v13, Ljava/lang/String;

    iget-object v10, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {v13, v10}, Ljava/lang/String;-><init>([C)V

    iget v14, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v15, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iget v10, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v12, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v11, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v4, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    const/16 v21, 0x1

    move-object/from16 v19, v11

    move-object v11, v8

    move/from16 v17, v12

    move-object/from16 v12, p2

    move/from16 v16, v10

    move/from16 v20, v4

    invoke-direct/range {v11 .. v21}, Lorg/eclipse/jdt/internal/core/LocalVariable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIIILjava/lang/String;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;IZ)V

    aput-object v8, v2, v5

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v4, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    aget-object v8, v2, v5

    invoke-virtual {v4, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v4, :cond_3

    array-length v4, v4

    new-array v4, v4, [Lorg/eclipse/jdt/internal/core/Annotation;

    aput-object v4, v3, v5

    const/4 v4, 0x0

    :goto_1
    iget-object v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    array-length v10, v8

    if-lt v4, v10, :cond_2

    goto :goto_2

    :cond_2
    aget-object v8, v8, v4

    aget-object v10, v2, v5

    invoke-virtual {v0, v8, v7, v10}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->acceptAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/AnnotatableInfo;Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/core/IAnnotation;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private addToChildren(Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/JavaElement;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->children:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->children:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static convertTypeNamesToSigs([[C)[Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object p0

    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v0, :cond_2

    return-object v2

    :cond_2
    aget-object v5, p0, v4

    invoke-static {v5, v3}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private createMethodInfo(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;Lorg/eclipse/jdt/internal/core/SourceMethod;)Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;
    .locals 8

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->getChildren(Ljava/lang/Object;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    iget-boolean v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->isConstructor:Z

    if-eqz v1, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/SourceConstructorInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/SourceConstructorInfo;-><init>()V

    goto :goto_1

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/core/SourceConstructorWithChildrenInfo;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/core/SourceConstructorWithChildrenInfo;-><init>([Lorg/eclipse/jdt/core/IJavaElement;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-boolean v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->isAnnotation:Z

    if-eqz v1, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;-><init>()V

    goto :goto_1

    :cond_2
    array-length v1, v0

    if-nez v1, :cond_3

    new-instance v0, Lorg/eclipse/jdt/internal/core/SourceMethodInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/SourceMethodInfo;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/eclipse/jdt/internal/core/SourceMethodWithChildrenInfo;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/core/SourceMethodWithChildrenInfo;-><init>([Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :goto_1
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->declarationStart:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeStart(I)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->modifiers:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->nameSourceStart:I

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceStart(I)V

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->nameSourceEnd:I

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceEnd(I)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->setFlags(I)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterNames:[[C

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-lt v5, v3, :cond_c

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->setArgumentNames([[C)V

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->returnType:[C

    if-nez v2, :cond_4

    const/4 v2, 0x4

    new-array v2, v2, [C

    const/16 v3, 0x76

    aput-char v3, v2, v4

    const/16 v3, 0x6f

    const/4 v5, 0x1

    aput-char v3, v2, v5

    const/4 v3, 0x2

    const/16 v5, 0x69

    aput-char v5, v2, v3

    const/4 v3, 0x3

    const/16 v5, 0x64

    aput-char v5, v2, v3

    :cond_4
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern([C)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->setReturnType([C)V

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->exceptionTypes:[[C

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->setExceptionTypeNames([[C)V

    array-length v7, v6

    move v2, v4

    :goto_3
    if-lt v2, v7, :cond_b

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    if-eqz v1, :cond_6

    array-length v1, v1

    move v2, v4

    :goto_4
    if-lt v2, v1, :cond_5

    goto :goto_5

    :cond_5
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->acceptTypeParameter(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;Lorg/eclipse/jdt/internal/core/JavaElementInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_8

    array-length v1, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->unitInfo:Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    iget v3, v2, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->annotationNumber:I

    add-int/2addr v3, v1

    iput v3, v2, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->annotationNumber:I

    :goto_6
    if-lt v4, v1, :cond_7

    goto :goto_7

    :cond_7
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v2, v2, v4

    invoke-virtual {p0, v2, v0, p2}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->acceptAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/AnnotatableInfo;Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/core/IAnnotation;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->node:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v1, :cond_9

    invoke-direct {p0, v1, p2, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->acceptMethodParameters([Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)[Lorg/eclipse/jdt/internal/core/LocalVariable;

    move-result-object p2

    iput-object p2, v0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->arguments:[Lorg/eclipse/jdt/core/ILocalVariable;

    :cond_9
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->typeAnnotated:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->unitInfo:Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    sget p2, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->ANNOTATION_THRESHOLD_FOR_DIET_PARSE:I

    iput p2, p1, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->annotationNumber:I

    :cond_a
    return-object v0

    :cond_b
    aget-object v3, v6, v2

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern([C)[C

    move-result-object v3

    aput-object v3, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    aget-object v6, v2, v5

    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern([C)[C

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2
.end method

.method private createModuleInfo(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;Lorg/eclipse/jdt/internal/core/SourceModule;)Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;
    .locals 4

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->node:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->createModule(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->setHandle(Lorg/eclipse/jdt/core/IModuleDescription;)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->declarationStart:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeStart(I)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->modifiers:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->setFlags(I)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->nameSourceStart:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceStart(I)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->nameSourceEnd:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceEnd(I)V

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->categories:[[C

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->addCategories(Lorg/eclipse/jdt/core/IJavaElement;[[C)V

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_1

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3, v0, p2}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->acceptAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/AnnotatableInfo;Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/core/IAnnotation;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private createTypeInfo(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;Lorg/eclipse/jdt/internal/core/SourceType;)Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;
    .locals 7

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->anonymousMember:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor$1;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;-><init>()V

    :goto_0
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->setHandle(Lorg/eclipse/jdt/core/IType;)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->declarationStart:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeStart(I)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->modifiers:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->setFlags(I)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->nameSourceStart:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceStart(I)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->nameSourceEnd:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceEnd(I)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superclass:[C

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern([C)[C

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->setSuperclassName([C)V

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superinterfaces:[[C

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    array-length v4, v2

    :goto_2
    move v5, v3

    :goto_3
    if-lt v5, v4, :cond_a

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->setSuperInterfaceNames([[C)V

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->categories:[[C

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->addCategories(Lorg/eclipse/jdt/core/IJavaElement;[[C)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    if-eqz v1, :cond_4

    array-length v1, v1

    move v2, v3

    :goto_4
    if-lt v2, v1, :cond_3

    goto :goto_5

    :cond_3
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->acceptTypeParameter(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;Lorg/eclipse/jdt/internal/core/JavaElementInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_6

    array-length v1, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->unitInfo:Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    iget v4, v2, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->annotationNumber:I

    add-int/2addr v4, v1

    iput v4, v2, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->annotationNumber:I

    :goto_6
    if-lt v3, v1, :cond_5

    goto :goto_7

    :cond_5
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v2, v2, v3

    invoke-virtual {p0, v2, v0, p2}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->acceptAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/AnnotatableInfo;Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/core/IAnnotation;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    :goto_7
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->childrenCategories:Ljava/util/HashMap;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_9

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[C

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->addCategories(Lorg/eclipse/jdt/core/IJavaElement;[[C)V

    goto :goto_8

    :cond_8
    :goto_9
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->typeAnnotated:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->unitInfo:Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    sget p2, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->ANNOTATION_THRESHOLD_FOR_DIET_PARSE:I

    iput p2, p1, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->annotationNumber:I

    :cond_9
    return-object v0

    :cond_a
    aget-object v6, v2, v5

    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern([C)[C

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method private getChildren(Ljava/lang/Object;)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->children:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/core/IJavaElement;

    return-object p1

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p1
.end method


# virtual methods
.method public acceptAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/AnnotatableInfo;Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/core/IAnnotation;
    .locals 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, p3, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->createAnnotation(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/Annotation;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->resolveDuplicates(Lorg/eclipse/jdt/internal/core/SourceRefElement;)V

    new-instance v0, Lorg/eclipse/jdt/internal/core/AnnotationInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/AnnotationInfo;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeStart(I)V

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart()I

    move-result v1

    iput v1, v0, Lorg/eclipse/jdt/internal/core/AnnotationInfo;->nameStart:I

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd()I

    move-result v1

    iput v1, v0, Lorg/eclipse/jdt/internal/core/AnnotationInfo;->nameEnd:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/core/Annotation;->NO_MEMBER_VALUE_PAIRS:[Lorg/eclipse/jdt/core/IMemberValuePair;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/AnnotationInfo;->members:[Lorg/eclipse/jdt/core/IMemberValuePair;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->getMemberValuePairs([Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)[Lorg/eclipse/jdt/core/IMemberValuePair;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/AnnotationInfo;->members:[Lorg/eclipse/jdt/core/IMemberValuePair;

    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, p2, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->annotations:[Lorg/eclipse/jdt/core/IAnnotation;

    array-length v2, v1

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lorg/eclipse/jdt/core/IAnnotation;

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p3, v3, v2

    iput-object v3, p2, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->annotations:[Lorg/eclipse/jdt/core/IAnnotation;

    :cond_1
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeEnd(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-object p3
.end method

.method public acceptImport(IIII[[CZI)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/eclipse/core/runtime/Assert;->isTrue(Z)Z

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->importContainer:Lorg/eclipse/jdt/internal/core/ImportContainer;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->createImportContainer(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/internal/core/ImportContainer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->importContainer:Lorg/eclipse/jdt/internal/core/ImportContainer;

    new-instance v0, Lorg/eclipse/jdt/internal/core/ImportContainerInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/ImportContainerInfo;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->importContainerInfo:Lorg/eclipse/jdt/internal/core/ImportContainerInfo;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->importContainer:Lorg/eclipse/jdt/internal/core/ImportContainer;

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->addToChildren(Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/JavaElement;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->importContainer:Lorg/eclipse/jdt/internal/core/ImportContainer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->importContainerInfo:Lorg/eclipse/jdt/internal/core/ImportContainerInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-static {p5, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p5

    invoke-direct {v1, p5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->importContainer:Lorg/eclipse/jdt/internal/core/ImportContainer;

    invoke-virtual {p0, v0, p5, p6}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->createImportDeclaration(Lorg/eclipse/jdt/internal/core/ImportContainer;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/core/ImportDeclaration;

    move-result-object p5

    invoke-virtual {p0, p5}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->resolveDuplicates(Lorg/eclipse/jdt/internal/core/SourceRefElement;)V

    new-instance p6, Lorg/eclipse/jdt/internal/core/ImportDeclarationElementInfo;

    invoke-direct {p6}, Lorg/eclipse/jdt/internal/core/ImportDeclarationElementInfo;-><init>()V

    invoke-virtual {p6, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeStart(I)V

    invoke-virtual {p6, p2}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeEnd(I)V

    invoke-virtual {p6, p3}, Lorg/eclipse/jdt/internal/core/ImportDeclarationElementInfo;->setNameSourceStart(I)V

    invoke-virtual {p6, p4}, Lorg/eclipse/jdt/internal/core/ImportDeclarationElementInfo;->setNameSourceEnd(I)V

    invoke-virtual {p6, p7}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->setFlags(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->importContainerInfo:Lorg/eclipse/jdt/internal/core/ImportContainerInfo;

    invoke-direct {p0, p1, p5}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->addToChildren(Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/JavaElement;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-interface {p1, p5, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public acceptLineSeparatorPositions([I)V
    .locals 0

    return-void
.end method

.method public acceptPackage(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object v2

    const/16 v3, 0x2e

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->createPackageDeclaration(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageDeclaration;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lorg/eclipse/core/runtime/Assert;->isTrue(Z)Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->resolveDuplicates(Lorg/eclipse/jdt/internal/core/SourceRefElement;)V

    new-instance v2, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;-><init>()V

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeStart(I)V

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeEnd(I)V

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceStart(I)V

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceEnd(I)V

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->addToChildren(Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/JavaElement;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_2

    array-length v0, v0

    :goto_1
    if-lt v4, v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v4

    invoke-virtual {p0, v3, v2, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->acceptAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/AnnotatableInfo;Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/core/IAnnotation;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public acceptProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->hasSyntaxErrors:Z

    :cond_0
    return-void
.end method

.method public acceptTypeParameter(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;Lorg/eclipse/jdt/internal/core/JavaElementInfo;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->name:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->createTypeParameter(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/TypeParameter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->resolveDuplicates(Lorg/eclipse/jdt/internal/core/SourceRefElement;)V

    new-instance v1, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;-><init>()V

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->declarationStart:I

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeStart(I)V

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->nameSourceStart:I

    iput v2, v1, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;->nameStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->nameSourceEnd:I

    iput v2, v1, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;->nameEnd:I

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->bounds:[[C

    iput-object v2, v1, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;->bounds:[[C

    instance-of v2, p2, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast p2, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    array-length v4, v2

    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [Lorg/eclipse/jdt/core/ITypeParameter;

    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v5, v4

    iput-object v5, p2, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    goto :goto_0

    :cond_0
    check-cast p2, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    array-length v4, v2

    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [Lorg/eclipse/jdt/core/ITypeParameter;

    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v5, v4

    iput-object v5, p2, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->declarationEnd:I

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeEnd(I)V

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->typeAnnotated:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->unitInfo:Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    sget p2, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->ANNOTATION_THRESHOLD_FOR_DIET_PARSE:I

    iput p2, p1, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->annotationNumber:I

    :cond_1
    return-void
.end method

.method public createAnnotation(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/Annotation;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/Annotation;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/Annotation;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object v0
.end method

.method public createField(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;)Lorg/eclipse/jdt/internal/core/SourceField;
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->name:[C

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/eclipse/jdt/internal/core/SourceField;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/SourceField;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object v0
.end method

.method public createImportContainer(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/internal/core/ImportContainer;
    .locals 0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getImportContainer()Lorg/eclipse/jdt/core/IImportContainer;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/ImportContainer;

    return-object p1
.end method

.method public createImportDeclaration(Lorg/eclipse/jdt/internal/core/ImportContainer;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/core/ImportDeclaration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/ImportDeclaration;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/ImportDeclaration;-><init>(Lorg/eclipse/jdt/internal/core/ImportContainer;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public createInitializer(Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/internal/core/Initializer;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/Initializer;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/Initializer;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;I)V

    return-object v0
.end method

.method public createMethodHandle(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)Lorg/eclipse/jdt/internal/core/SourceMethod;
    .locals 3

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->name:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterTypes:[[C

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->convertTypeNamesToSigs([[C)[Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lorg/eclipse/jdt/internal/core/SourceMethod;

    invoke-direct {v1, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/SourceMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method public createModuleHandle(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;)Lorg/eclipse/jdt/internal/core/SourceModule;
    .locals 1

    new-instance v0, Ljava/lang/String;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->moduleName:[C

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    new-instance p2, Lorg/eclipse/jdt/internal/core/SourceModule;

    invoke-direct {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/SourceModule;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object p2
.end method

.method public createPackageDeclaration(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageDeclaration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/PackageDeclaration;

    check-cast p1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/PackageDeclaration;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Ljava/lang/String;)V

    return-object v0
.end method

.method public createTypeHandle(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)Lorg/eclipse/jdt/internal/core/SourceType;
    .locals 1

    new-instance v0, Ljava/lang/String;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->name:[C

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    new-instance p2, Lorg/eclipse/jdt/internal/core/SourceType;

    invoke-direct {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/SourceType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object p2
.end method

.method public createTypeParameter(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/TypeParameter;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/TypeParameter;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/TypeParameter;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object v0
.end method

.method public enterCompilationUnit()V
    .locals 2

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->children:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->unitInfo:Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->unit:Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enterConstructor(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->enterMethod(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V

    return-void
.end method

.method public enterField(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->createField(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;)Lorg/eclipse/jdt/internal/core/SourceField;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/eclipse/core/runtime/Assert;->isTrue(Z)Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->resolveDuplicates(Lorg/eclipse/jdt/internal/core/SourceRefElement;)V

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->addToChildren(Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/JavaElement;)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->childrenCategories:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->categories:[[C

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enterInitializer(II)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->createInitializer(Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/internal/core/Initializer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/eclipse/core/runtime/Assert;->isTrue(Z)Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->resolveDuplicates(Lorg/eclipse/jdt/internal/core/SourceRefElement;)V

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->addToChildren(Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/JavaElement;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enterMethod(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterTypes:[[C

    if-nez v2, :cond_0

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterTypes:[[C

    :cond_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterNames:[[C

    if-nez v2, :cond_1

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterNames:[[C

    :cond_1
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->exceptionTypes:[[C

    if-nez v2, :cond_2

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->exceptionTypes:[[C

    :cond_2
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->createMethodHandle(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)Lorg/eclipse/jdt/internal/core/SourceMethod;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/eclipse/core/runtime/Assert;->isTrue(Z)Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->resolveDuplicates(Lorg/eclipse/jdt/internal/core/SourceRefElement;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->addToChildren(Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/JavaElement;)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->childrenCategories:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->categories:[[C

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enterModule(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->createModuleHandle(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;)Lorg/eclipse/jdt/internal/core/SourceModule;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->addToChildren(Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/JavaElement;)V

    return-void
.end method

.method public enterType(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->createTypeHandle(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)Lorg/eclipse/jdt/internal/core/SourceType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->resolveDuplicates(Lorg/eclipse/jdt/internal/core/SourceRefElement;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->childrenCategories:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->categories:[[C

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->addToChildren(Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/JavaElement;)V

    return-void
.end method

.method public exitCompilationUnit(I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->importContainerInfo:Lorg/eclipse/jdt/internal/core/ImportContainerInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->getChildren(Ljava/lang/Object;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ImportContainerInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->unitInfo:Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->getChildren(Ljava/lang/Object;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->unitInfo:Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->setSourceLength(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->unitInfo:Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->hasSyntaxErrors:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setIsStructureKnown(Z)V

    return-void
.end method

.method public exitConstructor(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->exitMethod(ILorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-void
.end method

.method public exitField(III)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->getChildren(Ljava/lang/Object;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_0

    new-instance v2, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/eclipse/jdt/internal/core/SourceFieldWithChildrenInfo;

    invoke-direct {v3, v2}, Lorg/eclipse/jdt/internal/core/SourceFieldWithChildrenInfo;-><init>([Lorg/eclipse/jdt/core/IJavaElement;)V

    move-object v2, v3

    :goto_0
    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->nameSourceStart:I

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceStart(I)V

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->nameSourceEnd:I

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceEnd(I)V

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->declarationStart:I

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeStart(I)V

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->modifiers:I

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->setFlags(I)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v3

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->type:[C

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern([C)[C

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->setTypeName([C)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    array-length v3, v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->unitInfo:Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    iget v6, v5, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->annotationNumber:I

    add-int/2addr v6, v3

    iput v6, v5, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->annotationNumber:I

    move v5, v4

    :goto_1
    if-lt v5, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v6, v6, v5

    invoke-virtual {p0, v6, v2, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->acceptAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/AnnotatableInfo;Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/core/IAnnotation;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v2, p3}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeEnd(I)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    const/4 p3, -0x1

    if-eq p1, p3, :cond_4

    iget p3, v2, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->flags:I

    invoke-static {p3}, Lorg/eclipse/jdt/core/Flags;->isFinal(I)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {p3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p3

    instance-of v0, p3, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;

    if-eqz v0, :cond_4

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->modifiers:I

    invoke-static {p3}, Lorg/eclipse/jdt/core/Flags;->isInterface(I)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_3
    sub-int/2addr p2, p1

    if-lez p2, :cond_4

    new-array p3, p2, [C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    invoke-static {v0, p1, p3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p3, v2, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->initializationSource:[C

    :cond_4
    iget-boolean p1, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->typeAnnotated:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->unitInfo:Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    sget p2, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->ANNOTATION_THRESHOLD_FOR_DIET_PARSE:I

    iput p2, p1, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->annotationNumber:I

    :cond_5
    return-void
.end method

.method public exitInitializer(I)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->getChildren(Ljava/lang/Object;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_0

    new-instance v2, Lorg/eclipse/jdt/internal/core/InitializerElementInfo;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/core/InitializerElementInfo;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/eclipse/jdt/internal/core/InitializerWithChildrenInfo;

    invoke-direct {v3, v2}, Lorg/eclipse/jdt/internal/core/InitializerWithChildrenInfo;-><init>([Lorg/eclipse/jdt/core/IJavaElement;)V

    move-object v2, v3

    :goto_0
    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeStart(I)V

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->setFlags(I)V

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeEnd(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public exitMethod(ILorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceMethod;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->createMethodInfo(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;Lorg/eclipse/jdt/internal/core/SourceMethod;)Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeEnd(I)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->isAnnotationMethod()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, v0, Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;->defaultValueStart:I

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, v0, Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;->defaultValueEnd:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    new-instance v1, Lorg/eclipse/jdt/internal/core/MemberValuePair;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/core/MemberValuePair;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->getMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->value:Ljava/lang/Object;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;->defaultValue:Lorg/eclipse/jdt/core/IMemberValuePair;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public exitModule(I)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/SourceModule;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaProject;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->createModuleInfo(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;Lorg/eclipse/jdt/internal/core/SourceModule;)Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeEnd(I)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->getChildren(Ljava/lang/Object;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    iput-object p1, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->unitInfo:Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setModule(Lorg/eclipse/jdt/core/IModuleDescription;)V

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->setModuleDescription(Lorg/eclipse/jdt/core/IModuleDescription;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public exitType(I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/SourceType;

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->createTypeInfo(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;Lorg/eclipse/jdt/internal/core/SourceType;)Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeEnd(I)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->getChildren(Ljava/lang/Object;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    iput-object p1, v1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->infoStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public getMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/NullLiteral;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/Literal;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Literal;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Literal;->computeConstant()V

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getAnnotationMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->handleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p0, p2, v1, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->acceptAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/AnnotatableInfo;Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object p2

    const/16 v0, 0xa

    iput v0, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    return-object p2

    :cond_2
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;

    const/16 v2, 0x2e

    if-eqz v0, :cond_3

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object p2

    invoke-static {p2, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p2

    const/16 v0, 0xb

    iput v0, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_3
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz v0, :cond_4

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    invoke-static {p2, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p2

    const/16 v0, 0xc

    iput v0, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_4
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    const/16 v2, 0xd

    const/16 v3, 0xe

    if-eqz v0, :cond_6

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->FAKE_IDENTIFIER:[C

    if-ne p2, v0, :cond_5

    iput v3, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    return-object v1

    :cond_5
    iput v2, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_6
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v0, :cond_b

    const/4 v0, -0x1

    iput v0, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iget-object v4, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 p2, 0x0

    if-nez v4, :cond_7

    move v5, p2

    goto :goto_0

    :cond_7
    array-length v1, v4

    move v5, v1

    :goto_0
    new-array v6, v5, [Ljava/lang/Object;

    :goto_1
    if-lt p2, v5, :cond_9

    iget p2, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    if-ne p2, v0, :cond_8

    iput v3, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    :cond_8
    return-object v6

    :cond_9
    iget v1, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    aget-object v2, v4, p2

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->getMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v0, :cond_a

    iget v7, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    if-eq v7, v1, :cond_a

    iput v3, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    :cond_a
    aput-object v2, v6, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_b
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;

    if-eqz v0, :cond_d

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0xfc0

    shr-int/lit8 v0, v0, 0x6

    if-ne v0, v2, :cond_c

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/Literal;

    if-eqz v0, :cond_c

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/Literal;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/Literal;->computeConstant()V

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getNegativeAnnotationMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    iput v3, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    return-object v1

    :cond_d
    iput v3, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    return-object v1
.end method

.method public getMemberValuePair(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)Lorg/eclipse/jdt/core/IMemberValuePair;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    new-instance v1, Lorg/eclipse/jdt/internal/core/MemberValuePair;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/core/MemberValuePair;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->getMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->value:Ljava/lang/Object;

    return-object v1
.end method

.method public getMemberValuePairs([Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)[Lorg/eclipse/jdt/core/IMemberValuePair;
    .locals 4

    array-length v0, p1

    new-array v1, v0, [Lorg/eclipse/jdt/core/IMemberValuePair;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->getMemberValuePair(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)Lorg/eclipse/jdt/core/IMemberValuePair;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public resolveDuplicates(Lorg/eclipse/jdt/internal/core/SourceRefElement;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->occurenceCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->occurenceCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->occurenceCounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    :goto_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/SourceType;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceType;->isAnonymous()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->localOccurrenceCounts:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->localOccurrenceCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->localOccurrenceCounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, v0, Lorg/eclipse/jdt/internal/core/SourceType;->localOccurrenceCount:I

    :cond_2
    :goto_1
    return-void
.end method
