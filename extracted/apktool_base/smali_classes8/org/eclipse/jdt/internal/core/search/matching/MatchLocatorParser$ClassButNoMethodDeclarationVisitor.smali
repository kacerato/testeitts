.class public Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$ClassButNoMethodDeclarationVisitor;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClassButNoMethodDeclarationVisitor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$ClassButNoMethodDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 1

    .line 10
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$ClassButNoMethodDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$ClassButNoMethodDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    .line 2
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Z
    .locals 1

    .line 3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$ClassButNoMethodDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    .line 4
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Z
    .locals 1

    .line 5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$ClassButNoMethodDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    .line 6
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 1

    .line 8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$ClassButNoMethodDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    .line 9
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 1

    .line 7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$ClassButNoMethodDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    const/4 p1, 0x1

    return p1
.end method
