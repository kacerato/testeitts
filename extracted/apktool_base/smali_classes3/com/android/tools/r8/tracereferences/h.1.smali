.class public final Lcom/android/tools/r8/tracereferences/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/QC;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "--source"

    const-string v1, "--output"

    const-string v2, "--lib"

    const-string v3, "--target"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v1, v0}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/tracereferences/h;->a:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public static a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 17

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 35
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/tracereferences/Q;

    invoke-direct {v0, v8}, Lcom/android/tools/r8/tracereferences/Q;-><init>(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;)V

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/tx;->a([Ljava/lang/String;Ljava/util/function/Consumer;)[Ljava/lang/String;

    move-result-object v11

    .line 36
    array-length v0, v11

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v1, "Missing command"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Lcom/android/tools/r8/Diagnostic;)V

    return-object v8

    :cond_0
    const/4 v12, 0x0

    move v0, v9

    move v13, v0

    move v15, v13

    move-object v14, v12

    .line 38
    :goto_0
    array-length v1, v11

    const/4 v2, 0x2

    if-ge v0, v1, :cond_15

    .line 39
    aget-object v1, v11, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 40
    sget-object v1, Lcom/android/tools/r8/tracereferences/h;->a:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 41
    array-length v3, v11

    if-ge v1, v3, :cond_1

    .line 42
    aget-object v0, v11, v1

    move/from16 v16, v1

    goto :goto_1

    .line 43
    :cond_1
    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    aget-object v0, v11, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing parameter for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v7}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_4

    :cond_2
    move/from16 v16, v0

    move-object v0, v12

    .line 44
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_3

    .line 45
    :cond_3
    const-string v1, "--help"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 46
    invoke-virtual {v8, v10}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->setPrintHelp(Z)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    return-object v8

    .line 47
    :cond_4
    const-string v1, "--version"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 48
    invoke-virtual {v8, v10}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->setPrintVersion(Z)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    return-object v8

    .line 49
    :cond_5
    const-string v1, "--check"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "Multiple commands specified"

    if-eqz v1, :cond_7

    if-eqz v13, :cond_6

    .line 50
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {v0, v3, v7}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Lcom/android/tools/r8/Diagnostic;)V

    :cond_6
    move v13, v10

    goto/16 :goto_3

    .line 51
    :cond_7
    const-string v1, "--keep-rules"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v13, :cond_8

    .line 52
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {v0, v3, v7}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Lcom/android/tools/r8/Diagnostic;)V

    :cond_8
    move v13, v2

    goto/16 :goto_3

    .line 53
    :cond_9
    const-string v1, "--allowobfuscation"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v15, v10

    goto/16 :goto_3

    .line 54
    :cond_a
    const-string v1, "--lib"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 55
    new-array v1, v9, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 56
    const-string v1, "lib"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    const-string v3, "jrt-fs.jar"

    invoke-interface {v2, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 57
    new-array v3, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_2

    .line 58
    :cond_b
    const-string v2, "jre"

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    const-string v3, "rt.jar"

    invoke-interface {v2, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 59
    new-array v4, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_2

    .line 60
    :cond_c
    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 61
    new-array v2, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 62
    :goto_2
    :try_start_0
    invoke-static {v0}, Lcom/android/tools/r8/JdkClassFileProvider;->fromJdkHome(Ljava/nio/file/Path;)Lcom/android/tools/r8/ClassFileResourceProvider;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->addLibraryResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v1, v0, v7}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_3

    .line 64
    :cond_d
    new-array v1, v10, [Ljava/nio/file/Path;

    aput-object v0, v1, v9

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->addLibraryFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    goto/16 :goto_3

    .line 65
    :cond_e
    const-string v1, "--target"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 66
    new-array v1, v9, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v10, [Ljava/nio/file/Path;

    aput-object v0, v1, v9

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->addTargetFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    goto/16 :goto_3

    .line 67
    :cond_f
    const-string v1, "--source"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 68
    new-array v1, v9, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v10, [Ljava/nio/file/Path;

    aput-object v0, v1, v9

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->addSourceFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    goto :goto_3

    .line 69
    :cond_10
    const-string v1, "--output"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v14, :cond_11

    .line 70
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v1, "Option \'--output\' passed multiple times."

    invoke-direct {v0, v1, v7}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_3

    .line 71
    :cond_11
    new-array v1, v9, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v14

    goto :goto_3

    .line 72
    :cond_12
    const-string v0, "@"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 73
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v1, "Recursive @argfiles are not supported: "

    invoke-direct {v0, v1, v7}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_3

    .line 74
    :cond_13
    new-instance v1, Lcom/android/tools/r8/tracereferences/Q;

    invoke-direct {v1, v8}, Lcom/android/tools/r8/tracereferences/Q;-><init>(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v2

    move-object v3, v6

    move-object v4, v11

    move/from16 v5, v16

    move-object v0, v6

    move-object/from16 v6, p1

    .line 75
    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/m;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/Ef0;Ljava/lang/String;[Ljava/lang/String;ILcom/android/tools/r8/origin/Origin;)I

    move-result v1

    if-ltz v1, :cond_14

    add-int v16, v16, v1

    goto :goto_3

    .line 76
    :cond_14
    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported option \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v7}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Lcom/android/tools/r8/Diagnostic;)V

    :goto_3
    add-int/lit8 v0, v16, 0x1

    goto/16 :goto_0

    :cond_15
    :goto_4
    if-nez v13, :cond_16

    .line 77
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v1, "Missing command, specify one of \'check\' or \'--keep-rules\'"

    invoke-direct {v0, v1, v7}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Lcom/android/tools/r8/Diagnostic;)V

    return-object v8

    :cond_16
    if-ne v13, v10, :cond_17

    if-eqz v14, :cond_17

    .line 78
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v1, "Using \'--output\' requires command \'--keep-rules\'"

    invoke-direct {v0, v1, v7}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Lcom/android/tools/r8/Diagnostic;)V

    return-object v8

    :cond_17
    if-eq v13, v2, :cond_18

    if-eqz v15, :cond_18

    .line 79
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v1, "Using \'--allowobfuscation\' requires command \'--keep-rules\'"

    invoke-direct {v0, v1, v7}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Lcom/android/tools/r8/Diagnostic;)V

    return-object v8

    .line 80
    :cond_18
    invoke-static {v13}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    if-eqz v0, :cond_1b

    if-ne v0, v10, :cond_1a

    .line 81
    new-instance v0, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;

    .line 82
    invoke-static {}, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;->builder()Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;->setAllowObfuscation(Z)Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;

    move-result-object v1

    if-eqz v14, :cond_19

    .line 84
    new-instance v2, Lcom/android/tools/r8/StringConsumer$FileConsumer;

    invoke-direct {v2, v14}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;)V

    goto :goto_5

    .line 85
    :cond_19
    new-instance v2, Lcom/android/tools/r8/u0;

    new-instance v3, Ljava/io/PrintWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v12, v3}, Lcom/android/tools/r8/u0;-><init>(Lcom/android/tools/r8/origin/PathOrigin;Ljava/io/Writer;)V

    .line 86
    :goto_5
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;->setOutputConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;->build()Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;-><init>(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;)V

    .line 88
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->setConsumer(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    goto :goto_6

    .line 89
    :cond_1a
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0

    .line 90
    :cond_1b
    new-instance v0, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;

    .line 91
    invoke-static {}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->emptyConsumer()Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;-><init>(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;)V

    .line 92
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->setConsumer(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    :goto_6
    return-object v8
.end method

.method public static a()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    const-string v1, "Usage: tracereferences <command> [<options>] [@<argfile>]"

    const-string v2, " Where <command> is one of:"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/android/tools/r8/ParseFlagPrinter;

    invoke-direct {v1}, Lcom/android/tools/r8/ParseFlagPrinter;-><init>()V

    .line 4
    const-string v2, "Run emitting only diagnostics messages."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 5
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "--check"

    invoke-static {v4, v3, v2}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v2

    .line 6
    const-string v4, "Traced references will be output in the keep-rules"

    const-string v5, "format."

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 7
    const-string v5, "[<keep-rules-options>]"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v6, "--keep-rules"

    invoke-static {v6, v5, v4}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v4

    .line 8
    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/ParseFlagPrinter;->addFlags(Ljava/util/List;)Lcom/android/tools/r8/ParseFlagPrinter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ParseFlagPrinter;->appendLinesToBuilder(Ljava/lang/StringBuilder;)V

    .line 10
    const-string v1, " and each <argfile> is a file containing additional options (one per line)"

    const-string v2, " and options are:"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/android/tools/r8/ParseFlagPrinter;

    invoke-direct {v1}, Lcom/android/tools/r8/ParseFlagPrinter;-><init>()V

    .line 12
    new-instance v2, Lcom/android/tools/r8/internal/eC;

    .line 13
    invoke-direct {v2}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 14
    const-string v4, "Add <file|jdk-home> runtime library."

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 15
    const-string v5, "<file|jdk-home>"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v6, "--lib"

    invoke-static {v6, v5, v4}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v4

    .line 16
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    const-string v4, "Add <file> as a source for tracing references."

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 17
    const-string v5, "<file>"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v7, "--source"

    invoke-static {v7, v6, v4}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v4

    .line 18
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    const-string v4, "outside of library are treated as a missing"

    const-string v6, "references."

    const-string v7, "Add <file> as a target for tracing references. When"

    const-string v8, "target is not specified all references from source"

    filled-new-array {v7, v8, v4, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v7, "--target"

    invoke-static {v7, v6, v4}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v4

    .line 20
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    const-string v4, "Output result in <outfile>. If not passed the"

    const-string v6, "result will go to standard out."

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v6, "--output"

    invoke-static {v6, v5, v4}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v4

    .line 22
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 23
    invoke-static {}, Lcom/android/tools/r8/Y;->d()Lcom/android/tools/r8/Y;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 24
    const-string v4, "tracereferences"

    invoke-static {v4}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;)Lcom/android/tools/r8/Y;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 25
    invoke-static {}, Lcom/android/tools/r8/Y;->c()Lcom/android/tools/r8/Y;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/ParseFlagPrinter;->addFlags(Ljava/util/List;)Lcom/android/tools/r8/ParseFlagPrinter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ParseFlagPrinter;->appendLinesToBuilder(Ljava/lang/StringBuilder;)V

    .line 28
    const-string v1, " and <keep-rule-options> are:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/android/tools/r8/ParseFlagPrinter;

    invoke-direct {v1}, Lcom/android/tools/r8/ParseFlagPrinter;-><init>()V

    .line 30
    const-string v2, "Output keep rules with the allowobfuscation"

    const-string v4, "modifier (defaults to rules without the modifier)"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "--allowobfuscation"

    invoke-static {v4, v3, v2}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v2

    .line 32
    new-instance v3, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/ParseFlagPrinter;->addFlags(Ljava/util/List;)Lcom/android/tools/r8/ParseFlagPrinter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ParseFlagPrinter;->appendLinesToBuilder(Ljava/lang/StringBuilder;)V

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
