.class public final Lorg/google/googlejavaformat/java/TypeNameClassifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;,
        Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typePrefixLength(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nameParts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->START:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->from(Ljava/lang/String;)Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->next(Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;)Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    move-result-object v0

    sget-object v3, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->REJECT:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->isSingleUnit()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method
