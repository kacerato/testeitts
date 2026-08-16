.class public Lorg/openjdk/tools/javac/code/Attribute$Constant;
.super Lorg/openjdk/tools/javac/code/Attribute;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constant"
.end annotation


# instance fields
.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Attribute;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;->visitString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 5
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6
    sget-object v1, Lorg/openjdk/tools/javac/code/Attribute$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1, v0, p2}, Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;->visitInt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    int-to-short v0, v0

    .line 8
    invoke-interface {p1, v0, p2}, Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;->visitShort(SLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    int-to-byte v0, v0

    .line 9
    invoke-interface {p1, v0, p2}, Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;->visitByte(BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    int-to-char v0, v0

    .line 10
    invoke-interface {p1, v0, p2}, Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;->visitChar(CLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-interface {p1, v2, p2}, Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;->visitBoolean(ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :cond_7
    :goto_1
    sget-object v0, Lorg/openjdk/tools/javac/code/Attribute$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    const/4 v1, 0x7

    if-eq v0, v1, :cond_9

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 13
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1, p2}, Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;->visitDouble(DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad annotation element value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 15
    :cond_9
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p1, v0, p2}, Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;->visitFloat(FLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :cond_a
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1, p2}, Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;->visitLong(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/openjdk/tools/javac/code/Attribute$Visitor;->visitConstant(Lorg/openjdk/tools/javac/code/Attribute$Constant;)V

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Constants;->decode(Ljava/lang/Object;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Constants;->format(Ljava/lang/Object;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
