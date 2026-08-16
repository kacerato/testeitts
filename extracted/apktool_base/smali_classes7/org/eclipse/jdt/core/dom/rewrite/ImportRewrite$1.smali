.class Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$1;
.super Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;-><init>(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/dom/CompilationUnit;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$1;->this$0:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;-><init>()V

    return-void
.end method


# virtual methods
.method public findInContext(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$1;->this$0:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->findInImports(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method
