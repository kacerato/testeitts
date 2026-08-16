.class public final Lcom/android/tools/r8/q;
.super Lcom/android/tools/r8/m;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/QC;

.field public static final c:Lcom/android/tools/r8/internal/Tm0;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v9, "--art-profile"

    const-string v10, "--startup-profile"

    const-string v0, "--pg-map-output"

    const-string v1, "--partition-map-output"

    const-string v2, "--min-api"

    const-string v3, "--main-dex-rules"

    const-string v4, "--main-dex-list"

    const-string v5, "--main-dex-list-output"

    const-string v6, "--desugared-lib"

    const-string v7, "--desugared-lib-pg-conf-output"

    const-string v8, "--thread-count"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v17

    const-string v15, "--classpath"

    const-string v16, "--pg-map"

    const-string v11, "--output"

    const-string v12, "--globals"

    const-string v13, "--globals-output"

    const-string v14, "--lib"

    invoke-static/range {v11 .. v17}, Lcom/android/tools/r8/internal/QC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/q;->b:Lcom/android/tools/r8/internal/QC;

    new-instance v0, Lcom/android/tools/r8/internal/Tm0;

    const-string v1, "--art-profile"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/tools/r8/q;->c:Lcom/android/tools/r8/internal/Tm0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/m;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/hC;
    .locals 6

    .line 1
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 3
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Lcom/android/tools/r8/Y;->a(Z)Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Lcom/android/tools/r8/Y;->b(Z)Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 6
    const-string v1, "Output result in <file>."

    const-string v2, "<file> must be an existing directory or a zip file."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 7
    const-string v2, "<file>"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--output"

    invoke-static {v4, v3, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 9
    const-string v1, "The <file> may be either a zip-archive of global synthetics or the"

    const-string v3, "global-synthetic files directly."

    const-string v4, "Global synthetics <file> from a previous intermediate compilation."

    filled-new-array {v4, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--globals"

    invoke-static {v4, v3, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 12
    const-string v1, "Output global synthetics in <file>."

    const-string v3, "<file> must be an existing directory or a non-existent zip archive."

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--globals-output"

    invoke-static {v4, v3, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 15
    const-string v1, "Add <file|jdk-home> as a library resource."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 16
    const-string v3, "<file|jdk-home>"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--lib"

    invoke-static {v4, v3, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 18
    const-string v1, "Add <file> as a classpath resource."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--classpath"

    invoke-static {v4, v3, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/android/tools/r8/Y;->e()Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Use <file> as a mapping file for distribution."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--pg-map"

    invoke-static {v4, v3, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Compile an intermediate result intended for later"

    const-string v3, "merging."

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 24
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--intermediate"

    invoke-static {v4, v3, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Produce a separate dex file per class."

    const-string v4, "Synthetic classes are in their own file."

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--file-per-class"

    invoke-static {v4, v3, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Produce a separate dex file per input .class file."

    const-string v4, "Synthetic classes are with their originating class."

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--file-per-class-file"

    invoke-static {v4, v3, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Force disable desugaring."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--no-desugaring"

    invoke-static {v4, v3, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 32
    const-string v1, "Specify desugared library configuration."

    const-string v4, "<file> is a desugared library configuration (json)."

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--desugared-lib"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Output the Proguard configuration for L8 to <file>."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--desugared-lib-pg-conf-output"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 37
    const-string v1, "Proguard keep rules for classes to place in the"

    const-string v4, "primary dex file."

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--main-dex-rules"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 40
    const-string v1, "List of classes to place in the primary dex file."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--main-dex-list"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 43
    const-string v1, "Output resulting main dex list in <file>."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--main-dex-list-output"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/android/tools/r8/Y;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 47
    const-string v1, "If not specified the number will be based on"

    const-string v4, "heuristics taking the number of cores into account."

    const-string v5, "Use <number> of threads for compilation."

    filled-new-array {v5, v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v4, "<number>"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--thread-count"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/android/tools/r8/Y;->d()Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 51
    const-string v1, "Compile as a platform build where the runtime/bootclasspath"

    const-string v4, "is assumed to be the version specified by --min-api."

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--android-platform-build"

    invoke-static {v4, v3, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 54
    const-string v1, "Rewrite human readable ART profile read from <input> and write to <output>."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string v3, "<input>"

    const-string v4, "<output>"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--art-profile"

    invoke-static {v4, v3, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 57
    const-string v1, "Startup profile <file> to use for dex layout."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "--startup-profile"

    invoke-static {v3, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 60
    const-string v1, "d8"

    invoke-static {v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;)Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/android/tools/r8/Y;->c()Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/D8Command$Builder;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 17

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    .line 63
    invoke-static {}, Lcom/android/tools/r8/p;->a()Lcom/android/tools/r8/p$a;

    move-result-object v4

    .line 64
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/Z3;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/Z3;-><init>(Lcom/android/tools/r8/D8Command$Builder;)V

    move-object/from16 v5, p1

    invoke-static {v5, v0}, Lcom/android/tools/r8/internal/tx;->a([Ljava/lang/String;Ljava/util/function/Consumer;)[Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 65
    :goto_0
    array-length v13, v5

    const-string v14, "."

    if-ge v0, v13, :cond_1

    .line 66
    aget-object v13, v5, v0

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 67
    sget-object v15, Lcom/android/tools/r8/q;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v15, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    add-int/lit8 v15, v0, 0x1

    .line 68
    array-length v6, v5

    const-string v7, "Missing parameter for "

    if-ge v15, v6, :cond_3

    .line 69
    aget-object v6, v5, v15

    .line 70
    sget-object v3, Lcom/android/tools/r8/q;->c:Lcom/android/tools/r8/internal/Tm0;

    .line 71
    iget-object v3, v3, Lcom/android/tools/r8/internal/Tm0;->d:Ljava/lang/Object;

    .line 72
    invoke-virtual {v3, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v0, 0x2

    .line 73
    array-length v15, v5

    if-ge v3, v15, :cond_0

    .line 74
    aget-object v0, v5, v3

    move v15, v3

    goto :goto_2

    .line 75
    :cond_0
    new-instance v3, Lcom/android/tools/r8/utils/StringDiagnostic;

    aget-object v0, v5, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    :cond_1
    :goto_1
    move-object/from16 v3, p0

    move-object/from16 v16, v9

    goto/16 :goto_11

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 76
    :cond_3
    new-instance v3, Lcom/android/tools/r8/utils/StringDiagnostic;

    aget-object v0, v5, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_1

    :cond_4
    move v15, v0

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 77
    :goto_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    :goto_3
    move-object/from16 v3, p0

    move-object/from16 v16, v9

    :goto_4
    const/4 v7, 0x1

    goto/16 :goto_f

    .line 78
    :cond_5
    const-string v3, "--help"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    .line 79
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCommand$Builder;->setPrintHelp(Z)Lcom/android/tools/r8/BaseCommand$Builder;

    :goto_5
    move v7, v3

    move-object/from16 v16, v9

    :goto_6
    move-object/from16 v3, p0

    goto/16 :goto_f

    :cond_6
    const/4 v3, 0x1

    .line 80
    const-string v7, "--version"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 81
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCommand$Builder;->setPrintVersion(Z)Lcom/android/tools/r8/BaseCommand$Builder;

    goto :goto_5

    .line 82
    :cond_7
    const-string v3, "--debug"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "Cannot compile in both --debug and --release mode."

    if-eqz v3, :cond_9

    .line 83
    sget-object v0, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    if-ne v8, v0, :cond_8

    .line 84
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {v0, v7, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_3

    .line 85
    :cond_8
    sget-object v8, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    :goto_7
    move-object/from16 v3, p0

    :goto_8
    const/4 v7, 0x1

    goto/16 :goto_10

    .line 86
    :cond_9
    const-string v3, "--release"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 87
    sget-object v0, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    if-ne v8, v0, :cond_a

    .line 88
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {v0, v7, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_3

    .line 89
    :cond_a
    sget-object v8, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    goto :goto_7

    .line 90
    :cond_b
    const-string v3, "--file-per-class"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 91
    sget-object v11, Lcom/android/tools/r8/OutputMode;->DexFilePerClass:Lcom/android/tools/r8/OutputMode;

    goto :goto_7

    .line 92
    :cond_c
    const-string v3, "--file-per-class-file"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 93
    sget-object v11, Lcom/android/tools/r8/OutputMode;->DexFilePerClassFile:Lcom/android/tools/r8/OutputMode;

    goto :goto_7

    .line 94
    :cond_d
    const-string v3, "--classfile"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 95
    sget-object v11, Lcom/android/tools/r8/OutputMode;->ClassFile:Lcom/android/tools/r8/OutputMode;

    goto :goto_7

    .line 96
    :cond_e
    const-string v3, "--pg-map"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    .line 97
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/D8Command$Builder;->setProguardMapInputFile(Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;

    goto/16 :goto_3

    :cond_f
    const/4 v3, 0x0

    .line 98
    const-string v7, "--pg-map-output"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 99
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/D8Command$Builder;->setProguardMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;

    goto/16 :goto_3

    .line 100
    :cond_10
    const-string v7, "--partition-map-output"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 101
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/D8Command$Builder;->setPartitionMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;

    goto/16 :goto_3

    .line 102
    :cond_11
    const-string v3, "--output"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "\'"

    const-string v14, "\' and \'"

    if-eqz v3, :cond_13

    if-eqz v9, :cond_12

    .line 103
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 104
    invoke-interface {v9}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v9

    const-string v9, "Cannot output both to \'"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 105
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    :goto_9
    move-object/from16 v3, p0

    goto/16 :goto_4

    :cond_12
    const/4 v3, 0x0

    .line 106
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v9

    goto/16 :goto_7

    :cond_13
    move-object/from16 v16, v9

    const/4 v3, 0x0

    .line 107
    const-string v9, "--globals"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 108
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/nio/file/Path;

    aput-object v0, v7, v3

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/D8Command$Builder;->addGlobalSyntheticsFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;

    goto :goto_9

    .line 109
    :cond_14
    const-string v3, "--globals-output"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz v10, :cond_15

    .line 110
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 111
    invoke-interface {v10}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot output globals both to \'"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 112
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_9

    :cond_15
    const/4 v3, 0x0

    .line 113
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    move-object/from16 v3, p0

    :goto_a
    move-object/from16 v9, v16

    goto/16 :goto_8

    :cond_16
    const/4 v3, 0x0

    .line 114
    const-string v7, "--lib"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 115
    invoke-static {v2, v1, v6}, Lcom/android/tools/r8/m;->a(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)V

    goto :goto_9

    .line 116
    :cond_17
    const-string v7, "--classpath"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 117
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    .line 118
    :try_start_0
    new-array v0, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 119
    invoke-interface {v6}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v3, ".apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, ".jar"

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, ".zip"

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_b

    :cond_18
    const/4 v3, 0x0

    .line 123
    new-array v0, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 124
    invoke-static {v6}, Lcom/android/tools/r8/DirectoryClassFileProvider;->fromDirectory(Ljava/nio/file/Path;)Lcom/android/tools/r8/ClassFileResourceProvider;

    move-result-object v0

    .line 125
    invoke-virtual {v4, v0}, Lcom/android/tools/r8/p$a;->a(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/p$a;

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto :goto_c

    .line 126
    :cond_19
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v3, "Unsupported classpath file type"

    new-instance v7, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v7, v6}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {v0, v3, v7}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_9

    .line 127
    :cond_1a
    :goto_b
    new-instance v0, Lcom/android/tools/r8/ArchiveClassFileProvider;

    invoke-direct {v0, v6}, Lcom/android/tools/r8/ArchiveClassFileProvider;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/p$a;->a(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/p$a;

    goto/16 :goto_9

    .line 128
    :cond_1b
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_c
    new-instance v3, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    new-instance v7, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v7, v6}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {v3, v0, v7}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_9

    .line 130
    :cond_1c
    const-string v3, "--main-dex-rules"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x0

    .line 131
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v7, 0x1

    new-array v6, v7, [Ljava/nio/file/Path;

    aput-object v0, v6, v3

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/D8Command$Builder;->addMainDexRulesFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;

    goto/16 :goto_6

    :cond_1d
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 132
    const-string v9, "--main-dex-list"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 133
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v6, v7, [Ljava/nio/file/Path;

    aput-object v0, v6, v3

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/BaseCommand$Builder;->addMainDexListFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;

    goto/16 :goto_9

    .line 134
    :cond_1e
    const-string v7, "--main-dex-list-output"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 135
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMainDexListOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_9

    .line 136
    :cond_1f
    const-string v3, "--optimize-multidex-for-linearalloc"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    .line 137
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setOptimizeMultidexForLinearAlloc(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    :goto_d
    move v7, v3

    goto/16 :goto_6

    .line 138
    :cond_20
    const-string v3, "--min-api"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    if-eqz v12, :cond_21

    .line 139
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v3, "Cannot set multiple --min-api options"

    invoke-direct {v0, v3, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_9

    .line 140
    :cond_21
    new-instance v0, Lcom/android/tools/r8/Z3;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/Z3;-><init>(Lcom/android/tools/r8/D8Command$Builder;)V

    new-instance v7, Lcom/android/tools/r8/a4;

    invoke-direct {v7, v2}, Lcom/android/tools/r8/a4;-><init>(Lcom/android/tools/r8/D8Command$Builder;)V

    .line 141
    invoke-static {v0, v3, v6, v1, v7}, Lcom/android/tools/r8/m;->a(Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Ljava/util/function/Consumer;)V

    move-object/from16 v3, p0

    move-object/from16 v9, v16

    const/4 v7, 0x1

    const/4 v12, 0x1

    goto/16 :goto_10

    .line 142
    :cond_22
    const-string v3, "--thread-count"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 143
    new-instance v0, Lcom/android/tools/r8/Z3;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/Z3;-><init>(Lcom/android/tools/r8/D8Command$Builder;)V

    new-instance v7, Lcom/android/tools/r8/b4;

    invoke-direct {v7, v2}, Lcom/android/tools/r8/b4;-><init>(Lcom/android/tools/r8/D8Command$Builder;)V

    .line 144
    invoke-static {v0, v3, v6, v1, v7}, Lcom/android/tools/r8/m;->a(Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Ljava/util/function/Consumer;)V

    goto/16 :goto_9

    .line 145
    :cond_23
    const-string v3, "--intermediate"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v3, 0x1

    .line 146
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/D8Command$Builder;->setIntermediate(Z)Lcom/android/tools/r8/D8Command$Builder;

    goto :goto_d

    :cond_24
    const/4 v3, 0x1

    .line 147
    const-string v7, "--no-desugaring"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 148
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setDisableDesugaring(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto :goto_d

    .line 149
    :cond_25
    const-string v3, "--desugared-lib"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    .line 150
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/v0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/v0$a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->addDesugaredLibraryConfiguration(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_9

    :cond_26
    const/4 v3, 0x0

    .line 151
    const-string v7, "--desugared-lib-pg-conf-output"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 152
    new-instance v0, Lcom/android/tools/r8/StringConsumer$FileConsumer;

    new-array v7, v3, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;)V

    .line 153
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/D8Command$Builder;->setDesugaredLibraryKeepRuleConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/D8Command$Builder;

    goto/16 :goto_9

    .line 154
    :cond_27
    const-string v3, "--android-platform-build"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    .line 155
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setAndroidPlatformBuild(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_d

    .line 156
    :cond_28
    const-string v3, "--art-profile"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x0

    .line 157
    new-array v7, v3, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    .line 158
    new-array v7, v3, [Ljava/lang/String;

    invoke-static {v0, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 159
    new-instance v7, Lcom/android/tools/r8/internal/t4;

    invoke-direct {v7, v6}, Lcom/android/tools/r8/internal/t4;-><init>(Ljava/nio/file/Path;)V

    .line 160
    new-instance v6, Lcom/android/tools/r8/internal/o4;

    invoke-direct {v6, v0}, Lcom/android/tools/r8/internal/o4;-><init>(Ljava/nio/file/Path;)V

    .line 161
    invoke-virtual {v2, v7, v6}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->addArtProfileForRewriting(Lcom/android/tools/r8/profile/art/ArtProfileProvider;Lcom/android/tools/r8/profile/art/ArtProfileConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_9

    :cond_29
    const/4 v3, 0x0

    .line 162
    const-string v0, "--startup-profile"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 163
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/android/tools/r8/internal/xo0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/startup/StartupProfileProvider;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Lcom/android/tools/r8/startup/StartupProfileProvider;

    aput-object v0, v7, v3

    .line 165
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/D8Command$Builder;->addStartupProfileProviders([Lcom/android/tools/r8/startup/StartupProfileProvider;)Lcom/android/tools/r8/D8Command$Builder;

    goto/16 :goto_9

    .line 166
    :cond_2a
    const-string v0, "--"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move-object/from16 v3, p0

    .line 167
    invoke-virtual {v3, v2, v1, v13}, Lcom/android/tools/r8/m;->b(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto/16 :goto_4

    .line 168
    :cond_2b
    invoke-static {v2, v13, v5, v15, v1}, Lcom/android/tools/r8/m;->b(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Ljava/lang/String;[Ljava/lang/String;ILcom/android/tools/r8/origin/Origin;)I

    move-result v0

    if-ltz v0, :cond_2c

    goto :goto_e

    .line 169
    :cond_2c
    invoke-static {v2, v13, v5, v15, v1}, Lcom/android/tools/r8/m;->a(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Ljava/lang/String;[Ljava/lang/String;ILcom/android/tools/r8/origin/Origin;)I

    move-result v0

    if-ltz v0, :cond_2d

    :goto_e
    add-int/2addr v15, v0

    goto/16 :goto_a

    .line 170
    :cond_2d
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_4

    :cond_2e
    move-object/from16 v3, p0

    .line 171
    const-string v0, "@"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 172
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v6, "Recursive @argfiles are not supported: "

    invoke-direct {v0, v6, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_4

    :cond_2f
    const/4 v6, 0x0

    .line 173
    new-array v0, v6, [Ljava/lang/String;

    invoke-static {v13, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/nio/file/Path;

    aput-object v0, v9, v6

    invoke-virtual {v2, v9}, Lcom/android/tools/r8/BaseCommand$Builder;->addProgramFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;

    :goto_f
    move-object/from16 v9, v16

    :goto_10
    add-int/lit8 v0, v15, 0x1

    move v3, v7

    goto/16 :goto_0

    .line 174
    :goto_11
    iget-boolean v0, v4, Lcom/android/tools/r8/p$a;->b:Z

    if-nez v0, :cond_30

    .line 175
    invoke-virtual {v4}, Lcom/android/tools/r8/p$a;->a()Lcom/android/tools/r8/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/D8Command$Builder;->addClasspathResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/D8Command$Builder;

    :cond_30
    if-eqz v8, :cond_31

    .line 176
    invoke-virtual {v2, v8}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    :cond_31
    if-nez v11, :cond_32

    .line 177
    sget-object v11, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    :cond_32
    if-nez v16, :cond_33

    const/4 v1, 0x0

    .line 178
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v14, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v9

    goto :goto_12

    :cond_33
    move-object/from16 v9, v16

    :goto_12
    if-eqz v10, :cond_34

    .line 179
    invoke-virtual {v2, v10}, Lcom/android/tools/r8/D8Command$Builder;->setGlobalSyntheticsOutput(Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;

    .line 180
    :cond_34
    invoke-virtual {v2, v9, v11}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/D8Command$Builder;

    return-object v0
.end method
