.class public Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;
.super Lorg/openjdk/tools/javac/code/Type;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/type/PrimitiveType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCPrimitiveType"
.end annotation


# instance fields
.field tag:Lorg/openjdk/tools/javac/code/TypeTag;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeMetadata;->EMPTY:Lorg/openjdk/tools/javac/code/TypeMetadata;

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-void
.end method

.method private constructor <init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/code/Type;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    .line 4
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->tag:Lorg/openjdk/tools/javac/code/TypeTag;

    .line 5
    iget-boolean p1, p1, Lorg/openjdk/tools/javac/code/TypeTag;->isPrimitive:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;Lorg/openjdk/tools/javac/code/Type$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/javax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/lang/model/type/TypeVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/type/TypeVisitor;->visitPrimitive(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;
    .locals 3

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType$1;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->tag:Lorg/openjdk/tools/javac/code/TypeTag;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType$1;-><init>(Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-object v0
.end method

.method public bridge synthetic cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    move-result-object p1

    return-object p1
.end method

.method public constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 7

    new-instance v6, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType$2;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->tag:Lorg/openjdk/tools/javac/code/TypeTag;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Type;->metadata:Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType$2;-><init>(Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;Ljava/lang/Object;)V

    return-object v6
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/code/Type$5;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->tag:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->BOOLEAN:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    :pswitch_1
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->DOUBLE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->FLOAT:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    :pswitch_3
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->LONG:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    :pswitch_4
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->INT:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    :pswitch_5
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->SHORT:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    :pswitch_6
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->BYTE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    :pswitch_7
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->CHAR:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

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

.method public getTag()Lorg/openjdk/tools/javac/code/TypeTag;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->tag:Lorg/openjdk/tools/javac/code/TypeTag;

    return-object v0
.end method

.method public isFalse()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->tag:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIntegral()Z
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/code/Type$5;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->tag:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public isNumeric()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->tag:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPrimitiveOrVoid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTrue()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->tag:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public stringValue()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->tag:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    if-ne v1, v2, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    goto :goto_0

    :cond_0
    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CHAR:Lorg/openjdk/tools/javac/code/TypeTag;

    if-ne v1, v2, :cond_2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
