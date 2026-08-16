.class final enum Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState$5;
.super Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "isSingleUnit"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;-><init>(Ljava/lang/String;IZLorg/google/googlejavaformat/java/TypeNameClassifier$1;)V

    return-void
.end method


# virtual methods
.method public next(Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;)Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$1;->$SwitchMap$org$google$googlejavaformat$java$TypeNameClassifier$JavaCaseFormat:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object p1, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->TYPE:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    sget-object p1, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->REJECT:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    return-object p1

    :cond_2
    sget-object p1, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->AMBIGUOUS:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    return-object p1
.end method
