.class Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/util/Util$Comparer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes(II)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet$1;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr p1, p2

    return p1
.end method
