.class final Lorg/google/googlejavaformat/java/CommandLineOptionsParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ARG_SPLITTER:Lw2/M;

.field private static final COLON_SPLITTER:Lw2/M;

.field private static final COMMA_SPLITTER:Lw2/M;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2c

    invoke-static {v0}, Lw2/M;->h(C)Lw2/M;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->COMMA_SPLITTER:Lw2/M;

    const/16 v0, 0x3a

    invoke-static {v0}, Lw2/M;->h(C)Lw2/M;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->COLON_SPLITTER:Lw2/M;

    invoke-static {}, Lw2/e;->g()Lw2/e;

    move-result-object v0

    invoke-static {v0}, Lw2/M;->k(Lw2/e;)Lw2/M;

    move-result-object v0

    invoke-virtual {v0}, Lw2/M;->g()Lw2/M;

    move-result-object v0

    invoke-virtual {v0}, Lw2/M;->q()Lw2/M;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->ARG_SPLITTER:Lw2/M;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static expandParamsFiles(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "expanded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v2, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->ARG_SPLITTER:Lw2/M;

    invoke-virtual {v2, v1}, Lw2/M;->n(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->expandParamsFiles(Ljava/lang/Iterable;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/UncheckedIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": could not read file: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw p1

    :cond_3
    return-void
.end method

.method private static getValue(Ljava/lang/String;Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "flag",
            "it",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "required value was not provided for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parse(Ljava/lang/Iterable;)Lorg/google/googlejavaformat/java/CommandLineOptions;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/google/googlejavaformat/java/CommandLineOptions;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "-"

    const/4 v2, 0x1

    invoke-static {}, Lorg/google/googlejavaformat/java/CommandLineOptions;->builder()Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v4}, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->expandParamsFiles(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->filesBuilder()Lcom/google/common/collect/g1$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/g1$a;->m(Ljava/util/Iterator;)Lcom/google/common/collect/g1$a;

    goto/16 :goto_3

    :cond_0
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v5, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    move-object v4, v6

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v7, "-assume-filename"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v6, 0x1d

    goto/16 :goto_2

    :sswitch_1
    const-string v7, "--version"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v6, 0x1c

    goto/16 :goto_2

    :sswitch_2
    const-string v7, "-version"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v6, 0x1b

    goto/16 :goto_2

    :sswitch_3
    const-string v7, "-lines"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v6, 0x1a

    goto/16 :goto_2

    :sswitch_4
    const-string v7, "--offset"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v6, 0x19

    goto/16 :goto_2

    :sswitch_5
    const-string v7, "--line"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v6, 0x18

    goto/16 :goto_2

    :sswitch_6
    const-string v7, "--help"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v6, 0x17

    goto/16 :goto_2

    :sswitch_7
    const-string v7, "--aosp"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 v6, 0x16

    goto/16 :goto_2

    :sswitch_8
    const-string v7, "--length"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 v6, 0x15

    goto/16 :goto_2

    :sswitch_9
    const-string v7, "--skip-removing-unused-imports"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto/16 :goto_2

    :cond_b
    const/16 v6, 0x14

    goto/16 :goto_2

    :sswitch_a
    const-string v7, "-offset"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto/16 :goto_2

    :cond_c
    const/16 v6, 0x13

    goto/16 :goto_2

    :sswitch_b
    const-string v7, "-length"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_2

    :cond_d
    const/16 v6, 0x12

    goto/16 :goto_2

    :sswitch_c
    const-string v7, "-line"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_2

    :cond_e
    const/16 v6, 0x11

    goto/16 :goto_2

    :sswitch_d
    const-string v7, "-help"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto/16 :goto_2

    :cond_f
    const/16 v6, 0x10

    goto/16 :goto_2

    :sswitch_e
    const-string v7, "-aosp"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto/16 :goto_2

    :cond_10
    const/16 v6, 0xf

    goto/16 :goto_2

    :sswitch_f
    const-string v7, "-v"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto/16 :goto_2

    :cond_11
    const/16 v6, 0xe

    goto/16 :goto_2

    :sswitch_10
    const-string v7, "-r"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    goto/16 :goto_2

    :cond_12
    const/16 v6, 0xd

    goto/16 :goto_2

    :sswitch_11
    const-string v7, "-n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    goto/16 :goto_2

    :cond_13
    const/16 v6, 0xc

    goto/16 :goto_2

    :sswitch_12
    const-string v7, "-i"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    goto/16 :goto_2

    :cond_14
    const/16 v6, 0xb

    goto/16 :goto_2

    :sswitch_13
    const-string v7, "-h"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    goto/16 :goto_2

    :cond_15
    const/16 v6, 0xa

    goto/16 :goto_2

    :sswitch_14
    const-string v7, "-a"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    goto/16 :goto_2

    :cond_16
    const/16 v6, 0x9

    goto/16 :goto_2

    :sswitch_15
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    goto/16 :goto_2

    :cond_17
    const/16 v6, 0x8

    goto/16 :goto_2

    :sswitch_16
    const-string v7, "--fix-imports-only"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    goto :goto_2

    :cond_18
    const/4 v6, 0x7

    goto :goto_2

    :sswitch_17
    const-string v7, "--skip-sorting-imports"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    goto :goto_2

    :cond_19
    const/4 v6, 0x6

    goto :goto_2

    :sswitch_18
    const-string v7, "--dry-run"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    goto :goto_2

    :cond_1a
    const/4 v6, 0x5

    goto :goto_2

    :sswitch_19
    const-string v7, "--assume-filename"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    goto :goto_2

    :cond_1b
    const/4 v6, 0x4

    goto :goto_2

    :sswitch_1a
    const-string v7, "--lines"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    goto :goto_2

    :cond_1c
    const/4 v6, 0x3

    goto :goto_2

    :sswitch_1b
    const-string v7, "--set-exit-if-changed"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    goto :goto_2

    :cond_1d
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_1c
    const-string v7, "--replace"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    goto :goto_2

    :cond_1e
    move v6, v2

    goto :goto_2

    :sswitch_1d
    const-string v7, "-replace"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    goto :goto_2

    :cond_1f
    move v6, v0

    :goto_2
    packed-switch v6, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {v3, v0}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->removeUnusedImports(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p0, v4, v5}, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->parseInteger(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->addOffset(Ljava/lang/Integer;)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p0, v4, v5}, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->parseInteger(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->addLength(Ljava/lang/Integer;)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v3, v2}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->version(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v3, v2}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->help(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v3, v2}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->aosp(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v3, v2}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->stdin(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v3, v2}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->fixImportsOnly(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v3, v0}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->sortImports(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v3, v2}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->dryRun(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_0

    :pswitch_a
    invoke-static {v4, p0, v5}, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->getValue(Ljava/lang/String;Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->assumeFilename(Ljava/lang/String;)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {v3}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->linesBuilder()Lcom/google/common/collect/q1$d;

    move-result-object v6

    invoke-static {v4, p0, v5}, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->getValue(Ljava/lang/String;Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->parseRangeSet(Lcom/google/common/collect/q1$d;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v3, v2}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->setExitIfChanged(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v3, v2}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->inPlace(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_0

    :cond_20
    :goto_3
    invoke-virtual {v3}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->build()Lorg/google/googlejavaformat/java/CommandLineOptions;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c2e6a19 -> :sswitch_1d
        -0x6c26e6ec -> :sswitch_1c
        -0x68fa16f8 -> :sswitch_1b
        -0x609a32a1 -> :sswitch_1a
        -0x55191198 -> :sswitch_19
        -0x3a2cb237 -> :sswitch_18
        -0x290c8c89 -> :sswitch_17
        -0x3d4a2fd -> :sswitch_16
        0x2d -> :sswitch_15
        0x5d4 -> :sswitch_14
        0x5db -> :sswitch_13
        0x5dc -> :sswitch_12
        0x5e1 -> :sswitch_11
        0x5e5 -> :sswitch_10
        0x5e9 -> :sswitch_f
        0x2a7e8b8 -> :sswitch_e
        0x2aaf0ee -> :sswitch_d
        0x2acd1a1 -> :sswitch_c
        0xa86a553 -> :sswitch_b
        0xfafcf00 -> :sswitch_a
        0x1229bed5 -> :sswitch_9
        0x4d1b8886 -> :sswitch_8
        0x4f71fcab -> :sswitch_7
        0x4f7504e1 -> :sswitch_6
        0x4f76e594 -> :sswitch_5
        0x5244b233 -> :sswitch_4
        0x52ed62f2 -> :sswitch_3
        0x578a000b -> :sswitch_2
        0x67918338 -> :sswitch_1
        0x7d0ae83b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_d
        :pswitch_9
        :pswitch_d
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_1
        :pswitch_b
        :pswitch_3
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method private static parseInteger(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "it",
            "flag",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p0, p2}, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->getValue(Ljava/lang/String;Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid integer value for %s: %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static parseRange(Ljava/lang/String;)Lcom/google/common/collect/j2;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->COLON_SPLITTER:Lw2/M;

    invoke-virtual {v0, p0}, Lw2/M;->o(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sub-int/2addr p0, v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method private static parseRangeSet(Lcom/google/common/collect/q1$d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "ranges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/q1$d<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->COMMA_SPLITTER:Lw2/M;

    invoke-virtual {v0, p1}, Lw2/M;->n(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->parseRange(Ljava/lang/String;)Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/q1$d;->a(Lcom/google/common/collect/j2;)Lcom/google/common/collect/q1$d;

    goto :goto_0

    :cond_0
    return-void
.end method
