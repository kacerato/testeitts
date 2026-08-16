.class public Lorg/openjdk/tools/javac/code/Kinds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/Kinds$KindName;,
        Lorg/openjdk/tools/javac/code/Kinds$KindSelector;,
        Lorg/openjdk/tools/javac/code/Kinds$Kind;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static kindName(Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;)Lorg/openjdk/tools/javac/code/Kinds$KindName;
    .locals 3

    .line 1
    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$1;->$SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->CONSTRUCTOR:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4
    :cond_1
    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->METHOD:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0
.end method

.method public static kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;
    .locals 3

    .line 5
    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 7
    :pswitch_0
    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->INSTANCE_INIT:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0

    .line 8
    :pswitch_1
    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->STATIC_INIT:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0

    .line 9
    :pswitch_2
    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->METHOD:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0

    .line 10
    :pswitch_3
    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->CONSTRUCTOR:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0

    .line 11
    :pswitch_4
    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->VAR:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0

    .line 12
    :pswitch_5
    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->TYPEVAR:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0

    .line 13
    :pswitch_6
    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->INTERFACE:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0

    .line 14
    :pswitch_7
    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->CLASS:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0

    .line 15
    :pswitch_8
    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->ENUM:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0

    .line 16
    :pswitch_9
    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->PACKAGE:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static typeKindName(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Kinds$KindName;
    .locals 7

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide/32 v5, 0x1000000

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->PACKAGE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->PACKAGE:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-wide v3, p0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v5, 0x2000

    and-long/2addr v5, v3

    cmp-long p0, v5, v1

    if-eqz p0, :cond_2

    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->ANNOTATION:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0

    :cond_2
    const-wide/16 v5, 0x200

    and-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-eqz p0, :cond_3

    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->INTERFACE:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0

    :cond_3
    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->CLASS:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->BOUND:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0
.end method
