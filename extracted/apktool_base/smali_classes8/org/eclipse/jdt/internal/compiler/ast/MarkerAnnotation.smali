.class public Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;
.super Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method


# virtual methods
.method public memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->NoValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    return-object v0
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 4
    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 1

    .line 5
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 8
    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
