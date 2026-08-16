.class Lorg/eclipse/jdt/core/dom/InternalASTRewrite$1;
.super Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->rewriteAST(Lorg/eclipse/jface/text/IDocument;Ljava/util/Map;)Lorg/eclipse/text/edits/TextEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/core/dom/InternalASTRewrite;

.field private final synthetic val$rootNode:Lorg/eclipse/jdt/core/dom/CompilationUnit;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/InternalASTRewrite;Lorg/eclipse/jdt/core/dom/CompilationUnit;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite$1;->this$0:Lorg/eclipse/jdt/core/dom/InternalASTRewrite;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite$1;->val$rootNode:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSourceRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite$1;->val$rootNode:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getExtendedStartPosition(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite$1;->val$rootNode:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getExtendedLength(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    new-instance v1, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    invoke-direct {v1, v0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;-><init>(II)V

    return-object v1
.end method
