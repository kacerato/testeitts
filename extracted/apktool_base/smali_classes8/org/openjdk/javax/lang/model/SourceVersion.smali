.class public final enum Lorg/openjdk/javax/lang/model/SourceVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/javax/lang/model/SourceVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/javax/lang/model/SourceVersion;

.field public static final enum RELEASE_0:Lorg/openjdk/javax/lang/model/SourceVersion;

.field public static final enum RELEASE_1:Lorg/openjdk/javax/lang/model/SourceVersion;

.field public static final enum RELEASE_2:Lorg/openjdk/javax/lang/model/SourceVersion;

.field public static final enum RELEASE_3:Lorg/openjdk/javax/lang/model/SourceVersion;

.field public static final enum RELEASE_4:Lorg/openjdk/javax/lang/model/SourceVersion;

.field public static final enum RELEASE_5:Lorg/openjdk/javax/lang/model/SourceVersion;

.field public static final enum RELEASE_6:Lorg/openjdk/javax/lang/model/SourceVersion;

.field public static final enum RELEASE_7:Lorg/openjdk/javax/lang/model/SourceVersion;

.field public static final enum RELEASE_8:Lorg/openjdk/javax/lang/model/SourceVersion;

.field public static final enum RELEASE_9:Lorg/openjdk/javax/lang/model/SourceVersion;

