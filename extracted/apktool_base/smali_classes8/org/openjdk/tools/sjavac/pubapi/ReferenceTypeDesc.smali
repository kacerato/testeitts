.class public Lorg/openjdk/tools/sjavac/pubapi/ReferenceTypeDesc;
.super Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2e98a6a61a8ae2d4L


# instance fields
.field javaType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->DECLARED:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;-><init>(Lorg/openjdk/javax/lang/model/type/TypeKind;)V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/pubapi/ReferenceTypeDesc;->javaType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/ReferenceTypeDesc;->javaType:Ljava/lang/String;

    check-cast p1, Lorg/openjdk/tools/sjavac/pubapi/ReferenceTypeDesc;

    iget-object p1, p1, Lorg/openjdk/tools/sjavac/pubapi/ReferenceTypeDesc;->javaType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/ReferenceTypeDesc;->javaType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/ReferenceTypeDesc;->javaType:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s[type: %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
