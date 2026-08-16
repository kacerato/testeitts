.class public Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$MethodButNoClassDeclarationVisitor;
.super Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$NoClassNoMethodDeclarationVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MethodButNoClassDeclarationVisitor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$MethodButNoClassDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$NoClassNoMethodDeclarationVisitor;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;)V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$MethodButNoClassDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    const/4 p1, 0x1

    return p1
.end method
