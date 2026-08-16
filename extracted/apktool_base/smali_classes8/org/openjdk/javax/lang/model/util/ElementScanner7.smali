.class public Lorg/openjdk/javax/lang/model/util/ElementScanner7;
.super Lorg/openjdk/javax/lang/model/util/ElementScanner6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/openjdk/javax/lang/model/util/ElementScanner6<",
        "TR;TP;>;"
    }
.end annotation

.annotation runtime Lorg/openjdk/javax/annotation/processing/SupportedSourceVersion;
    value = .enum Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_7:Lorg/openjdk/javax/lang/model/SourceVersion;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public visitVariable(Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/VariableElement;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
