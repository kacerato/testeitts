.class public Lorg/eclipse/jdt/internal/core/jdom/SimpleDOMBuilder;
.super Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptImport(IIII[[CZI)V
    .locals 6

    filled-new-array {p1, p2}, [I

    move-result-object v2

    new-instance p1, Ljava/lang/String;

    const/16 p2, 0x2e

    invoke-static {p5, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    if-eqz p6, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".*"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v3, p1

    new-instance p1, Lorg/eclipse/jdt/internal/core/jdom/DOMImport;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    move-object v0, p1

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/jdom/DOMImport;-><init>([C[ILjava/lang/String;ZI)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    return-void
.end method

.method public acceptPackage(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V
    .locals 4

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object p1

    const/16 v1, 0x2e

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    new-instance v1, Lorg/eclipse/jdt/internal/core/jdom/DOMPackage;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2, v0, v3}, Lorg/eclipse/jdt/internal/core/jdom/DOMPackage;-><init>([C[ILjava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    return-void
.end method

.method public acceptProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 0

    return-void
.end method

.method public createCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->createCompilationUnit([C[C)Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public createCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;
    .locals 3

    .line 2
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->initializeBuild([CZZ)V

    .line 3
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/SimpleDOMBuilder;->getParser(Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->parseCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 4
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->createCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public enterAbstractMethod(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V
    .locals 13

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->declarationStart:I

    const/4 v1, -0x1

    filled-new-array {v0, v1}, [I

    move-result-object v4

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->nameSourceStart:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->nameSourceEnd:I

    filled-new-array {v0, v1}, [I

    move-result-object v6

    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->name:[C

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charToString([C)Ljava/lang/String;

    move-result-object v5

    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->modifiers:I

    iget-boolean v8, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->isConstructor:Z

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->returnType:[C

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charToString([C)Ljava/lang/String;

    move-result-object v9

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterTypes:[[C

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charArrayToStringArray([[C)[Ljava/lang/String;

    move-result-object v10

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterNames:[[C

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charArrayToStringArray([[C)[Ljava/lang/String;

    move-result-object v11

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->exceptionTypes:[[C

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charArrayToStringArray([[C)[Ljava/lang/String;

    move-result-object v12

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;-><init>([C[ILjava/lang/String;[IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enterConstructor(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->nameSourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->nameSourceEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->nameSourceStart:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->nameSourceEnd:I

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/SimpleDOMBuilder;->enterAbstractMethod(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V

    return-void
.end method

.method public enterField(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;)V
    .locals 10

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->declarationStart:I

    const/4 v1, -0x1

    filled-new-array {v0, v1}, [I

    move-result-object v4

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->nameSourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->nameSourceEnd:I

    filled-new-array {v1, v2}, [I

    move-result-object v6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    move v9, v3

    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->name:[C

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charToString([C)Ljava/lang/String;

    move-result-object v5

    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->modifiers:I

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->type:[C

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charToString([C)Ljava/lang/String;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;-><init>([C[ILjava/lang/String;[IILjava/lang/String;Z)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enterInitializer(II)V
    .locals 2

    const/4 v0, -0x1

    filled-new-array {p1, v0}, [I

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    invoke-direct {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;-><init>([C[II)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enterMethod(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/SimpleDOMBuilder;->enterAbstractMethod(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V

    return-void
.end method

.method public enterType(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V
    .locals 10

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fBuildingType:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->declarationStart:I

    const/4 v1, -0x1

    filled-new-array {v0, v1}, [I

    move-result-object v4

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->nameSourceStart:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->nameSourceEnd:I

    filled-new-array {v0, v1}, [I

    move-result-object v6

    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    new-instance v5, Ljava/lang/String;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->name:[C

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->modifiers:I

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superinterfaces:[[C

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charArrayToStringArray([[C)[Ljava/lang/String;

    move-result-object v8

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->modifiers:I

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v9, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move v9, p1

    :goto_0
    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;-><init>([C[ILjava/lang/String;[II[Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public exitConstructor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/SimpleDOMBuilder;->exitMember(I)V

    return-void
.end method

.method public exitField(III)V
    .locals 0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/jdom/SimpleDOMBuilder;->exitMember(I)V

    return-void
.end method

.method public exitInitializer(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/SimpleDOMBuilder;->exitMember(I)V

    return-void
.end method

.method public exitMember(I)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setSourceRangeEnd(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    return-void
.end method

.method public exitMethod(ILorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/SimpleDOMBuilder;->exitMember(I)V

    return-void
.end method

.method public exitType(I)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->exitType(II)V

    return-void
.end method

.method public getParser(Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/SourceElementParser;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/SourceElementParser;"
        }
    .end annotation

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v3, p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;-><init>(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;ZZ)V

    return-object v6
.end method
