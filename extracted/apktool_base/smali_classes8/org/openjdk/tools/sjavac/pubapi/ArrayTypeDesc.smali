.class public Lorg/openjdk/tools/sjavac/pubapi/ArrayTypeDesc;
.super Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1056b6fcb9733f34L


# instance fields
.field compTypeDesc:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;)V
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->ARRAY:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;-><init>(Lorg/openjdk/javax/lang/model/type/TypeKind;)V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/pubapi/ArrayTypeDesc;->compTypeDesc:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

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
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/ArrayTypeDesc;->compTypeDesc:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    check-cast p1, Lorg/openjdk/tools/sjavac/pubapi/ArrayTypeDesc;

    iget-object p1, p1, Lorg/openjdk/tools/sjavac/pubapi/ArrayTypeDesc;->compTypeDesc:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/ArrayTypeDesc;->compTypeDesc:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
