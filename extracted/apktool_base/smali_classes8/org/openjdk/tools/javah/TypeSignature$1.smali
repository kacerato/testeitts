.class Lorg/openjdk/tools/javah/TypeSignature$1;
.super Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javah/TypeSignature;->qualifiedTypeName(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor9<",
        "Lorg/openjdk/javax/lang/model/element/Name;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javah/TypeSignature;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javah/TypeSignature;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javah/TypeSignature$1;->this$0:Lorg/openjdk/tools/javah/TypeSignature;

    invoke-direct {p0}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor9;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitArray(Lorg/openjdk/javax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javah/TypeSignature$1;->visitArray(Lorg/openjdk/javax/lang/model/type/ArrayType;Ljava/lang/Void;)Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Lorg/openjdk/javax/lang/model/type/ArrayType;Ljava/lang/Void;)Lorg/openjdk/javax/lang/model/element/Name;
    .locals 0

    .line 2
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/ArrayType;->getComponentType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->accept(Lorg/openjdk/javax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/lang/model/element/Name;

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Lorg/openjdk/javax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javah/TypeSignature$1;->visitDeclared(Lorg/openjdk/javax/lang/model/type/DeclaredType;Ljava/lang/Void;)Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Lorg/openjdk/javax/lang/model/type/DeclaredType;Ljava/lang/Void;)Lorg/openjdk/javax/lang/model/element/Name;
    .locals 0

    .line 2
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/DeclaredType;->asElement()Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/lang/model/element/TypeElement;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitNoType(Lorg/openjdk/javax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javah/TypeSignature$1;->visitNoType(Lorg/openjdk/javax/lang/model/type/NoType;Ljava/lang/Void;)Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    return-object p1
.end method

.method public visitNoType(Lorg/openjdk/javax/lang/model/type/NoType;Ljava/lang/Void;)Lorg/openjdk/javax/lang/model/element/Name;
    .locals 2

    .line 2
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->VOID:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lorg/openjdk/tools/javah/TypeSignature$1;->this$0:Lorg/openjdk/tools/javah/TypeSignature;

    iget-object p1, p1, Lorg/openjdk/tools/javah/TypeSignature;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    const-string p2, "void"

    invoke-interface {p1, p2}, Lorg/openjdk/javax/lang/model/util/Elements;->getName(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/lang/model/element/Name;

    return-object p1
.end method

.method public bridge synthetic visitPrimitive(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javah/TypeSignature$1;->visitPrimitive(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Lorg/openjdk/javax/lang/model/element/Name;
    .locals 0

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javah/TypeSignature$1;->this$0:Lorg/openjdk/tools/javah/TypeSignature;

    iget-object p2, p2, Lorg/openjdk/tools/javah/TypeSignature;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/openjdk/javax/lang/model/util/Elements;->getName(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeVariable(Lorg/openjdk/javax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javah/TypeSignature$1;->visitTypeVariable(Lorg/openjdk/javax/lang/model/type/TypeVariable;Ljava/lang/Void;)Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Lorg/openjdk/javax/lang/model/type/TypeVariable;Ljava/lang/Void;)Lorg/openjdk/javax/lang/model/element/Name;
    .locals 0

    .line 2
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeVariable;->getUpperBound()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->accept(Lorg/openjdk/javax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/lang/model/element/Name;

    return-object p1
.end method
