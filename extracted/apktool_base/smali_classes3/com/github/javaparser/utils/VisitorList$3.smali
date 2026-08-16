.class Lcom/github/javaparser/utils/VisitorList$3;
.super Lcom/github/javaparser/utils/VisitorList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/utils/VisitorList;->subList(II)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/utils/VisitorList<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/javaparser/utils/VisitorList;

.field final synthetic val$fromIndex:I

.field final synthetic val$toIndex:I


# direct methods
.method public constructor <init>(Lcom/github/javaparser/utils/VisitorList;Lcom/github/javaparser/ast/visitor/GenericVisitor;Lcom/github/javaparser/ast/visitor/GenericVisitor;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "hashcodeVisitor",
            "equalsVisitor",
            "val$toIndex",
            "val$fromIndex"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/utils/VisitorList$3;->this$0:Lcom/github/javaparser/utils/VisitorList;

    iput p4, p0, Lcom/github/javaparser/utils/VisitorList$3;->val$fromIndex:I

    iput p5, p0, Lcom/github/javaparser/utils/VisitorList$3;->val$toIndex:I

    invoke-direct {p0, p2, p3}, Lcom/github/javaparser/utils/VisitorList;-><init>(Lcom/github/javaparser/ast/visitor/GenericVisitor;Lcom/github/javaparser/ast/visitor/GenericVisitor;)V

    iget-object p1, p1, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {p1, p4, p5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "elem"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/github/javaparser/ast/Node;

    invoke-super {p0, p1, p2}, Lcom/github/javaparser/utils/VisitorList;->add(ILcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elem"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-super {p0, p1}, Lcom/github/javaparser/utils/VisitorList;->add(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/github/javaparser/utils/VisitorList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/github/javaparser/utils/VisitorList;->remove(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "elem"
        }
    .end annotation

    check-cast p2, Lcom/github/javaparser/ast/Node;

    invoke-super {p0, p1, p2}, Lcom/github/javaparser/utils/VisitorList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method
