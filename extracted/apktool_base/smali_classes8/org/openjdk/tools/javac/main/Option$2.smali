.class final enum Lorg/openjdk/tools/javac/main/Option$2;
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


# instance fields
.field private final LINT_KEY_FORMAT:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/main/Option$OptionKind;Lorg/openjdk/tools/javac/main/Option$OptionGroup;Lorg/openjdk/tools/javac/main/Option$ChoiceKind;Ljava/util/Set;)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lorg/openjdk/tools/javac/main/Option;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/main/Option$OptionKind;Lorg/openjdk/tools/javac/main/Option$OptionGroup;Lorg/openjdk/tools/javac/main/Option$ChoiceKind;Ljava/util/Set;Lorg/openjdk/tools/javac/main/Option$1;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "          %-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "s %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    iput-object v0, v1, Lorg/openjdk/tools/javac/main/Option$2;->LINT_KEY_FORMAT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public help(Lorg/openjdk/tools/javac/util/Log;)V
    .locals 11

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/main/Option;->help(Lorg/openjdk/tools/javac/util/Log;)V

    sget-object v0, Lorg/openjdk/tools/javac/util/Log$WriterKind;->STDOUT:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/Option$2;->LINT_KEY_FORMAT:Ljava/lang/String;

    sget-object v2, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "opt.Xlint.all"

    invoke-virtual {p1, v2, v5, v4}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "all"

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Lorg/openjdk/tools/javac/util/Log$WriterKind;Ljava/lang/String;)V

    invoke-static {}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->values()[Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-result-object v0

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    sget-object v5, Lorg/openjdk/tools/javac/util/Log$WriterKind;->STDOUT:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    iget-object v6, p0, Lorg/openjdk/tools/javac/main/Option$2;->LINT_KEY_FORMAT:Ljava/lang/String;

    iget-object v7, v4, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    sget-object v8, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "opt.Xlint.desc."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v8, v4, v9}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Lorg/openjdk/tools/javac/util/Log$WriterKind;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/util/Log$WriterKind;->STDOUT:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/Option$2;->LINT_KEY_FORMAT:Ljava/lang/String;

    sget-object v2, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    const-string v4, "opt.Xlint.none"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v4, v3}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Lorg/openjdk/tools/javac/util/Log$WriterKind;Ljava/lang/String;)V

    return-void
.end method
