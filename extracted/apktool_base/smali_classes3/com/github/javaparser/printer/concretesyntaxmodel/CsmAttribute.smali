.class public Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;
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

    iput-object p1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    return-void
.end method


# virtual methods
.method public getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    return-object v0
.end method

.method public getTokenType(Lcom/github/javaparser/ast/Node;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "text",
            "tokenText"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute$1;->$SwitchMap$com$github$javaparser$ast$observer$ObservableProperty:[I

    iget-object v1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Attribute \'%s\' does not corresponding to any expected value. Text: %s"

    const/4 v2, 0x0

    const/16 v3, 0x62

    const-string v4, "\""

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTokenType does not know how to handle property "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with text: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    instance-of p1, p1, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;

    if-eqz p1, :cond_0

    const/16 p1, 0x51

    return p1

    :cond_0
    :pswitch_1
    return v3

    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget-object p2, Lcom/github/javaparser/GeneratedJavaParserConstants;->tokenImage:[Ljava/lang/String;

    array-length v0, p2

    if-ge v2, v0, :cond_2

    aget-object p2, p2, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object p2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p2}, Lcom/github/javaparser/ast/observer/ObservableProperty;->camelCaseName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    sget-object p3, Lcom/github/javaparser/GeneratedJavaParserConstants;->tokenImage:[Ljava/lang/String;

    array-length v0, p3

    if-ge v2, v0, :cond_4

    aget-object p3, p3, v2

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object p3, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p3}, Lcom/github/javaparser/ast/observer/ObservableProperty;->camelCaseName()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/observer/ObservableProperty;->getRawValue(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/PrintingHelper;->printToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s(property:%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
