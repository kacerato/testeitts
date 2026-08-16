.class public Lorg/openjdk/javax/lang/model/util/TypeKindVisitor6;
.super Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6<",
        "TR;TP;>;"
    }
.end annotation

.annotation runtime Lorg/openjdk/javax/annotation/processing/SupportedSourceVersion;
    value = .enum Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_6:Lorg/openjdk/javax/lang/model/SourceVersion;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public visitNoType(Lorg/openjdk/javax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/NoType;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/util/TypeKindVisitor6$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance p2, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for NoType"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/TypeKindVisitor6;->visitNoTypeAsNone(Lorg/openjdk/javax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/TypeKindVisitor6;->visitNoTypeAsPackage(Lorg/openjdk/javax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/TypeKindVisitor6;->visitNoTypeAsVoid(Lorg/openjdk/javax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitNoTypeAsNone(Lorg/openjdk/javax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/NoType;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitNoTypeAsPackage(Lorg/openjdk/javax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/NoType;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitNoTypeAsVoid(Lorg/openjdk/javax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/NoType;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/util/TypeKindVisitor6$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance p2, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for PrimitiveType"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsDouble(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsFloat(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsChar(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsLong(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsInt(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsShort(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsByte(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsBoolean(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitPrimitiveAsBoolean(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitiveAsByte(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitiveAsChar(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitiveAsDouble(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitiveAsFloat(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitiveAsInt(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitiveAsLong(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitiveAsShort(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
