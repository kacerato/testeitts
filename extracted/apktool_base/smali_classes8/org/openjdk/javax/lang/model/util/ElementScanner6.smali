.class public Lorg/openjdk/javax/lang/model/util/ElementScanner6;
.super Lorg/openjdk/javax/lang/model/util/AbstractElementVisitor6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/openjdk/javax/lang/model/util/AbstractElementVisitor6<",
        "TR;TP;>;"
    }
.end annotation

.annotation runtime Lorg/openjdk/javax/annotation/processing/SupportedSourceVersion;
    value = .enum Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_6:Lorg/openjdk/javax/lang/model/SourceVersion;
.end annotation


# instance fields
.field protected final DEFAULT_VALUE:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/openjdk/javax/lang/model/util/AbstractElementVisitor6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->DEFAULT_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/openjdk/javax/lang/model/util/AbstractElementVisitor6;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->DEFAULT_VALUE:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;TP;)TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->DEFAULT_VALUE:Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/Element;

    .line 3
    invoke-virtual {p0, v0, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->scan(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final scan(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ")TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->scan(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scan(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            "TP;)TR;"
        }
    .end annotation

    .line 4
    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/element/Element;->accept(Lorg/openjdk/javax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/ExecutableElement;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPackage(Lorg/openjdk/javax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/PackageElement;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/PackageElement;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameter(Lorg/openjdk/javax/lang/model/element/TypeParameterElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/TypeParameterElement;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/VariableElement;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/AbstractElementVisitor6;->visitUnknown(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
