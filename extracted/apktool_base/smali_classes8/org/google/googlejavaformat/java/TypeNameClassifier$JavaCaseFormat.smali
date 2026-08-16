.class public final enum Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/TypeNameClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JavaCaseFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

.field public static final enum LOWERCASE:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

.field public static final enum LOWER_CAMEL:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

.field public static final enum UPPERCASE:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

.field public static final enum UPPER_CAMEL:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;


# direct methods
.method private static synthetic $values()[Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;
    .locals 4

    sget-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->UPPERCASE:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    sget-object v1, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->LOWERCASE:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    sget-object v2, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->UPPER_CAMEL:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    sget-object v3, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->LOWER_CAMEL:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    filled-new-array {v0, v1, v2, v3}, [Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    const-string v1, "UPPERCASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->UPPERCASE:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    new-instance v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    const-string v1, "LOWERCASE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->LOWERCASE:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    new-instance v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    const-string v1, "UPPER_CAMEL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->UPPER_CAMEL:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    new-instance v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    const-string v1, "LOWER_CAMEL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->LOWER_CAMEL:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    invoke-static {}, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->$values()[Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->$VALUES:[Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Ljava/lang/String;)Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lw2/W;->a(Z)V

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    move v1, v0

    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    or-int/2addr v4, v7

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    or-int/2addr v5, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    if-eqz v5, :cond_3

    sget-object p0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->UPPER_CAMEL:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    goto :goto_2

    :cond_3
    sget-object p0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->UPPERCASE:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    :goto_2
    return-object p0

    :cond_4
    if-eqz v4, :cond_5

    sget-object p0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->LOWER_CAMEL:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    goto :goto_3

    :cond_5
    sget-object p0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->LOWERCASE:Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    :goto_3
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    return-object p0
.end method

.method public static values()[Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->$VALUES:[Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    invoke-virtual {v0}, [Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    return-object v0
.end method
