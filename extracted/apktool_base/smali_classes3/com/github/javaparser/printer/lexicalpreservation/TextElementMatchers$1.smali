.class final Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatchers$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatchers;->byNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$node:Lcom/github/javaparser/ast/Node;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$node"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatchers$1;->val$node:Lcom/github/javaparser/ast/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textElement"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatchers$1;->val$node:Lcom/github/javaparser/ast/Node;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNode(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "match node "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatchers$1;->val$node:Lcom/github/javaparser/ast/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
