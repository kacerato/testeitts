.class public Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;
.source "SourceFile"


# instance fields
.field public tagSourceEnd:I

.field public tagSourceStart:I


# direct methods
.method public constructor <init>([CJII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;->tagSourceStart:I

    iput p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;->tagSourceEnd:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const p2, 0x8000

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void
.end method


# virtual methods
.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportUnusedParameterIncludeDocCommentReference:Z

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZZ)V

    return-void
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZZ)V
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->findVariable([C)Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v3, 0x400

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 4
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 5
    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    :try_start_0
    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object p2

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    invoke-virtual {p3, v0, v1, v2, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUndeclaredParamTagName([CIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUndeclaredParamTagName([CIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    .line 2
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 3
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    .line 4
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
