.class public interface abstract Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static added(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/Added;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/Added;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v0
.end method

.method public static kept(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/Kept;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v0
.end method

.method public static removed(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v0
.end method


# virtual methods
.method public abstract getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
.end method

.method public abstract isAdded()Z
.end method

.method public isChild()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    return v0
.end method

.method public abstract isKept()Z
.end method

.method public abstract isRemoved()Z
.end method

.method public replaceEolTokens(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineSeparator"
        }
    .end annotation

    return-object p0
.end method
