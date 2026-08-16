.class public LK6/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK6/k;->c(Ljava/lang/String;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/github/javaparser/ast/body/MethodDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:LK6/k;


# direct methods
.method public constructor <init>(LK6/k;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LK6/k$a;->c:LK6/k;

    iput-object p2, p0, LK6/k$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/github/javaparser/ast/body/MethodDeclaration;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodDeclaration"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_1

    invoke-virtual {v1, v3}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/ast/body/Parameter;

    if-lez v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") -> "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, LK6/f;

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v8, v3, p1}, LK6/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v8, LK6/f;->b:Ljava/lang/String;

    const-string p1, "method"

    iput-object p1, v8, LK6/f;->f:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v8, LK6/f;->d:Ljava/lang/String;

    const-string p1, "local"

    iput-object p1, v8, LK6/f;->e:Ljava/lang/String;

    iput-boolean v6, v8, LK6/f;->k:Z

    iput-boolean v4, v8, LK6/f;->l:Z

    iget-object p1, v8, LK6/f;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, LK6/k$a;->b:Ljava/util/List;

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "methodDeclaration"
        }
    .end annotation

    check-cast p1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-virtual {p0, p1}, LK6/k$a;->a(Lcom/github/javaparser/ast/body/MethodDeclaration;)V

    return-void
.end method
