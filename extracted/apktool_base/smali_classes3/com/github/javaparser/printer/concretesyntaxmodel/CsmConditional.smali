.class public Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
    }
.end annotation


# instance fields
.field private final condition:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

.field private final elseElement:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

.field private final properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/observer/ObservableProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final thenElement:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "condition",
            "thenElement"
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "condition",
            "thenElement",
            "elseElement"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    filled-new-array {p1}, [Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->properties:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->condition:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    .line 4
    iput-object p3, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->thenElement:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 5
    iput-object p4, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->elseElement:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "properties",
            "condition",
            "thenElement",
            "elseElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/observer/ObservableProperty;",
            ">;",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 8
    iput-object p1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->properties:Ljava/util/List;

    .line 9
    iput-object p2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->condition:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    .line 10
    iput-object p3, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->thenElement:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 11
    iput-object p4, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->elseElement:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getCondition()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->condition:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    return-object v0
.end method

.method public getElseElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->elseElement:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/observer/ObservableProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->properties:Ljava/util/List;

    return-object v0
.end method

.method public getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->properties:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/observer/ObservableProperty;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getThenElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->thenElement:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0
.end method

.method public prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V
    .locals 4
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

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/observer/ObservableProperty;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->condition:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    invoke-virtual {v2, p1, v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->evaluate(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->thenElement:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-interface {v0, p1, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->elseElement:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-interface {v0, p1, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    :goto_1
    return-void
.end method
