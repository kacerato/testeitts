.class public Lcom/github/javaparser/ast/Modifier;
.super Lcom/github/javaparser/ast/Node;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/ast/Modifier$Keyword;
    }
.end annotation


# instance fields
.field private keyword:Lcom/github/javaparser/ast/Modifier$Keyword;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {p0, v0}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/Modifier$Keyword;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "keyword"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/Node;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/Modifier;->setKeyword(Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/Modifier;

    .line 5
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V
    .locals 1
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyword"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-void
.end method

.method public static abstractModifier()Lcom/github/javaparser/ast/Modifier;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static varargs createModifierList([Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/github/javaparser/ast/Modifier$Keyword;",
            ")",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/github/javaparser/ast/x;

    invoke-direct {v0}, Lcom/github/javaparser/ast/x;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Lcom/github/javaparser/ast/NodeList;->toNodeList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/NodeList;

    return-object p0
.end method

.method public static finalModifier()Lcom/github/javaparser/ast/Modifier;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static nativeModifier()Lcom/github/javaparser/ast/Modifier;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static nonSealedModifier()Lcom/github/javaparser/ast/Modifier;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->NON_SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static privateModifier()Lcom/github/javaparser/ast/Modifier;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static protectedModifier()Lcom/github/javaparser/ast/Modifier;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static publicModifier()Lcom/github/javaparser/ast/Modifier;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static sealedModifier()Lcom/github/javaparser/ast/Modifier;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static staticModifier()Lcom/github/javaparser/ast/Modifier;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->STATIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static strictfpModifier()Lcom/github/javaparser/ast/Modifier;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static synchronizedModifier()Lcom/github/javaparser/ast/Modifier;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static transientModifier()Lcom/github/javaparser/ast/Modifier;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->TRANSIENT:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static transitiveModifier()Lcom/github/javaparser/ast/Modifier;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->TRANSITIVE:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static volatileModifier()Lcom/github/javaparser/ast/Modifier;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->VOLATILE:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Object;)V

    return-void
.end method

.method public clone()Lcom/github/javaparser/ast/Modifier;
    .locals 2

    .line 3
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/Modifier;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Modifier;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Modifier;->clone()Lcom/github/javaparser/ast/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Modifier;->clone()Lcom/github/javaparser/ast/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/Modifier;->keyword:Lcom/github/javaparser/ast/Modifier$Keyword;

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/ModifierMetaModel;
    .locals 1

    .line 2
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->modifierMetaModel:Lcom/github/javaparser/metamodel/ModifierMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Modifier;->getMetaModel()Lcom/github/javaparser/metamodel/ModifierMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public setKeyword(Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/Modifier;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "keyword"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/Modifier;->keyword:Lcom/github/javaparser/ast/Modifier$Keyword;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->KEYWORD:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/github/javaparser/ast/Modifier;->keyword:Lcom/github/javaparser/ast/Modifier$Keyword;

    return-object p0
.end method
