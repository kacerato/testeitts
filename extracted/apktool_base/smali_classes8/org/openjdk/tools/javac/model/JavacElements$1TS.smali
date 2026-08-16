.class Lorg/openjdk/tools/javac/model/JavacElements$1TS;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/model/JavacElements;->scanForAssign(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TS"
.end annotation


# instance fields
.field result:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field final synthetic this$0:Lorg/openjdk/tools/javac/model/JavacElements;

.field final synthetic val$sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

.field final synthetic val$tree:Lorg/openjdk/tools/javac/tree/JCTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/model/JavacElements;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/JavacElements$1TS;->this$0:Lorg/openjdk/tools/javac/model/JavacElements;

    iput-object p2, p0, Lorg/openjdk/tools/javac/model/JavacElements$1TS;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object p3, p0, Lorg/openjdk/tools/javac/model/JavacElements$1TS;->val$sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/JavacElements$1TS;->result:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-void
.end method


# virtual methods
.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements$1TS;->result:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    :cond_0
    return-void
.end method

.method public visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements$1TS;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree;

    if-ne p1, v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    :cond_0
    return-void
.end method

.method public visitAssign(Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacElements$1TS;->val$sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/JavacElements$1TS;->result:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    return-void
.end method
