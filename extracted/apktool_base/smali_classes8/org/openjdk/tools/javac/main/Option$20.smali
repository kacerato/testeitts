.class final enum Lorg/openjdk/tools/javac/main/Option$20;
.super Lorg/openjdk/tools/javac/main/Option;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/main/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/main/Option$OptionKind;Lorg/openjdk/tools/javac/main/Option$OptionGroup;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/openjdk/tools/javac/main/Option;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/main/Option$OptionKind;Lorg/openjdk/tools/javac/main/Option$OptionGroup;Lorg/openjdk/tools/javac/main/Option$1;)V

    return-void
.end method


# virtual methods
.method public getPattern()Ljava/util/regex/Pattern;
    .locals 1

    const-string v0, "[^,].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/openjdk/tools/javac/main/OptionHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/main/Option$InvalidValueException;
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->DEFAULT_MODULE_FOR_CREATED_FILES:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/main/OptionHelper;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/Option$20;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, v0, Lorg/openjdk/tools/javac/main/Option;->primaryName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/openjdk/tools/javac/main/OptionHelper;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "err.bad.value.for.option"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/main/OptionHelper;->newInvalidValueException(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/main/Option$InvalidValueException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p3, "err.no.value.for.option"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/openjdk/tools/javac/main/OptionHelper;->newInvalidValueException(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/main/Option$InvalidValueException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p2, v0, Lorg/openjdk/tools/javac/main/Option;->primaryName:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "err.option.too.many"

    invoke-virtual {p1, p3, p2}, Lorg/openjdk/tools/javac/main/OptionHelper;->newInvalidValueException(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/main/Option$InvalidValueException;

    move-result-object p1

    throw p1
.end method
