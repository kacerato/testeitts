.class abstract Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$ElementScanningIncludingTypeParameters;
.super Lorg/openjdk/javax/lang/model/util/ElementScanner9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ElementScanningIncludingTypeParameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/openjdk/javax/lang/model/util/ElementScanner9<",
        "TR;TP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/javax/lang/model/util/ElementScanner9;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public visitExecutable(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/ExecutableElement;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->visitExecutable(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
