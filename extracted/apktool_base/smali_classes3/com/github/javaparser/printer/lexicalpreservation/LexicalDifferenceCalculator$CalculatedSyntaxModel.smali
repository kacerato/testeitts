.class Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalculatedSyntaxModel"
.end annotation


# instance fields
.field final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->lambda$removeIndentationElements$0(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$removeIndentationElements$0(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "el"
        }
    .end annotation

    instance-of v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public from(I)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, p1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public removeIndentationElements()V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/s;

    invoke-direct {v1}, Lcom/github/javaparser/printer/lexicalpreservation/s;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public sub(II)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CalculatedSyntaxModel{elements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
