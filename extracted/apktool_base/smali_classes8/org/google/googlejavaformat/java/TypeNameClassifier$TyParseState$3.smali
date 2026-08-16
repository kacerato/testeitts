.class final enum Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState$3;
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
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    sget-object p1, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->REJECT:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    return-object p1
.end method
