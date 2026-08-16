.class Lorg/openjdk/tools/javah/JavahTask$JavahProcessor$1;
.super Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor9<",
        "Ljava/lang/Void;",
        "Lorg/openjdk/javax/lang/model/util/Types;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor$1;->this$1:Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;

    invoke-direct {p0}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor9;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitArray(Lorg/openjdk/javax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/javax/lang/model/util/Types;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor$1;->visitArray(Lorg/openjdk/javax/lang/model/type/ArrayType;Lorg/openjdk/javax/lang/model/util/Types;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Lorg/openjdk/javax/lang/model/type/ArrayType;Lorg/openjdk/javax/lang/model/util/Types;)Ljava/lang/Void;
    .locals 0

    .line 2
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/ArrayType;->getComponentType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/AbstractTypeVisitor6;->visit(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Lorg/openjdk/javax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/javax/lang/model/util/Types;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor$1;->visitDeclared(Lorg/openjdk/javax/lang/model/type/DeclaredType;Lorg/openjdk/javax/lang/model/util/Types;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Lorg/openjdk/javax/lang/model/type/DeclaredType;Lorg/openjdk/javax/lang/model/util/Types;)Ljava/lang/Void;
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/DeclaredType;->asElement()Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    .line 3
    invoke-interface {p2, p1}, Lorg/openjdk/javax/lang/model/util/Types;->directSupertypes(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/type/TypeMirror;

    .line 4
    invoke-virtual {p0, v0, p2}, Lorg/openjdk/javax/lang/model/util/AbstractTypeVisitor6;->visit(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
