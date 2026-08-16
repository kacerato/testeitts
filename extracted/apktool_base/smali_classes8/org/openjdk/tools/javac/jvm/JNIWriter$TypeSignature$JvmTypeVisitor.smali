.class Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$JvmTypeVisitor;
.super Lorg/openjdk/tools/javac/jvm/JNIWriter$SimpleTypeVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JvmTypeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/jvm/JNIWriter$SimpleTypeVisitor<",
        "Lorg/openjdk/tools/javac/code/Type;",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/JNIWriter$SimpleTypeVisitor;-><init>()V

    return-void
.end method

.method private getJvmPrimitiveSignature(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/JNIWriter$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p1, "unknown type: should not happen"

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string p1, "D"

    return-object p1

    :pswitch_1
    const-string p1, "F"

    return-object p1

    :pswitch_2
    const-string p1, "C"

    return-object p1

    :pswitch_3
    const-string p1, "J"

    return-object p1

    :pswitch_4
    const-string p1, "I"

    return-object p1

    :pswitch_5
    const-string p1, "S"

    return-object p1

    :pswitch_6
    const-string p1, "B"

    return-object p1

    :pswitch_7
    const-string p1, "Z"

    return-object p1

    :cond_0
    const-string p1, "V"

    return-object p1

    nop

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

.method private setDeclaredType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/StringBuilder;)V
    .locals 2

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v0, "L"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$JvmTypeVisitor;->visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/StringBuilder;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/StringBuilder;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 2
    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ArrayType;->getComponentType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Type;->accept(Lorg/openjdk/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$JvmTypeVisitor;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/StringBuilder;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/StringBuilder;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$JvmTypeVisitor;->setDeclaredType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/StringBuilder;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$JvmTypeVisitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/StringBuilder;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/StringBuilder;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitiveOrVoid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$JvmTypeVisitor;->getJvmPrimitiveSignature(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Type;->accept(Lorg/openjdk/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method
