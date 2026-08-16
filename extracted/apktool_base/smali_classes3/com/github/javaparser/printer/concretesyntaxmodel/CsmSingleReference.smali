.class public Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# instance fields
.field private final property:Lcom/github/javaparser/ast/observer/ObservableProperty;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/observer/ObservableProperty;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    return-void
.end method


# virtual methods
.method public getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    return-object v0
.end method

.method public prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/observer/ObservableProperty;->getValueAsSingleReference(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->genericPrettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s(property:%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
