.class public Lcom/android/tools/r8/o0;
.super Lcom/android/tools/r8/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/m;"
    }
.end annotation


# static fields
.field public static final b:Lcom/android/tools/r8/internal/QC;

.field public static final c:Lcom/android/tools/r8/internal/QC;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const-string v13, "--startup-profile"

    const-string v14, "--thread-count"

    const-string v0, "--feature"

    const-string v1, "--android-resources"

    const-string v2, "--main-dex-list-output"

    const-string v3, "--pg-conf"

    const-string v4, "--pg-conf-output"

    const-string v5, "--pg-map"

    const-string v6, "--pg-map-output"

    const-string v7, "--partition-map-output"

    const-string v8, "--desugared-lib"

    const-string v9, "--desugared-lib-pg-conf-output"

    const-string v10, "--map-id-template"

    const-string v11, "--source-file-template"

    const-string v12, "--art-profile"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v21

    const-string v19, "--main-dex-rules"

    const-string v20, "--main-dex-list"

    const-string v15, "--output"

    const-string v16, "--lib"

    const-string v17, "--classpath"

    const-string v18, "--min-api"

    invoke-static/range {v15 .. v21}, Lcom/android/tools/r8/internal/QC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/o0;->b:Lcom/android/tools/r8/internal/QC;

    const-string v0, "--feature"

    const-string v1, "--android-resources"

    const-string v2, "--art-profile"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v1, v0}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/o0;->c:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/m;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/k0;Lcom/android/tools/r8/R8Command$Builder;ZLcom/android/tools/r8/FeatureSplit$Builder;)Lcom/android/tools/r8/FeatureSplit;
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/android/tools/r8/k0;->d:Ljava/nio/file/Path;

    if-eqz v0, :cond_0

    .line 222
    sget-object v1, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p2}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->a(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;Z)Lcom/android/tools/r8/S;

    move-result-object p1

    .line 224
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/FeatureSplit$Builder;->setProgramConsumer(Lcom/android/tools/r8/ProgramConsumer;)Lcom/android/tools/r8/FeatureSplit$Builder;

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/nio/file/Path;

    .line 226
    invoke-static {v2, v0}, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->fromArchive(Ljava/nio/file/Path;Z)Lcom/android/tools/r8/utils/ArchiveResourceProvider;

    move-result-object v2

    .line 227
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/FeatureSplit$Builder;->addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/FeatureSplit$Builder;

    goto :goto_0

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/k0;->b:Ljava/nio/file/Path;

    if-eqz p1, :cond_2

    .line 229
    new-instance p2, Lcom/android/tools/r8/ArchiveProtoAndroidResourceProvider;

    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    iget-object v1, p0, Lcom/android/tools/r8/k0;->b:Ljava/nio/file/Path;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/ArchiveProtoAndroidResourceProvider;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/FeatureSplit$Builder;->setAndroidResourceProvider(Lcom/android/tools/r8/AndroidResourceProvider;)Lcom/android/tools/r8/FeatureSplit$Builder;

    .line 230
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/k0;->c:Ljava/nio/file/Path;

    if-eqz p1, :cond_3

    .line 231
    new-instance p2, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;

    iget-object p0, p0, Lcom/android/tools/r8/k0;->b:Ljava/nio/file/Path;

    invoke-direct {p2, p1, p0}, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/FeatureSplit$Builder;->setAndroidResourceConsumer(Lcom/android/tools/r8/AndroidResourceConsumer;)Lcom/android/tools/r8/FeatureSplit$Builder;

    .line 232
    :cond_3
    invoke-virtual {p3}, Lcom/android/tools/r8/FeatureSplit$Builder;->build()Lcom/android/tools/r8/FeatureSplit;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1

    .line 84
    new-instance v0, Lcom/android/tools/r8/o0;

    invoke-direct {v0}, Lcom/android/tools/r8/o0;-><init>()V

    invoke-static {p2}, Lcom/android/tools/r8/R8Command;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/tools/r8/o0;->a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/R8Command$Builder;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;)Lcom/android/tools/r8/ResourceShrinkerConfiguration;
    .locals 0

    .line 218
    invoke-virtual {p0}, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;->enableOptimizedShrinkingWithR8()Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;->build()Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/android/tools/r8/internal/hC;
    .locals 11

    .line 1
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 3
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Lcom/android/tools/r8/Y;->b(Z)Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Lcom/android/tools/r8/Y;->a(Z)Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/android/tools/r8/Y;->b()Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 7
    const-string v1, "Compile program to Java classfile format."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 8
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "--classfile"

    invoke-static {v3, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 10
    const-string v1, "Output result in <file>."

    const-string v3, "<file> must be an existing directory or a zip file."

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 11
    const-string v3, "<file>"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--output"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 13
    const-string v1, "Add <file|jdk-home> as a library resource."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 14
    const-string v4, "<file|jdk-home>"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--lib"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 16
    const-string v1, "Add <file> as a classpath resource."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--classpath"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/android/tools/r8/Y;->e()Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Compile with R8 in Proguard compatibility mode."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--pg-compat"

    invoke-static {v4, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 22
    const-string v1, "Proguard configuration <file>."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--pg-conf"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Output the collective configuration to <file>."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--pg-conf-output"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Use <file> as a mapping file for distribution and composition with output mapping file."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--pg-map"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 29
    const-string v1, "Output the resulting name and line mapping to <file>."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--pg-map-output"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 32
    const-string v1, "Output the resulting mapping to <file>."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--partition-map-output"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 35
    const-string v1, "Specify desugared library configuration."

    const-string v4, "<file> is a desugared library configuration (json)."

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--desugared-lib"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Output the Proguard configuration for L8 to <file>."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--desugared-lib-pg-conf-output"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Force disable tree shaking of unreachable classes."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--no-tree-shaking"

    invoke-static {v4, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Force disable minification of names."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--no-minification"

    invoke-static {v4, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Ignore all data resources."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--no-data-resources"

    invoke-static {v4, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Force disable desugaring."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--no-desugaring"

    invoke-static {v4, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 48
    const-string v1, "Proguard keep rules for classes to place in the"

    const-string v4, "primary dex file."

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--main-dex-rules"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 51
    const-string v1, "List of classes to place in the primary dex file."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "--main-dex-list"

    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Add android resource input and output to be used in resource shrinking. Both "

    const-string v4, "input and output must be specified."

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v4, "<input>"

    const-string v5, "<output>"

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v7, "--android-resources"

    invoke-static {v7, v6, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "linux/mac, ; on windows. It is possible to supply resource only features by "

    const-string v6, " using an empty string for <input> and <output>, e.g. --feature :in.ap_ :out.ap_"

    const-string v7, "Add feature <input> file to <output> file. Several "

    const-string v8, "occurrences can map to the same output. If <res-input> and <res-output> are "

    const-string v9, "specified use these as resource shrinker input and output. Separator is : on "

    filled-new-array {v7, v8, v9, v1, v6}, [Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v6, "<input>[:|;<res-input>]"

    const-string v7, "<output>[:|;<res-output>]"

    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v7, "--feature"

    invoke-static {v7, v6, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 58
    const-string v1, "Specifies that the application is using isolated splits, i.e., if split APKs installed for this application are loaded into their own Context objects."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v6, "--isolated-splits"

    invoke-static {v6, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Output the full main-dex list in <file>."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v7, "--main-dex-list-output"

    invoke-static {v7, v6, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/android/tools/r8/Y;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 64
    const-string v1, "If not specified the number will be based on"

    const-string v6, "heuristics taking the number of cores into account."

    const-string v7, "Use <number> of threads for compilation."

    filled-new-array {v7, v1, v6}, [Ljava/lang/String;

    move-result-object v1

    .line 65
    const-string v6, "<number>"

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v7, "--thread-count"

    invoke-static {v7, v6, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/android/tools/r8/Y;->d()Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Set the map-id to <template>."

    const-string v6, "The <template> can reference the variables:"

    const-string v7, "  %MAP_HASH: compiler generated mapping hash."

    filled-new-array {v1, v6, v7}, [Ljava/lang/String;

    move-result-object v1

    .line 68
    const-string v8, "<template>"

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v10, "--map-id-template"

    invoke-static {v10, v9, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Set all source-file attributes to <template>"

    const-string v9, "  %MAP_ID: map id (e.g., value of --map-id-template)."

    filled-new-array {v1, v6, v9, v7}, [Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v7, "--source-file-template"

    invoke-static {v7, v6, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 72
    const-string v1, "Compile as a platform build where the runtime/bootclasspath"

    const-string v6, "is assumed to be the version specified by --min-api."

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v6, "--android-platform-build"

    invoke-static {v6, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 75
    const-string v1, "Rewrite human readable ART profile read from <input> and write to <output>."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "--art-profile"

    invoke-static {v4, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 78
    const-string v1, "Startup profile <file> to use for dex layout."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "--startup-profile"

    invoke-static {v3, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 81
    const-string v1, "r8"

    invoke-static {v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;)Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 82
    invoke-static {}, Lcom/android/tools/r8/Y;->c()Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/R8Command$Builder;Ljava/util/ArrayList;Z)V
    .locals 4

    .line 219
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/k0;

    .line 220
    new-instance v3, Lcom/android/tools/r8/X3;

    invoke-direct {v3, v2, p0, p2}, Lcom/android/tools/r8/X3;-><init>(Lcom/android/tools/r8/k0;Lcom/android/tools/r8/R8Command$Builder;Z)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/R8Command$Builder;->addFeatureSplit(Ljava/util/function/Function;)Lcom/android/tools/r8/R8Command$Builder;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/R8Command$Builder;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1

    .line 85
    new-instance v0, Lcom/android/tools/r8/m0;

    invoke-direct {v0}, Lcom/android/tools/r8/m0;-><init>()V

    .line 86
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/o0;->a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/R8Command$Builder;Lcom/android/tools/r8/m0;)V

    .line 87
    iget-object p1, v0, Lcom/android/tools/r8/m0;->a:Lcom/android/tools/r8/CompilationMode;

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    .line 89
    :cond_0
    iget-object p1, v0, Lcom/android/tools/r8/m0;->c:Ljava/nio/file/Path;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string p2, "."

    invoke-static {p2, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 90
    :goto_0
    iget-object p2, v0, Lcom/android/tools/r8/m0;->b:Lcom/android/tools/r8/OutputMode;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    .line 91
    :goto_1
    iget-boolean v0, v0, Lcom/android/tools/r8/m0;->e:Z

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/tools/r8/R8Command$Builder;->setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;Z)Lcom/android/tools/r8/R8Command$Builder;

    const/4 p1, 0x1

    .line 92
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/R8Command$Builder;->setEnableExperimentalMissingLibraryApiModeling(Z)Lcom/android/tools/r8/R8Command$Builder;

    return-object p3
.end method

.method public final a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/R8Command$Builder;Lcom/android/tools/r8/m0;)V
    .locals 11

    const/4 v0, 0x1

    .line 93
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/T3;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/T3;-><init>(Lcom/android/tools/r8/R8Command$Builder;)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/tx;->a([Ljava/lang/String;Ljava/util/function/Consumer;)[Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance v1, Lcom/android/tools/r8/l0;

    invoke-direct {v1}, Lcom/android/tools/r8/l0;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 95
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_33

    .line 96
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 97
    sget-object v5, Lcom/android/tools/r8/o0;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    add-int/lit8 v5, v3, 0x1

    .line 98
    array-length v7, p1

    const-string v8, "."

    const-string v9, "Missing parameter for "

    if-ge v5, v7, :cond_2

    .line 99
    aget-object v7, p1, v5

    .line 100
    sget-object v10, Lcom/android/tools/r8/o0;->c:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    add-int/lit8 v5, v3, 0x2

    .line 101
    array-length v6, p1

    if-ge v5, v6, :cond_1

    .line 102
    aget-object v6, p1, v5

    :cond_0
    move v3, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 103
    :cond_1
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    aget-object p1, p1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_4

    .line 104
    :cond_2
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    aget-object p1, p1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_4

    :cond_3
    move-object v5, v6

    .line 105
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_3

    .line 106
    :cond_4
    const-string v7, "--help"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 107
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->setPrintHelp(Z)Lcom/android/tools/r8/BaseCommand$Builder;

    goto/16 :goto_3

    .line 108
    :cond_5
    const-string v7, "--version"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 109
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->setPrintVersion(Z)Lcom/android/tools/r8/BaseCommand$Builder;

    goto/16 :goto_3

    .line 110
    :cond_6
    const-string v7, "--debug"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "Cannot compile in both --debug and --release mode."

    if-eqz v7, :cond_8

    .line 111
    iget-object v4, p4, Lcom/android/tools/r8/m0;->a:Lcom/android/tools/r8/CompilationMode;

    sget-object v5, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    if-ne v4, v5, :cond_7

    .line 112
    new-instance v4, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {v4, v8, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p3, v4}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 113
    :cond_7
    sget-object v4, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    iput-object v4, p4, Lcom/android/tools/r8/m0;->a:Lcom/android/tools/r8/CompilationMode;

    goto/16 :goto_3

    .line 114
    :cond_8
    const-string v7, "--release"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 115
    iget-object v4, p4, Lcom/android/tools/r8/m0;->a:Lcom/android/tools/r8/CompilationMode;

    sget-object v5, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    if-ne v4, v5, :cond_9

    .line 116
    new-instance v4, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {v4, v8, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p3, v4}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 117
    :cond_9
    sget-object v4, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    iput-object v4, p4, Lcom/android/tools/r8/m0;->a:Lcom/android/tools/r8/CompilationMode;

    goto/16 :goto_3

    .line 118
    :cond_a
    const-string v7, "--pg-compat"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 119
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/R8Command$Builder;->setProguardCompatibility(Z)Lcom/android/tools/r8/R8Command$Builder;

    goto/16 :goto_3

    .line 120
    :cond_b
    const-string v7, "--dex"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "Cannot compile in both --dex and --classfile output mode."

    if-eqz v7, :cond_d

    .line 121
    iget-object v4, p4, Lcom/android/tools/r8/m0;->b:Lcom/android/tools/r8/OutputMode;

    sget-object v5, Lcom/android/tools/r8/OutputMode;->ClassFile:Lcom/android/tools/r8/OutputMode;

    if-ne v4, v5, :cond_c

    .line 122
    new-instance v4, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {v4, v8, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p3, v4}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 123
    :cond_c
    sget-object v4, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    iput-object v4, p4, Lcom/android/tools/r8/m0;->b:Lcom/android/tools/r8/OutputMode;

    goto/16 :goto_3

    .line 124
    :cond_d
    const-string v7, "--classfile"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 125
    iget-object v4, p4, Lcom/android/tools/r8/m0;->b:Lcom/android/tools/r8/OutputMode;

    sget-object v5, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    if-ne v4, v5, :cond_e

    .line 126
    new-instance v4, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {v4, v8, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p3, v4}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 127
    :cond_e
    sget-object v4, Lcom/android/tools/r8/OutputMode;->ClassFile:Lcom/android/tools/r8/OutputMode;

    iput-object v4, p4, Lcom/android/tools/r8/m0;->b:Lcom/android/tools/r8/OutputMode;

    goto/16 :goto_3

    .line 128
    :cond_f
    const-string v7, "--output"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 129
    iget-object v4, p4, Lcom/android/tools/r8/m0;->c:Ljava/nio/file/Path;

    if-eqz v4, :cond_10

    .line 130
    new-instance v4, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object v5, p4, Lcom/android/tools/r8/m0;->c:Ljava/nio/file/Path;

    .line 131
    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot output both to \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' and \'"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 132
    invoke-virtual {p3, v4}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 133
    :cond_10
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    iput-object v4, p4, Lcom/android/tools/r8/m0;->c:Ljava/nio/file/Path;

    goto/16 :goto_3

    .line 134
    :cond_11
    const-string v7, "--lib"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 135
    invoke-static {p3, p2, v6}, Lcom/android/tools/r8/m;->a(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 136
    :cond_12
    const-string v7, "--classpath"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 137
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    new-array v5, v0, [Ljava/nio/file/Path;

    aput-object v4, v5, v2

    invoke-virtual {p3, v5}, Lcom/android/tools/r8/BaseCommand$Builder;->addClasspathFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;

    goto/16 :goto_3

    .line 138
    :cond_13
    const-string v7, "--min-api"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 139
    iget-boolean v4, p4, Lcom/android/tools/r8/m0;->d:Z

    if-eqz v4, :cond_14

    .line 140
    new-instance v4, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v5, "Cannot set multiple --min-api options"

    invoke-direct {v4, v5, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p3, v4}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_3

    .line 141
    :cond_14
    new-instance v4, Lcom/android/tools/r8/T3;

    invoke-direct {v4, p3}, Lcom/android/tools/r8/T3;-><init>(Lcom/android/tools/r8/R8Command$Builder;)V

    new-instance v5, Lcom/android/tools/r8/U3;

    invoke-direct {v5, p3}, Lcom/android/tools/r8/U3;-><init>(Lcom/android/tools/r8/R8Command$Builder;)V

    .line 142
    invoke-static {v4, v7, v6, p2, v5}, Lcom/android/tools/r8/m;->a(Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Ljava/util/function/Consumer;)V

    .line 143
    iput-boolean v0, p4, Lcom/android/tools/r8/m0;->d:Z

    goto/16 :goto_3

    .line 144
    :cond_15
    const-string v7, "--thread-count"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 145
    new-instance v4, Lcom/android/tools/r8/T3;

    invoke-direct {v4, p3}, Lcom/android/tools/r8/T3;-><init>(Lcom/android/tools/r8/R8Command$Builder;)V

    new-instance v5, Lcom/android/tools/r8/V3;

    invoke-direct {v5, p3}, Lcom/android/tools/r8/V3;-><init>(Lcom/android/tools/r8/R8Command$Builder;)V

    .line 146
    invoke-static {v4, v7, v6, p2, v5}, Lcom/android/tools/r8/m;->a(Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Ljava/util/function/Consumer;)V

    goto/16 :goto_3

    .line 147
    :cond_16
    const-string v7, "--no-tree-shaking"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 148
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/R8Command$Builder;->setDisableTreeShaking(Z)Lcom/android/tools/r8/R8Command$Builder;

    goto/16 :goto_3

    .line 149
    :cond_17
    const-string v7, "--no-minification"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 150
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/R8Command$Builder;->setDisableMinification(Z)Lcom/android/tools/r8/R8Command$Builder;

    goto/16 :goto_3

    .line 151
    :cond_18
    const-string v7, "--no-desugaring"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 152
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setDisableDesugaring(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_3

    .line 153
    :cond_19
    const-string v7, "--main-dex-rules"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 154
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    new-array v5, v0, [Ljava/nio/file/Path;

    aput-object v4, v5, v2

    invoke-virtual {p3, v5}, Lcom/android/tools/r8/R8Command$Builder;->addMainDexRulesFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/R8Command$Builder;

    goto/16 :goto_3

    .line 155
    :cond_1a
    const-string v7, "--android-resources"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 156
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 157
    new-array v6, v2, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 158
    new-instance v6, Lcom/android/tools/r8/ArchiveProtoAndroidResourceProvider;

    invoke-direct {v6, v4}, Lcom/android/tools/r8/ArchiveProtoAndroidResourceProvider;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {p3, v6}, Lcom/android/tools/r8/R8Command$Builder;->setAndroidResourceProvider(Lcom/android/tools/r8/AndroidResourceProvider;)Lcom/android/tools/r8/R8Command$Builder;

    .line 159
    new-instance v6, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;

    invoke-direct {v6, v5, v4}, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    invoke-virtual {p3, v6}, Lcom/android/tools/r8/R8Command$Builder;->setAndroidResourceConsumer(Lcom/android/tools/r8/AndroidResourceConsumer;)Lcom/android/tools/r8/R8Command$Builder;

    .line 160
    new-instance v4, Lcom/android/tools/r8/W3;

    invoke-direct {v4}, Lcom/android/tools/r8/W3;-><init>()V

    invoke-virtual {p3, v4}, Lcom/android/tools/r8/R8Command$Builder;->setResourceShrinkerConfiguration(Ljava/util/function/Function;)Lcom/android/tools/r8/R8Command$Builder;

    goto/16 :goto_3

    .line 161
    :cond_1b
    const-string v7, "--feature"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 162
    invoke-virtual {v1, v6, v5}, Lcom/android/tools/r8/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 163
    :cond_1c
    const-string v7, "--isolated-splits"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 164
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/R8Command$Builder;->setEnableIsolatedSplits(Z)Lcom/android/tools/r8/R8Command$Builder;

    goto/16 :goto_3

    .line 165
    :cond_1d
    const-string v7, "--main-dex-list"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 166
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    new-array v5, v0, [Ljava/nio/file/Path;

    aput-object v4, v5, v2

    invoke-virtual {p3, v5}, Lcom/android/tools/r8/BaseCommand$Builder;->addMainDexListFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;

    goto/16 :goto_3

    .line 167
    :cond_1e
    const-string v7, "--main-dex-list-output"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 168
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMainDexListOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_3

    .line 169
    :cond_1f
    const-string v7, "--optimize-multidex-for-linearalloc"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 170
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setOptimizeMultidexForLinearAlloc(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_3

    .line 171
    :cond_20
    const-string v7, "--pg-conf"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 172
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    new-array v5, v0, [Ljava/nio/file/Path;

    aput-object v4, v5, v2

    invoke-virtual {p3, v5}, Lcom/android/tools/r8/R8Command$Builder;->addProguardConfigurationFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/R8Command$Builder;

    goto/16 :goto_3

    .line 173
    :cond_21
    const-string v7, "--pg-conf-output"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 174
    new-instance v4, Lcom/android/tools/r8/StringConsumer$FileConsumer;

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {v6, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;)V

    .line 175
    invoke-virtual {p3, v4}, Lcom/android/tools/r8/R8Command$Builder;->setProguardConfigurationConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/R8Command$Builder;

    goto/16 :goto_3

    .line 176
    :cond_22
    const-string v7, "--pg-map"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 177
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/tools/r8/R8Command$Builder;->setProguardMapInputFile(Ljava/nio/file/Path;)Lcom/android/tools/r8/R8Command$Builder;

    goto/16 :goto_3

    .line 178
    :cond_23
    const-string v7, "--pg-map-output"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 179
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/tools/r8/R8Command$Builder;->setProguardMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/R8Command$Builder;

    goto/16 :goto_3

    .line 180
    :cond_24
    const-string v7, "--partition-map-output"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 181
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setPartitionMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_3

    .line 182
    :cond_25
    const-string v7, "--desugared-lib"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 183
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/v0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/v0$a;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->addDesugaredLibraryConfiguration(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_3

    .line 184
    :cond_26
    const-string v7, "--desugared-lib-pg-conf-output"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 185
    new-instance v4, Lcom/android/tools/r8/StringConsumer$FileConsumer;

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {v6, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;)V

    .line 186
    invoke-virtual {p3, v4}, Lcom/android/tools/r8/R8Command$Builder;->setDesugaredLibraryKeepRuleConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/R8Command$Builder;

    goto/16 :goto_3

    .line 187
    :cond_27
    const-string v7, "--no-data-resources"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 188
    iput-boolean v2, p4, Lcom/android/tools/r8/m0;->e:Z

    goto/16 :goto_3

    .line 189
    :cond_28
    const-string v7, "--map-id-template"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 190
    invoke-virtual {p3}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/tools/r8/internal/PU;->a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/MapIdProvider;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMapIdProvider(Lcom/android/tools/r8/MapIdProvider;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_3

    .line 191
    :cond_29
    const-string v7, "--source-file-template"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 192
    invoke-virtual {p3}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/tools/r8/internal/pn0;->a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/SourceFileProvider;

    move-result-object v4

    .line 193
    invoke-virtual {p3, v4}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setSourceFileProvider(Lcom/android/tools/r8/SourceFileProvider;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_3

    .line 194
    :cond_2a
    const-string v7, "--android-platform-build"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 195
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setAndroidPlatformBuild(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_3

    .line 196
    :cond_2b
    const-string v7, "--art-profile"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 197
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 198
    new-array v6, v2, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 199
    new-instance v6, Lcom/android/tools/r8/internal/t4;

    invoke-direct {v6, v4}, Lcom/android/tools/r8/internal/t4;-><init>(Ljava/nio/file/Path;)V

    .line 200
    new-instance v4, Lcom/android/tools/r8/internal/o4;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/o4;-><init>(Ljava/nio/file/Path;)V

    .line 201
    invoke-virtual {p3, v6, v4}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->addArtProfileForRewriting(Lcom/android/tools/r8/profile/art/ArtProfileProvider;Lcom/android/tools/r8/profile/art/ArtProfileConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto/16 :goto_3

    .line 202
    :cond_2c
    const-string v5, "--startup-profile"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 203
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 204
    invoke-static {v4}, Lcom/android/tools/r8/internal/xo0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/startup/StartupProfileProvider;

    move-result-object v4

    new-array v5, v0, [Lcom/android/tools/r8/startup/StartupProfileProvider;

    aput-object v4, v5, v2

    .line 205
    invoke-virtual {p3, v5}, Lcom/android/tools/r8/R8Command$Builder;->addStartupProfileProviders([Lcom/android/tools/r8/startup/StartupProfileProvider;)Lcom/android/tools/r8/R8Command$Builder;

    goto :goto_3

    .line 206
    :cond_2d
    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 207
    invoke-virtual {p0, p3, p2, v4}, Lcom/android/tools/r8/m;->b(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    goto :goto_3

    .line 208
    :cond_2e
    invoke-static {p3, v4, p1, v3, p2}, Lcom/android/tools/r8/m;->b(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Ljava/lang/String;[Ljava/lang/String;ILcom/android/tools/r8/origin/Origin;)I

    move-result v5

    if-ltz v5, :cond_2f

    goto :goto_2

    .line 209
    :cond_2f
    invoke-static {p3, v4, p1, v3, p2}, Lcom/android/tools/r8/m;->a(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Ljava/lang/String;[Ljava/lang/String;ILcom/android/tools/r8/origin/Origin;)I

    move-result v5

    if-ltz v5, :cond_30

    :goto_2
    add-int/2addr v3, v5

    goto :goto_3

    .line 210
    :cond_30
    new-instance v5, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p3, v5}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_3

    .line 211
    :cond_31
    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 212
    new-instance v4, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v5, "Recursive @argfiles are not supported: "

    invoke-direct {v4, v5, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p3, v4}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_3

    .line 213
    :cond_32
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    new-array v5, v0, [Ljava/nio/file/Path;

    aput-object v4, v5, v2

    invoke-virtual {p3, v5}, Lcom/android/tools/r8/BaseCommand$Builder;->addProgramFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;

    :goto_3
    add-int/2addr v3, v0

    goto/16 :goto_0

    .line 214
    :cond_33
    :goto_4
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, v1, Lcom/android/tools/r8/l0;->a:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    iget-object p2, v1, Lcom/android/tools/r8/l0;->b:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 216
    iget-boolean p2, p4, Lcom/android/tools/r8/m0;->e:Z

    .line 217
    invoke-static {p3, p1, p2}, Lcom/android/tools/r8/o0;->a(Lcom/android/tools/r8/R8Command$Builder;Ljava/util/ArrayList;Z)V

    return-void
.end method
