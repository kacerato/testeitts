.class public interface abstract Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public visit(Lorg/openjdk/javax/lang/model/element/AnnotationValue;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/AnnotationValue;",
            ")TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0}, Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;->visit(Lorg/openjdk/javax/lang/model/element/AnnotationValue;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract visit(Lorg/openjdk/javax/lang/model/element/AnnotationValue;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/AnnotationValue;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitAnnotation(Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/AnnotationMirror;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitArray(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/AnnotationValue;",
            ">;TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitBoolean(ZLjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitByte(BLjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BTP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitChar(CLjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CTP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitDouble(DLjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DTP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitEnumConstant(Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/VariableElement;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitFloat(FLjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitInt(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitLong(JLjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitShort(SLjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(STP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitType(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitUnknown(Lorg/openjdk/javax/lang/model/element/AnnotationValue;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/AnnotationValue;",
            "TP;)TR;"
        }
    .end annotation
.end method
