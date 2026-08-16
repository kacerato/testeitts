.class public Lorg/eclipse/jdt/internal/eval/CodeSnippetTypeDeclaration;
.super Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    return-void
.end method


# virtual methods
.method public generateCode(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 9

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_0

    return-void

    :cond_0
    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetClassFile;->createProblemType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    return-void

    :cond_2
    :try_start_0
    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetClassFile;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/eclipse/jdt/internal/eval/CodeSnippetClassFile;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ClassFile;Z)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addFieldInfos()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p1

    array-length v1, p1

    move v3, v2

    :goto_1
    if-lt v3, v1, :cond_a

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p1, :cond_6

    array-length p1, p1

    move v1, v2

    :goto_2
    if-lt v1, p1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v3, v3, v1

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3, v4, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->setForMethodInfos()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz p1, :cond_8

    array-length p1, p1

    :goto_4
    if-lt v2, p1, :cond_7

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v1, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addSpecialMethods()V

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    if-nez p1, :cond_9

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addAttributes()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->record([CLorg/eclipse/jdt/internal/compiler/ClassFile;)V

    goto :goto_6

    :cond_9
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    :cond_a
    aget-object v4, p1, v3

    iget-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x800

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_b

    invoke-static {v0, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortType; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-nez p1, :cond_c

    return-void

    :cond_c
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetClassFile;->createProblemType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    :goto_6
    return-void
.end method
