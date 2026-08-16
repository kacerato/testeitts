.class public Lorg/eclipse/jdt/internal/compiler/ast/JavadocArrayQualifiedTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;
.source "SourceFile"


# instance fields
.field public tagSourceEnd:I

.field public tagSourceStart:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;I)V
    .locals 1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    invoke-direct {p0, v0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;-><init>([[CI[J)V

    return-void
.end method


# virtual methods
.method public reportDeprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result p2

    invoke-virtual {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocDeprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)V

    return-void
.end method

.method public reportInvalidType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocArrayQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    .line 2
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocArrayQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 3
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocArrayQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    .line 4
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocArrayQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
