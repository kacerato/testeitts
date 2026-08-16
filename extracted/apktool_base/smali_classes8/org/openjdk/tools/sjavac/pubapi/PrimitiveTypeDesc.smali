.class public Lorg/openjdk/tools/sjavac/pubapi/PrimitiveTypeDesc;
.super Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x53f9b40d34028d92L


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/lang/model/type/TypeKind;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;-><init>(Lorg/openjdk/javax/lang/model/type/TypeKind;)V

    invoke-virtual {p1}, Lorg/openjdk/javax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->VOID:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only primitives or void accepted"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->typeKind:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
