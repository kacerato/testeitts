.class final Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$2;
.super Lcom/github/javaparser/ast/visitor/TreeVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->lambda$storeInitialText$3(Lcom/github/javaparser/ast/Node;Ljava/util/Map;Lcom/github/javaparser/TokenRange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$tokensByNode:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$tokensByNode"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$2;->val$tokensByNode:Ljava/util/Map;

    invoke-direct {p0}, Lcom/github/javaparser/ast/visitor/TreeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->isPhantom()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$2;->val$tokensByNode:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$300(Lcom/github/javaparser/ast/Node;Ljava/util/List;)V

    :cond_0
    return-void
.end method
