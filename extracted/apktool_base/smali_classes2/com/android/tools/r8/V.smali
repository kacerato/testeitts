.class public final Lcom/android/tools/r8/V;
.super Lcom/android/tools/r8/m;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/QC;

.field public static final c:Lcom/android/tools/r8/internal/Tm0;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "--pg-map-output"

    const-string v1, "--partition-map-output"

    const-string v2, "--art-profile"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v9

    const-string v7, "--thread-count"

    const-string v8, "--pg-conf"

    const-string v3, "--output"

    const-string v4, "--lib"

    const-string v5, "--min-api"

    const-string v6, "--desugared-lib"

    invoke-static/range {v3 .. v9}, Lcom/android/tools/r8/internal/QC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/V;->b:Lcom/android/tools/r8/internal/QC;

    new-instance v0, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/tools/r8/V;->c:Lcom/android/tools/r8/internal/Tm0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/m;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    const-string v1, " where <input-files> are any combination of dex, class, zip, jar, or apk files"

    const-string v2, " and options are:"

    const-string v3, "Usage: l8 [options] <input-files>"

    const-string v4, " where <input-files> are any combination class, zip, or jar files"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

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

    const/4 v3, 0x1

    .line 7
    invoke-static {v3}, Lcom/android/tools/r8/Y;->a(Z)Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    const/4 v3, 0x0

    .line 8
    invoke-static {v3}, Lcom/android/tools/r8/Y;->b(Z)Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 9
    const-string v3, "Output result in <file>."

    const-string v4, "<file> must be an existing directory or a zip file."

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 10
    const-string v4, "<file>"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "--output"

    invoke-static {v6, v5, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 12
    const-string v3, "Add <file|jdk-home> as a library resource."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 13
    const-string v5, "<file|jdk-home>"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "--lib"

    invoke-static {v6, v5, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    .line 14
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 15
    invoke-static {}, Lcom/android/tools/r8/Y;->e()Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 16
    const-string v3, "Proguard configuration <file>."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "--pg-conf"

    invoke-static {v6, v5, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 19
    const-string v3, "Output the resulting name and line mapping to <file>."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "--pg-map-output"

    invoke-static {v6, v5, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 22
    const-string v3, "Output the resulting mapping to <file>."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "--partition-map-output"

    invoke-static {v6, v5, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 25
    const-string v3, "Specify desugared library configuration."

    const-string v5, "<file> is a desugared library configuration (json)."

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v5, "--desugared-lib"

    invoke-static {v5, v4, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 28
    invoke-static {}, Lcom/android/tools/r8/Y;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 29
    const-string v3, "If not specified the number will be based on"

    const-string v4, "heuristics taking the number of cores into account."

    const-string v5, "Use <number> of threads for compilation."

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 30
    const-string v4, "<number>"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v5, "--thread-count"

    invoke-static {v5, v4, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 32
    invoke-static {}, Lcom/android/tools/r8/Y;->d()Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 33
    const-string v3, "Rewrite human readable ART profile read from <input> and write to <output>."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 34
    const-string v4, "<input>"

    const-string v5, "<output>"

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v5, "--art-profile"

    invoke-static {v5, v4, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 36
    const-string v3, "l8"

    invoke-static {v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;)Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 37
    invoke-static {}, Lcom/android/tools/r8/Y;->c()Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/ParseFlagPrinter;->addFlags(Ljava/util/List;)Lcom/android/tools/r8/ParseFlagPrinter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ParseFlagPrinter;->appendLinesToBuilder(Ljava/lang/StringBuilder;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/L8Command$Builder;)Lcom/android/tools/r8/L8Command$Builder;
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x1

    .line 41
    sget-object v3, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    .line 42
    invoke-static {}, Lcom/android/tools/r8/p;->a()Lcom/android/tools/r8/p$a;

    move-result-object v4

    .line 43
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/J3;

    invoke-direct {v5, v1}, Lcom/android/tools/r8/J3;-><init>(Lcom/android/tools/r8/L8Command$Builder;)V

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lcom/android/tools/r8/internal/tx;->a([Ljava/lang/String;Ljava/util/function/Consumer;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 44
    :goto_0
    array-length v12, v5

    const-string v13, "."

    if-ge v8, v12, :cond_1

    .line 45
    aget-object v12, v5, v8

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 46
    sget-object v14, Lcom/android/tools/r8/V;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v14, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    add-int/lit8 v14, v8, 0x1

    .line 47
    array-length v15, v5

    const-string v6, "Missing parameter for "

    if-ge v14, v15, :cond_3

    .line 48
    aget-object v15, v5, v14

    .line 49
    sget-object v7, Lcom/android/tools/r8/V;->c:Lcom/android/tools/r8/internal/Tm0;

    .line 50
    iget-object v7, v7, Lcom/android/tools/r8/internal/Tm0;->d:Ljava/lang/Object;

    .line 51
    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v7, v8, 0x2

    .line 52
    array-length v14, v5

    if-ge v7, v14, :cond_0

    .line 53
    aget-object v6, v5, v7

    move v8, v7

    goto :goto_2

    .line 54
    :cond_0
    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    aget-object v5, v5, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    :cond_1
    :goto_1
    move-object/from16 v6, p0

    goto/16 :goto_6

    :cond_2
    move v8, v14

    const/4 v6, 0x0

    goto :goto_2

    .line 55
    :cond_3
    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    aget-object v5, v5, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    const/4 v15, 0x0

    .line 56
    :goto_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    goto :goto_3

    .line 57
    :cond_5
    const-string v7, "--help"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 58
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/BaseCommand$Builder;->setPrintHelp(Z)Lcom/android/tools/r8/BaseCommand$Builder;

    goto :goto_3

    .line 59
    :cond_6
    const-string v7, "--version"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 60
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/BaseCommand$Builder;->setPrintVersion(Z)Lcom/android/tools/r8/BaseCommand$Builder;

    goto :goto_3

    .line 61
    :cond_7
    const-string v7, "--debug"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v13, "Cannot compile in both --debug and --release mode."

    if-eqz v7, :cond_9

    .line 62
    sget-object v6, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    if-ne v9, v6, :cond_8

    .line 63
    new-instance v6, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {v6, v13, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_3

    .line 64
    :cond_8
    sget-object v9, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    :goto_3
    move-object/from16 v6, p0

    goto/16 :goto_5

    .line 65
    :cond_9
    const-string v7, "--release"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 66
    sget-object v6, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    if-ne v9, v6, :cond_a

    .line 67
    new-instance v6, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {v6, v13, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_3

    .line 68
    :cond_a
    sget-object v9, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    goto :goto_3

    .line 69
    :cond_b
    const-string v7, "--output"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v10, :cond_c

    .line 70
    new-instance v6, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 71
    invoke-interface {v10}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot output both to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' and \'"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 72
    invoke-virtual {v1, v6}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_3

    :cond_c
    const/4 v6, 0x0

    .line 73
    new-array v7, v6, [Ljava/lang/String;

    invoke-static {v15, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    goto :goto_3

    .line 74
    :cond_d
    const-string v7, "--min-api"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    if-eqz v11, :cond_e

    .line 75
    new-instance v6, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v7, "Cannot set multiple --min-api options"

    invoke-direct {v6, v7, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_3

    .line 76
    :cond_e
    new-instance v6, Lcom/android/tools/r8/J3;

    invoke-direct {v6, v1}, Lcom/android/tools/r8/J3;-><init>(Lcom/android/tools/r8/L8Command$Builder;)V

    new-instance v11, Lcom/android/tools/r8/K3;

    invoke-direct {v11, v1}, Lcom/android/tools/r8/K3;-><init>(Lcom/android/tools/r8/L8Command$Builder;)V

    .line 77
    invoke-static {v6, v7, v15, v0, v11}, Lcom/android/tools/r8/m;->a(Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Ljava/util/function/Consumer;)V

    move-object/from16 v6, p0

    move v11, v2

    goto/16 :goto_5

    .line 78
    :cond_f
    const-string v7, "--lib"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 79
    invoke-static {v1, v0, v15}, Lcom/android/tools/r8/m;->a(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 80
    :cond_10
    const-string v7, "--pg-conf"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x0

    .line 81
    new-array v6, v7, [Ljava/lang/String;

    invoke-static {v15, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    new-array v12, v2, [Ljava/nio/file/Path;

    aput-object v6, v12, v7

    invoke-virtual {v1, v12}, Lcom/android/tools/r8/L8Command$Builder;->addProguardConfigurationFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/L8Command$Builder;

    goto/16 :goto_3

    :cond_11
    const/4 v7, 0x0

    .line 82
    const-string v13, "--pg-map-output"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 83
    new-array v6, v7, [Ljava/lang/String;

    invoke-static {v15, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/L8Command$Builder;->setProguardMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/L8Command$Builder;

    goto/16 :goto_3

    .line 84
    :cond_12
    const-string v13, "--partition-map-output"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 85
    new-array v6, v7, [Ljava/lang/String;

    invoke-static {v15, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setPartitionMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_3

    .line 86
    :cond_13
    const-string v13, "--desugared-lib"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 87
    new-array v6, v7, [Ljava/lang/String;

    invoke-static {v15, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tools/r8/v0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/v0$a;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->addDesugaredLibraryConfiguration(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_3

    .line 88
    :cond_14
    const-string v7, "--classfile"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 89
    sget-object v3, Lcom/android/tools/r8/OutputMode;->ClassFile:Lcom/android/tools/r8/OutputMode;

    goto/16 :goto_3

    .line 90
    :cond_15
    const-string v7, "--art-profile"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x0

    .line 91
    new-array v12, v7, [Ljava/lang/String;

    invoke-static {v15, v12}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v12

    .line 92
    new-array v13, v7, [Ljava/lang/String;

    invoke-static {v6, v13}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    .line 93
    new-instance v7, Lcom/android/tools/r8/internal/t4;

    invoke-direct {v7, v12}, Lcom/android/tools/r8/internal/t4;-><init>(Ljava/nio/file/Path;)V

    .line 94
    new-instance v12, Lcom/android/tools/r8/internal/o4;

    invoke-direct {v12, v6}, Lcom/android/tools/r8/internal/o4;-><init>(Ljava/nio/file/Path;)V

    .line 95
    invoke-virtual {v1, v7, v12}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->addArtProfileForRewriting(Lcom/android/tools/r8/profile/art/ArtProfileProvider;Lcom/android/tools/r8/profile/art/ArtProfileConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_3

    .line 96
    :cond_16
    const-string v6, "--thread-count"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 97
    new-instance v7, Lcom/android/tools/r8/J3;

    invoke-direct {v7, v1}, Lcom/android/tools/r8/J3;-><init>(Lcom/android/tools/r8/L8Command$Builder;)V

    new-instance v12, Lcom/android/tools/r8/L3;

    invoke-direct {v12, v1}, Lcom/android/tools/r8/L3;-><init>(Lcom/android/tools/r8/L8Command$Builder;)V

    .line 98
    invoke-static {v7, v6, v15, v0, v12}, Lcom/android/tools/r8/m;->a(Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Ljava/util/function/Consumer;)V

    goto/16 :goto_3

    .line 99
    :cond_17
    const-string v6, "--"

    invoke-virtual {v12, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    move-object/from16 v6, p0

    .line 100
    invoke-virtual {v6, v1, v0, v12}, Lcom/android/tools/r8/m;->b(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    goto :goto_5

    .line 101
    :cond_18
    invoke-static {v1, v12, v5, v8, v0}, Lcom/android/tools/r8/m;->b(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Ljava/lang/String;[Ljava/lang/String;ILcom/android/tools/r8/origin/Origin;)I

    move-result v7

    if-ltz v7, :cond_19

    goto :goto_4

    .line 102
    :cond_19
    invoke-static {v1, v12, v5, v8, v0}, Lcom/android/tools/r8/m;->a(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Ljava/lang/String;[Ljava/lang/String;ILcom/android/tools/r8/origin/Origin;)I

    move-result v7

    if-ltz v7, :cond_1a

    :goto_4
    add-int/2addr v8, v7

    goto :goto_5

    .line 103
    :cond_1a
    new-instance v7, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown option: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_5

    :cond_1b
    move-object/from16 v6, p0

    const/4 v7, 0x0

    .line 104
    new-array v13, v7, [Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v12

    new-array v13, v2, [Ljava/nio/file/Path;

    aput-object v12, v13, v7

    invoke-virtual {v1, v13}, Lcom/android/tools/r8/BaseCommand$Builder;->addProgramFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;

    :goto_5
    add-int/2addr v8, v2

    goto/16 :goto_0

    .line 105
    :goto_6
    iget-boolean v0, v4, Lcom/android/tools/r8/p$a;->b:Z

    if-nez v0, :cond_1c

    .line 106
    invoke-virtual {v4}, Lcom/android/tools/r8/p$a;->a()Lcom/android/tools/r8/p;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->addClasspathResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    :cond_1c
    if-eqz v9, :cond_1d

    .line 107
    invoke-virtual {v1, v9}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    :cond_1d
    if-nez v10, :cond_1e

    const/4 v0, 0x0

    .line 108
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v13, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    .line 109
    :cond_1e
    invoke-virtual {v1, v10, v3}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/L8Command$Builder;

    return-object v0
.end method
