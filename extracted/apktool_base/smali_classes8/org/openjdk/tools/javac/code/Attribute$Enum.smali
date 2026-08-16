.class public Lorg/openjdk/tools/javac/code/Attribute$Enum;
.super Lorg/openjdk/tools/javac/code/Attribute;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Enum"
.end annotation


# instance fields
.field public value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Attribute;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-interface {p1, v0, p2}, Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;->visitEnumConstant(Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/openjdk/tools/javac/code/Attribute$Visitor;->visitEnum(Lorg/openjdk/tools/javac/code/Attribute$Enum;)V

    return-void
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Attribute$Enum;->getValue()Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
