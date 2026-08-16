.class public abstract Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x71d20eccbdccacc4L


# instance fields
.field typeKind:Lorg/openjdk/javax/lang/model/type/TypeKind;


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/lang/model/type/TypeKind;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->typeKind:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-void
.end method

.method public static decodeString(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/ArrayTypeDesc;

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->decodeString(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/openjdk/tools/sjavac/pubapi/ArrayTypeDesc;-><init>(Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;)V

    return-object v0

    :cond_0
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/TypeVarTypeDesc;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/openjdk/tools/sjavac/pubapi/TypeVarTypeDesc;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "boolean|byte|char|double|float|int|long|short|void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/StringUtils;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/javax/lang/model/type/TypeKind;->valueOf(Ljava/lang/String;)Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object p0

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/PrimitiveTypeDesc;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/sjavac/pubapi/PrimitiveTypeDesc;-><init>(Lorg/openjdk/javax/lang/model/type/TypeKind;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/ReferenceTypeDesc;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/sjavac/pubapi/ReferenceTypeDesc;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static encodeAsString(Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->typeKind:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v0}, Lorg/openjdk/javax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->typeKind:Lorg/openjdk/javax/lang/model/type/TypeKind;

    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->VOID:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->ARRAY:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Lorg/openjdk/tools/sjavac/pubapi/ArrayTypeDesc;

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/pubapi/ArrayTypeDesc;->compTypeDesc:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->encodeAsString(Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->TYPEVAR:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lorg/openjdk/tools/sjavac/pubapi/TypeVarTypeDesc;

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/pubapi/TypeVarTypeDesc;->identifier:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->DECLARED:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_3

    check-cast p0, Lorg/openjdk/tools/sjavac/pubapi/ReferenceTypeDesc;

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/pubapi/ReferenceTypeDesc;->javaType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->typeKind:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_0
    iget-object p0, p0, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->typeKind:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromType(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc$1;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc$1;-><init>()V

    invoke-interface {v0, p0}, Lorg/openjdk/javax/lang/model/type/TypeVisitor;->visit(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled type mirror: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->typeKind:Lorg/openjdk/javax/lang/model/type/TypeKind;

    check-cast p1, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    iget-object p1, p1, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->typeKind:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->typeKind:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
