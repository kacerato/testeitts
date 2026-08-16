.class final Lcom/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic$1;
.super Lcom/github/javaparser/ast/observer/AstObserverAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/ast/observer/AstObserverAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public parentChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "previousParent",
            "newParent"
        }
    .end annotation

    invoke-static {}, Lcom/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->access$000()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
