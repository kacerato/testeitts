.class Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol$1;
.super Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->clone(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 6

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol$1;->this$0:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol$1;->this$0:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-object v0
.end method

.method public bridge synthetic clone(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->clone(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultValue()Lorg/openjdk/javax/lang/model/element/AnnotationValue;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->getDefaultValue()Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEnclosingElement()Lorg/openjdk/javax/lang/model/element/Element;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getEnclosingElement()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->getParameters()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReceiverType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->getReceiverType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReturnType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getThrownTypes()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeParameters()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getTypeParameters()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method
