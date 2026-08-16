.class public final Lcom/android/tools/r8/O;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Lcom/android/tools/r8/internal/QC;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Usage: globalsyntheticsgenerator [options] where options are:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/O;->a:Ljava/lang/String;

    const-string v0, "--lib"

    const-string v1, "--min-api"

    const-string v2, "--output"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v1, v0}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/O;->b:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public static a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
    .locals 10

    const/4 v0, 0x1

    .line 20
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/w2;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/w2;-><init>(Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;)V

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/tx;->a([Ljava/lang/String;Ljava/util/function/Consumer;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    move v5, v3

    .line 21
    :goto_0
    array-length v6, p0

    const-string v7, "."

    if-ge v3, v6, :cond_c

    .line 22
    aget-object v6, p0, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 23
    sget-object v8, Lcom/android/tools/r8/O;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v8, v3, 0x1

    .line 24
    array-length v9, p0

    if-ge v8, v9, :cond_0

    .line 25
    aget-object v3, p0, v8

    goto :goto_1

    .line 26
    :cond_0
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    aget-object p0, p0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing parameter for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_3

    :cond_1
    move v8, v3

    move-object v3, v1

    .line 27
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_2

    .line 28
    :cond_2
    const-string v7, "--help"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 29
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->setPrintHelp(Z)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;

    goto/16 :goto_2

    .line 30
    :cond_3
    const-string v7, "--version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 31
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->setPrintVersion(Z)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;

    goto/16 :goto_2

    .line 32
    :cond_4
    const-string v7, "--output"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v4, :cond_5

    .line 33
    new-instance v6, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot output both to \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\' and \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p2, v6}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_2

    .line 34
    :cond_5
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    goto :goto_2

    .line 35
    :cond_6
    const-string v7, "--min-api"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-eqz v5, :cond_7

    .line 36
    new-instance v3, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v6, "Cannot set multiple --min-api options"

    invoke-direct {v3, v6, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p2, v3}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_2

    .line 37
    :cond_7
    new-instance v5, Lcom/android/tools/r8/w2;

    invoke-direct {v5, p2}, Lcom/android/tools/r8/w2;-><init>(Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;)V

    new-instance v6, Lcom/android/tools/r8/x2;

    invoke-direct {v6, p2}, Lcom/android/tools/r8/x2;-><init>(Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;)V

    .line 38
    invoke-static {v5, v7, v3, p1, v6}, Lcom/android/tools/r8/m;->a(Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Ljava/util/function/Consumer;)V

    move v5, v0

    goto :goto_2

    .line 39
    :cond_8
    const-string v7, "--lib"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 40
    new-array v6, v2, [Ljava/lang/String;

    invoke-static {v3, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v6, v0, [Ljava/nio/file/Path;

    aput-object v3, v6, v2

    invoke-virtual {p2, v6}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->addLibraryFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;

    goto :goto_2

    .line 41
    :cond_9
    const-string v3, "--classfile"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 42
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->setClassfileDesugaringOnly(Z)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;

    goto :goto_2

    .line 43
    :cond_a
    const-string v3, "--"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 44
    new-instance v3, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown option: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p2, v3}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    :cond_b
    :goto_2
    add-int/lit8 v3, v8, 0x1

    goto/16 :goto_0

    :cond_c
    :goto_3
    if-nez v4, :cond_d

    .line 45
    new-array p0, v2, [Ljava/lang/String;

    invoke-static {v7, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 46
    :cond_d
    invoke-virtual {p2, v4}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->setGlobalSyntheticsOutput(Ljava/nio/file/Path;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget-object v1, Lcom/android/tools/r8/O;->a:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/android/tools/r8/ParseFlagPrinter;

    invoke-direct {v1}, Lcom/android/tools/r8/ParseFlagPrinter;-><init>()V

    .line 4
    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 5
    new-instance v2, Lcom/android/tools/r8/internal/eC;

    .line 6
    invoke-direct {v2}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 7
    invoke-static {}, Lcom/android/tools/r8/Y;->e()Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 8
    const-string v3, "Add <file|jdk-home> as a library resource."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 9
    const-string v4, "<file|jdk-home>"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v5, "--lib"

    invoke-static {v5, v4, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    .line 10
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    const-string v3, "Output result in <globals-file>."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 11
    const-string v4, "<globals-file>"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v5, "--output"

    invoke-static {v5, v4, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    .line 12
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    const-string v3, "Generate globals for only classfile to classfile desugaring."

    const-string v4, "(By default globals for both classfile and dex desugaring are generated)."

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 13
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v5, "--classfile"

    invoke-static {v5, v4, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    .line 14
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 15
    const-string v3, "globalsyntheticsgenerator"

    invoke-static {v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;)Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 16
    invoke-static {}, Lcom/android/tools/r8/Y;->c()Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/ParseFlagPrinter;->addFlags(Ljava/util/List;)Lcom/android/tools/r8/ParseFlagPrinter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ParseFlagPrinter;->appendLinesToBuilder(Ljava/lang/StringBuilder;)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
