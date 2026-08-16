.class public interface abstract Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;->lambda$evaluate$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$evaluate$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "node",
            "p"
        }
    .end annotation

    invoke-interface {p0, p2, p1}, Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;->getValue(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public evaluate(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;Lcom/github/javaparser/ast/Node;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "csmConditional",
            "node"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/printer/lexicalpreservation/changes/Change$1;->$SwitchMap$com$github$javaparser$printer$concretesyntaxmodel$CsmConditional$Condition:[I

    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getCondition()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;->getValue(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/github/javaparser/utils/Utils;->valueIsNullOrEmptyStringOrOptional(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;->isEvaluatedOnDerivedProperty(Lcom/github/javaparser/ast/observer/ObservableProperty;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getCondition()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;->getValue(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->valueIsNullOrEmpty(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;->getValue(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->valueIsNullOrEmpty(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getProperties()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/changes/a;

    invoke-direct {v0, p0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/a;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public abstract getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;
.end method

.method public abstract getValue(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "property",
            "node"
        }
    .end annotation
.end method

.method public isEvaluatedOnDerivedProperty(Lcom/github/javaparser/ast/observer/ObservableProperty;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/observer/ObservableProperty;->isDerived()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