.field private static final latestSupported:Lorg/openjdk/javax/lang/model/SourceVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/openjdk/javax/lang/model/SourceVersion;

    const-string v1, "RELEASE_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_0:Lorg/openjdk/javax/lang/model/SourceVersion;

    new-instance v1, Lorg/openjdk/javax/lang/model/SourceVersion;

    const-string v2, "RELEASE_1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/javax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_1:Lorg/openjdk/javax/lang/model/SourceVersion;

    new-instance v2, Lorg/openjdk/javax/lang/model/SourceVersion;

    const-string v3, "RELEASE_2"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/javax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_2:Lorg/openjdk/javax/lang/model/SourceVersion;

    new-instance v3, Lorg/openjdk/javax/lang/model/SourceVersion;

    const-string v4, "RELEASE_3"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/javax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_3:Lorg/openjdk/javax/lang/model/SourceVersion;

    new-instance v4, Lorg/openjdk/javax/lang/model/SourceVersion;

    const-string v5, "RELEASE_4"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/javax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_4:Lorg/openjdk/javax/lang/model/SourceVersion;

    new-instance v5, Lorg/openjdk/javax/lang/model/SourceVersion;

    const-string v6, "RELEASE_5"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/openjdk/javax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_5:Lorg/openjdk/javax/lang/model/SourceVersion;

    new-instance v6, Lorg/openjdk/javax/lang/model/SourceVersion;

    const-string v7, "RELEASE_6"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/openjdk/javax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_6:Lorg/openjdk/javax/lang/model/SourceVersion;

    new-instance v7, Lorg/openjdk/javax/lang/model/SourceVersion;

    const-string v8, "RELEASE_7"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/openjdk/javax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_7:Lorg/openjdk/javax/lang/model/SourceVersion;

    new-instance v8, Lorg/openjdk/javax/lang/model/SourceVersion;

    const-string v9, "RELEASE_8"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/openjdk/javax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_8:Lorg/openjdk/javax/lang/model/SourceVersion;

    new-instance v9, Lorg/openjdk/javax/lang/model/SourceVersion;

    const-string v10, "RELEASE_9"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/openjdk/javax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_9:Lorg/openjdk/javax/lang/model/SourceVersion;

    filled-new-array/range {v0 .. v9}, [Lorg/openjdk/javax/lang/model/SourceVersion;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/lang/model/SourceVersion;->$VALUES:[Lorg/openjdk/javax/lang/model/SourceVersion;

    invoke-static {}, Lorg/openjdk/javax/lang/model/SourceVersion;->getLatestSupported()Lorg/openjdk/javax/lang/model/SourceVersion;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/lang/model/SourceVersion;->latestSupported:Lorg/openjdk/javax/lang/model/SourceVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static getLatestSupported()Lorg/openjdk/javax/lang/model/SourceVersion;
    .locals 7

    :try_start_0
    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x39

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "1.9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_1

    :pswitch_1
    const-string v1, "1.8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :pswitch_2
    const-string v1, "1.7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :pswitch_3
    const-string v1, "1.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_0
    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_6:Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object v0

    :cond_3
    sget-object v0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_7:Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object v0

    :cond_4
    sget-object v0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_8:Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object v0

    :cond_5
    sget-object v0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_9:Lorg/openjdk/javax/lang/model/SourceVersion;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :goto_2
    sget-object v0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_5:Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xbdb9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isIdentifier(Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isKeyword(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/openjdk/javax/lang/model/SourceVersion;->latest()Lorg/openjdk/javax/lang/model/SourceVersion;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/openjdk/javax/lang/model/SourceVersion;->isKeyword(Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/SourceVersion;)Z

    move-result p0

    return p0
.end method

.method public static isKeyword(Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/SourceVersion;)Z
    .locals 4

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "strictfp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x35

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "abstract"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x34

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "default"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x33

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "transient"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x32

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "instanceof"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x31

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "interface"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x30

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "while"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x2f

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "throw"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x2e

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "super"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x2d

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "short"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x2c

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "float"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x2b

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "final"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x2a

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "false"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x29

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "const"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x28

    goto/16 :goto_0

    :sswitch_e
    const-string v3, "class"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x27

    goto/16 :goto_0

    :sswitch_f
    const-string v3, "catch"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x26

    goto/16 :goto_0

    :sswitch_10
    const-string v3, "break"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x25

    goto/16 :goto_0

    :sswitch_11
    const-string v3, "boolean"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x24

    goto/16 :goto_0

    :sswitch_12
    const-string v3, "void"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0x23

    goto/16 :goto_0

    :sswitch_13
    const-string v3, "true"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x22

    goto/16 :goto_0

    :sswitch_14
    const-string v3, "this"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0x21

    goto/16 :goto_0

    :sswitch_15
    const-string v3, "null"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0x20

    goto/16 :goto_0

    :sswitch_16
    const-string v3, "long"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0x1f

    goto/16 :goto_0

    :sswitch_17
    const-string v3, "goto"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_18
    const-string v3, "enum"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_19
    const-string v3, "else"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_1a
    const-string v3, "char"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_1b
    const-string v3, "case"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_1c
    const-string v3, "byte"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_1d
    const-string v3, "try"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_1e
    const-string v3, "new"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_1f
    const-string v3, "int"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_20
    const-string v3, "for"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_21
    const-string v3, "if"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_22
    const-string v3, "do"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_23
    const-string v3, "_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_24
    const-string v3, "private"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_25
    const-string v3, "continue"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_26
    const-string v3, "protected"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_27
    const-string v3, "package"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_28
    const-string v3, "finally"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_29
    const-string v3, "throws"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_2a
    const-string v3, "switch"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_2b
    const-string v3, "static"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_2c
    const-string v3, "implements"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_2d
    const-string v3, "return"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_2e
    const-string v3, "public"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_0

    :cond_2e
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2f
    const-string v3, "native"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_0

    :cond_2f
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_30
    const-string v3, "import"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto :goto_0

    :cond_30
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_31
    const-string v3, "extends"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_0

    :cond_31
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_32
    const-string v3, "double"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_0

    :cond_32
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_33
    const-string v3, "assert"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_0

    :cond_33
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_34
    const-string v3, "synchronized"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_0

    :cond_34
    move v2, v0

    goto :goto_0

    :sswitch_35
    const-string v3, "volatile"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto :goto_0

    :cond_35
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v1

    .line 4
    :pswitch_0
    sget-object p0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_2:Lorg/openjdk/javax/lang/model/SourceVersion;

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_36

    goto :goto_1

    :cond_36
    move v0, v1

    :goto_1
    return v0

    .line 5
    :pswitch_1
    sget-object p0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_5:Lorg/openjdk/javax/lang/model/SourceVersion;

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_37

    goto :goto_2

    :cond_37
    move v0, v1

    :goto_2
    return v0

    .line 6
    :pswitch_2
    sget-object p0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_9:Lorg/openjdk/javax/lang/model/SourceVersion;

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_38

    goto :goto_3

    :cond_38
    move v0, v1

    :goto_3
    return v0

    .line 7
    :pswitch_3
    sget-object p0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_4:Lorg/openjdk/javax/lang/model/SourceVersion;

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_39

    goto :goto_4

    :cond_39
    move v0, v1

    :goto_4
    :pswitch_4
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x70890264 -> :sswitch_35
        -0x576a7aec -> :sswitch_34
        -0x53ef8cba -> :sswitch_33
        -0x4f08842f -> :sswitch_32
        -0x4dd2db67 -> :sswitch_31
        -0x469e8c5b -> :sswitch_30
        -0x3ebdafe9 -> :sswitch_2f
        -0x3a424d97 -> :sswitch_2e
        -0x37b1c2d0 -> :sswitch_2d
        -0x368fa850 -> :sswitch_2c
        -0x35323192 -> :sswitch_2b
        -0x350448cc -> :sswitch_2a
        -0x341ec9b3 -> :sswitch_29
        -0x32dbb67d -> :sswitch_28
        -0x301acbba -> :sswitch_27
        -0x24459452 -> :sswitch_26
        -0x21ced359 -> :sswitch_25
        -0x12beda7d -> :sswitch_24
        0x5f -> :sswitch_23
        0xc8b -> :sswitch_22
        0xd1d -> :sswitch_21
        0x18cc9 -> :sswitch_20
        0x197ef -> :sswitch_1f
        0x1a9a0 -> :sswitch_1e
        0x1c1bb -> :sswitch_1d
        0x2e6108 -> :sswitch_1c
        0x2e7b30 -> :sswitch_1b
        0x2e9356 -> :sswitch_1a
        0x2f8d39 -> :sswitch_19
        0x2f9501 -> :sswitch_18
        0x308163 -> :sswitch_17
        0x32c67c -> :sswitch_16
        0x33c587 -> :sswitch_15
        0x364e9e -> :sswitch_14
        0x36758e -> :sswitch_13
        0x375194 -> :sswitch_12
        0x3db6c28 -> :sswitch_11
        0x59a58ff -> :sswitch_10
        0x5a0eebb -> :sswitch_f
        0x5a5a978 -> :sswitch_e
        0x5a73763 -> :sswitch_d
        0x5cb1923 -> :sswitch_c
        0x5cec176 -> :sswitch_b
        0x5d0225c -> :sswitch_a
        0x685847c -> :sswitch_9
        0x68b6f7b -> :sswitch_8
        0x693a6e6 -> :sswitch_7
        0x6bdcb31 -> :sswitch_6
        0x1df56d39 -> :sswitch_5
        0x35c3d12c -> :sswitch_4
        0x3ebfa28a -> :sswitch_3
        0x5c13d641 -> :sswitch_2
        0x6749f022 -> :sswitch_1
        0x6af8dd53 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public static isName(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/openjdk/javax/lang/model/SourceVersion;->latest()Lorg/openjdk/javax/lang/model/SourceVersion;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/SourceVersion;)Z

    move-result p0

    return p0
.end method

.method public static isName(Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/SourceVersion;)Z
    .locals 5

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    const-string v0, "\\."

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 4
    invoke-static {v3}, Lorg/openjdk/javax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3, p1}, Lorg/openjdk/javax/lang/model/SourceVersion;->isKeyword(Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/SourceVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static latest()Lorg/openjdk/javax/lang/model/SourceVersion;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_9:Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object v0
.end method

.method public static latestSupported()Lorg/openjdk/javax/lang/model/SourceVersion;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/SourceVersion;->latestSupported:Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/javax/lang/model/SourceVersion;
    .locals 1

    const-class v0, Lorg/openjdk/javax/lang/model/SourceVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/javax/lang/model/SourceVersion;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/SourceVersion;->$VALUES:[Lorg/openjdk/javax/lang/model/SourceVersion;

    invoke-virtual {v0}, [Lorg/openjdk/javax/lang/model/SourceVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object v0
.end method
