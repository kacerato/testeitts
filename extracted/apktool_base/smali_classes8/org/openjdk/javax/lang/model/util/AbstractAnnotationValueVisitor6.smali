.class public abstract Lorg/openjdk/javax/lang/model/util/AbstractAnnotationValueVisitor6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor<",
        "TR;TP;>;"
    }
.end annotation

.annotation runtime Lorg/openjdk/javax/annotation/processing/SupportedSourceVersion;
    value = .enum Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_6:Lorg/openjdk/javax/lang/model/SourceVersion;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Lorg/openjdk/javax/lang/model/element/AnnotationValue;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/AnnotationValue;",
            ")TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, p0, v0}, Lorg/openjdk/javax/lang/model/element/AnnotationValue;->accept(Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final visit(Lorg/openjdk/javax/lang/model/element/AnnotationValue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/AnnotationValue;",
            "TP;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/element/AnnotationValue;->accept(Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknown(Lorg/openjdk/javax/lang/model/element/AnnotationValue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/AnnotationValue;",
            "TP;)TR;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/javax/lang/model/element/UnknownAnnotationValueException;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/javax/lang/model/element/UnknownAnnotationValueException;-><init>(Lorg/openjdk/javax/lang/model/element/AnnotationValue;Ljava/lang/Object;)V

    throw v0
.end method
