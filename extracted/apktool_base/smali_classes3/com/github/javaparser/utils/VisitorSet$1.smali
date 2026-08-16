.class Lcom/github/javaparser/utils/VisitorSet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/utils/VisitorSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final itr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/github/javaparser/utils/VisitorSet<",
            "TN;>.EqualsHashcodeOverridingFacade;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/github/javaparser/utils/VisitorSet;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/utils/VisitorSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/utils/VisitorSet$1;->this$0:Lcom/github/javaparser/utils/VisitorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/github/javaparser/utils/VisitorSet;->access$000(Lcom/github/javaparser/utils/VisitorSet;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/utils/VisitorSet$1;->itr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorSet$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorSet$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;

    invoke-static {v0}, Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;->access$100(Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/utils/VisitorSet$1;->next()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorSet$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
