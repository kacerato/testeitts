.class final enum Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition$1;
.super Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;-><init>(Ljava/lang/String;ILcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$1;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "property"
        }
    .end annotation

    invoke-virtual {p2, p1}, Lcom/github/javaparser/ast/observer/ObservableProperty;->getValueAsMultipleReference(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
