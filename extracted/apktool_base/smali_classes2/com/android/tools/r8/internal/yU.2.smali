.class public Lcom/android/tools/r8/internal/yU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/internal/AU;

.field public final c:Lcom/android/tools/r8/internal/zU;

.field public final d:Lcom/android/tools/r8/internal/Ef0;

.field public final e:Z

.field public final f:I

.field public g:Lcom/android/tools/r8/origin/Origin;

.field public h:Lcom/android/tools/r8/internal/gL;

.field public i:Lcom/android/tools/r8/internal/VB;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yU;->a:Lcom/android/tools/r8/graph/u1;

    new-instance v0, Lcom/android/tools/r8/internal/AU;

    new-instance v1, Lcom/android/tools/r8/internal/sA1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/sA1;-><init>(Lcom/android/tools/r8/internal/yU;)V

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/AU;-><init>(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    new-instance v0, Lcom/android/tools/r8/internal/zU;

    new-instance v1, Lcom/android/tools/r8/internal/sA1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/sA1;-><init>(Lcom/android/tools/r8/internal/yU;)V

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/zU;-><init>(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/yU;->c:Lcom/android/tools/r8/internal/zU;

    iput-object p2, p0, Lcom/android/tools/r8/internal/yU;->d:Lcom/android/tools/r8/internal/Ef0;

    iput p4, p0, Lcom/android/tools/r8/internal/yU;->f:I

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/yU;->e:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/UB;Ljava/util/Map$Entry;)V
    .locals 1

    .line 40
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/UB;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;
    .locals 5

    const/4 v0, 0x1

    .line 466
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/tools/r8/internal/yU;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    .line 468
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 469
    iget-object v2, p0, Lcom/android/tools/r8/internal/yU;->i:Lcom/android/tools/r8/internal/VB;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 470
    iget-object p1, p0, Lcom/android/tools/r8/internal/yU;->a:Lcom/android/tools/r8/graph/u1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    .line 471
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/yU;->d:Lcom/android/tools/r8/internal/Ef0;

    .line 472
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid desugared library specification: Missing package mapping for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 473
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Ef0;->b(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/bL;)Lcom/android/tools/r8/internal/Yj;
    .locals 8

    const/4 v0, 0x2

    .line 453
    const-string v1, "derived method"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/bL;ILjava/lang/String;)V

    .line 454
    iget-object v0, p1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 455
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v0

    .line 456
    iget-object v2, p0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    const/4 v2, 0x1

    .line 458
    iget-object p1, p1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dL;

    .line 459
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 460
    new-instance p1, Lcom/android/tools/r8/internal/Yj;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Yj;-><init>(Lcom/android/tools/r8/graph/A2;)V

    return-object p1

    .line 461
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/Yj;

    const/4 v3, 0x4

    .line 462
    invoke-static {v3}, Lcom/android/tools/r8/c;->c(I)[I

    move-result-object v3

    .line 463
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    .line 464
    invoke-static {v6}, Lcom/android/tools/r8/internal/DU;->a(I)I

    move-result v7

    if-ne v7, p1, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 465
    :cond_2
    :goto_1
    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/Yj;-><init>(ILcom/android/tools/r8/graph/A2;)V

    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;
    .locals 3

    .line 49
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 50
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object p1, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dL;

    return-object p1

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/yU;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid desugared library configuration. Expected required key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/internal/yU;->g:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v0, p2, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 54
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Lcom/android/tools/r8/internal/gL;)Lcom/android/tools/r8/internal/xU;
    .locals 9

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/internal/yU;->g:Lcom/android/tools/r8/origin/Origin;

    .line 2
    iput-object p3, p0, Lcom/android/tools/r8/internal/yU;->h:Lcom/android/tools/r8/internal/gL;

    .line 3
    const-string v0, "configuration_format_version"

    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result p3

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-lt p3, v1, :cond_1

    if-gt p3, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/yU;->h:Lcom/android/tools/r8/internal/gL;

    const-string p3, "identifier"

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/yU;->h:Lcom/android/tools/r8/internal/gL;

    .line 6
    const-string p3, "synthesized_library_classes_package_prefix"

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object p1, p0, Lcom/android/tools/r8/internal/yU;->h:Lcom/android/tools/r8/internal/gL;

    .line 8
    const-string p3, "required_compilation_api_level"

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result p1

    .line 9
    iget-object p3, p0, Lcom/android/tools/r8/internal/yU;->h:Lcom/android/tools/r8/internal/gL;

    const-string v1, "shrinker_config"

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object p3

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/yU;->h:Lcom/android/tools/r8/internal/gL;

    const-string v2, "support_all_callbacks_from_library"

    .line 11
    iget-object v1, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 12
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/dL;

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->a()Z

    move-result v6

    .line 14
    new-instance v8, Lcom/android/tools/r8/internal/EU;

    .line 15
    invoke-static {p1}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object v2

    .line 16
    sget p1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 17
    new-instance v7, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v7, p3}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    move-object v1, v8

    move-object v5, p2

    .line 18
    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/EU;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yU;->a()V

    .line 20
    sget-boolean p1, Lcom/android/tools/r8/internal/CU;->s:Z

    .line 21
    new-instance p1, Lcom/android/tools/r8/internal/BU;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/BU;-><init>()V

    .line 22
    iget-object p2, p0, Lcom/android/tools/r8/internal/yU;->h:Lcom/android/tools/r8/internal/gL;

    const-string p3, "common_flags"

    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p2

    .line 23
    iget-object p3, p0, Lcom/android/tools/r8/internal/yU;->h:Lcom/android/tools/r8/internal/gL;

    const-string v1, "library_flags"

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p3

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/yU;->h:Lcom/android/tools/r8/internal/gL;

    const-string v2, "program_flags"

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v1

    .line 25
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/bL;Lcom/android/tools/r8/internal/BU;)V

    .line 26
    iget-boolean p2, p0, Lcom/android/tools/r8/internal/yU;->e:Z

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p2

    .line 27
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/bL;Lcom/android/tools/r8/internal/BU;)V

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/BU;->a()Lcom/android/tools/r8/internal/CU;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/android/tools/r8/internal/xU;

    iget-boolean p3, p0, Lcom/android/tools/r8/internal/yU;->e:Z

    invoke-direct {p2, p3, v8, p1}, Lcom/android/tools/r8/internal/xU;-><init>(ZLcom/android/tools/r8/internal/EU;Lcom/android/tools/r8/internal/CU;)V

    .line 30
    iput-object v0, p0, Lcom/android/tools/r8/internal/yU;->g:Lcom/android/tools/r8/origin/Origin;

    return-object p2

    .line 31
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/yU;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance p3, Lcom/android/tools/r8/errors/UnsupportedDesugaredLibraryConfigurationVersionDiagnostic;

    invoke-direct {p3, p1}, Lcom/android/tools/r8/errors/UnsupportedDesugaredLibraryConfigurationVersionDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    .line 32
    invoke-virtual {p2, v0, p3}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 33
    iget-object p1, p2, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public a(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/internal/xU;
    .locals 3

    .line 41
    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/yU;->g:Lcom/android/tools/r8/origin/Origin;

    .line 42
    sget-boolean v1, Lcom/android/tools/r8/internal/yU;->j:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 43
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/android/tools/r8/v0;->a()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/android/tools/r8/internal/iL;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/yU;->h:Lcom/android/tools/r8/internal/gL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    iget-object v1, p0, Lcom/android/tools/r8/internal/yU;->g:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Lcom/android/tools/r8/internal/gL;)Lcom/android/tools/r8/internal/xU;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/yU;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    iget-object v2, p0, Lcom/android/tools/r8/internal/yU;->g:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v1, p1, v2}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 48
    iget-object p1, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final a()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/yU;->h:Lcom/android/tools/r8/internal/gL;

    const-string v1, "package_map"

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/android/tools/r8/internal/UB;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/UB;-><init>()V

    .line 36
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 37
    new-instance v2, Lcom/android/tools/r8/internal/rA1;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/rA1;-><init>(Lcom/android/tools/r8/internal/UB;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 38
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/UB;->c()Lcom/android/tools/r8/internal/VB;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/android/tools/r8/internal/yU;->i:Lcom/android/tools/r8/internal/VB;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/bL;ILjava/lang/String;)V
    .locals 2

    .line 55
    iget-object v0, p1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/yU;->d:Lcom/android/tools/r8/internal/Ef0;

    .line 58
    iget-object p1, p1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid desugared library specification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "(Json array of size "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ef0;->b(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/bL;Lcom/android/tools/r8/internal/BU;)V
    .locals 6

    .line 61
    iget-object p1, p1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_2

    .line 63
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/internal/dL;

    .line 64
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v2

    .line 65
    const-string v3, "api_level_below_or_equal"

    invoke-virtual {p0, v2, v3}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result v3

    .line 66
    iget v4, p0, Lcom/android/tools/r8/internal/yU;->f:I

    if-gt v4, v3, :cond_0

    .line 67
    iget-object v3, v2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "api_level_greater_or_equal"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    iget v3, p0, Lcom/android/tools/r8/internal/yU;->f:I

    .line 69
    iget-object v5, v2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    .line 70
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 71
    invoke-virtual {p0, v2, p2}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/BU;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0, v2, p2}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/BU;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/BU;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 73
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 74
    const-string v4, "rewrite_type"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 76
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v3

    .line 77
    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 78
    check-cast v3, Lcom/android/tools/r8/internal/AS;

    .line 79
    iget-object v3, v3, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 80
    iget-object v4, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 81
    iget v5, v3, Lcom/android/tools/r8/internal/FS;->f:I

    .line 82
    :goto_0
    iget-object v6, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v6, :cond_2

    if-eq v4, v6, :cond_1

    .line 83
    iget v6, v3, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v6, v5, :cond_0

    .line 84
    iget-object v6, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 85
    iget-object v7, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 86
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/yU;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 87
    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 88
    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/yU;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 89
    invoke-virtual {v2, v7, v4}, Lcom/android/tools/r8/internal/BU;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    move-object v4, v6

    goto :goto_0

    .line 90
    :cond_0
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 91
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 92
    :cond_2
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "maintain_type"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 93
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 94
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v3

    .line 95
    iget-object v3, v3, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_5

    .line 96
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/dL;

    .line 97
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/yU;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 98
    sget-boolean v8, Lcom/android/tools/r8/internal/BU;->s:Z

    if-nez v8, :cond_4

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 99
    :cond_4
    :goto_2
    iget-object v8, v2, Lcom/android/tools/r8/internal/BU;->b:Lcom/android/tools/r8/internal/IC;

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    goto :goto_1

    .line 100
    :cond_5
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "rewrite_derived_type_only"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 101
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 102
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v3

    .line 103
    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 104
    check-cast v3, Lcom/android/tools/r8/internal/AS;

    .line 105
    iget-object v3, v3, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 106
    iget-object v4, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 107
    iget v6, v3, Lcom/android/tools/r8/internal/FS;->f:I

    .line 108
    :goto_3
    iget-object v7, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v7, :cond_8

    if-eq v4, v7, :cond_7

    .line 109
    iget v7, v3, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v7, v6, :cond_6

    .line 110
    iget-object v7, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 111
    iget-object v8, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 112
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/yU;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 113
    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 114
    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/yU;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 115
    iget-object v9, v2, Lcom/android/tools/r8/internal/BU;->c:Ljava/util/IdentityHashMap;

    .line 116
    invoke-virtual {v9, v8, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v7

    goto :goto_3

    .line 117
    :cond_6
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 118
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 119
    :cond_8
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "static_field_retarget"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 120
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 121
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v3

    .line 122
    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 123
    check-cast v3, Lcom/android/tools/r8/internal/AS;

    .line 124
    iget-object v3, v3, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 125
    iget-object v4, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 126
    iget v6, v3, Lcom/android/tools/r8/internal/FS;->f:I

    .line 127
    :goto_4
    iget-object v7, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v7, :cond_b

    if-eq v4, v7, :cond_a

    .line 128
    iget v7, v3, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v7, v6, :cond_9

    .line 129
    iget-object v7, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 130
    iget-object v8, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 131
    check-cast v8, Ljava/lang/String;

    .line 132
    iget-object v9, v0, Lcom/android/tools/r8/internal/yU;->c:Lcom/android/tools/r8/internal/zU;

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/o;->b(Ljava/lang/String;)V

    .line 133
    iget-object v8, v0, Lcom/android/tools/r8/internal/yU;->c:Lcom/android/tools/r8/internal/zU;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/FA;->a()Lcom/android/tools/r8/graph/l1;

    move-result-object v8

    .line 134
    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 135
    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    .line 136
    iget-object v9, v0, Lcom/android/tools/r8/internal/yU;->c:Lcom/android/tools/r8/internal/zU;

    invoke-virtual {v9, v4}, Lcom/android/tools/r8/internal/o;->b(Ljava/lang/String;)V

    .line 137
    iget-object v4, v0, Lcom/android/tools/r8/internal/yU;->c:Lcom/android/tools/r8/internal/zU;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/FA;->a()Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    .line 138
    iget-object v9, v2, Lcom/android/tools/r8/internal/BU;->d:Lcom/android/tools/r8/internal/kC;

    .line 139
    invoke-virtual {v9, v8, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-object v4, v7

    goto :goto_4

    .line 140
    :cond_9
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 141
    :cond_a
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 142
    :cond_b
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "covariant_retarget"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 143
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 144
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v3

    .line 145
    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 146
    check-cast v3, Lcom/android/tools/r8/internal/AS;

    .line 147
    iget-object v3, v3, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 148
    iget-object v4, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 149
    iget v6, v3, Lcom/android/tools/r8/internal/FS;->f:I

    .line 150
    :goto_5
    iget-object v7, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v7, :cond_e

    if-eq v4, v7, :cond_d

    .line 151
    iget v7, v3, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v7, v6, :cond_c

    .line 152
    iget-object v7, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 153
    iget-object v8, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 154
    check-cast v8, Ljava/lang/String;

    .line 155
    iget-object v9, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 156
    iget-object v8, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 157
    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 158
    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    .line 159
    iget-object v9, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v9, v4}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 160
    iget-object v4, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 161
    iget-object v9, v2, Lcom/android/tools/r8/internal/BU;->e:Lcom/android/tools/r8/internal/kC;

    .line 162
    invoke-virtual {v9, v8, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-object v4, v7

    goto :goto_5

    .line 163
    :cond_c
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 164
    :cond_d
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 165
    :cond_e
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "static_retarget"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 166
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 167
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v3

    .line 168
    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 169
    check-cast v3, Lcom/android/tools/r8/internal/AS;

    .line 170
    iget-object v3, v3, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 171
    iget-object v4, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 172
    iget v6, v3, Lcom/android/tools/r8/internal/FS;->f:I

    .line 173
    :goto_6
    iget-object v7, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v7, :cond_11

    if-eq v4, v7, :cond_10

    .line 174
    iget v7, v3, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v7, v6, :cond_f

    .line 175
    iget-object v7, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 176
    iget-object v8, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 177
    check-cast v8, Ljava/lang/String;

    .line 178
    iget-object v9, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 179
    iget-object v8, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 180
    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 181
    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    .line 182
    iget-object v9, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v9, v4}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 183
    iget-object v4, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 184
    iget-object v9, v2, Lcom/android/tools/r8/internal/BU;->f:Lcom/android/tools/r8/internal/kC;

    .line 185
    invoke-virtual {v9, v8, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-object v4, v7

    goto :goto_6

    .line 186
    :cond_f
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 187
    :cond_10
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 188
    :cond_11
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "non_emulated_virtual_retarget"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 189
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 190
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v3

    .line 191
    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 192
    check-cast v3, Lcom/android/tools/r8/internal/AS;

    .line 193
    iget-object v3, v3, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 194
    iget-object v4, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 195
    iget v6, v3, Lcom/android/tools/r8/internal/FS;->f:I

    .line 196
    :goto_7
    iget-object v7, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v7, :cond_14

    if-eq v4, v7, :cond_13

    .line 197
    iget v7, v3, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v7, v6, :cond_12

    .line 198
    iget-object v7, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 199
    iget-object v8, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 200
    check-cast v8, Ljava/lang/String;

    .line 201
    iget-object v9, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 202
    iget-object v8, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 203
    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 204
    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    .line 205
    iget-object v9, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v9, v4}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 206
    iget-object v4, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 207
    iget-object v9, v2, Lcom/android/tools/r8/internal/BU;->g:Lcom/android/tools/r8/internal/kC;

    .line 208
    invoke-virtual {v9, v8, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-object v4, v7

    goto :goto_7

    .line 209
    :cond_12
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 210
    :cond_13
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 211
    :cond_14
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "emulated_virtual_retarget"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 212
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 213
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v3

    .line 214
    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 215
    check-cast v3, Lcom/android/tools/r8/internal/AS;

    .line 216
    iget-object v3, v3, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 217
    iget-object v4, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 218
    iget v6, v3, Lcom/android/tools/r8/internal/FS;->f:I

    .line 219
    :goto_8
    iget-object v7, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v7, :cond_17

    if-eq v4, v7, :cond_16

    .line 220
    iget v7, v3, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v7, v6, :cond_15

    .line 221
    iget-object v7, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 222
    iget-object v8, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 223
    check-cast v8, Ljava/lang/String;

    .line 224
    iget-object v9, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 225
    iget-object v8, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 226
    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 227
    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/yU;->b(Lcom/android/tools/r8/internal/bL;)Lcom/android/tools/r8/internal/cu;

    move-result-object v4

    .line 228
    iget-object v9, v2, Lcom/android/tools/r8/internal/BU;->h:Lcom/android/tools/r8/internal/kC;

    .line 229
    invoke-virtual {v9, v8, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-object v4, v7

    goto :goto_8

    .line 230
    :cond_15
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 231
    :cond_16
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 232
    :cond_17
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "emulated_virtual_retarget_through_emulated_interface"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 233
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 234
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v3

    .line 235
    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 236
    check-cast v3, Lcom/android/tools/r8/internal/AS;

    .line 237
    iget-object v3, v3, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 238
    iget-object v4, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 239
    iget v6, v3, Lcom/android/tools/r8/internal/FS;->f:I

    .line 240
    :goto_9
    iget-object v7, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v7, :cond_1a

    if-eq v4, v7, :cond_19

    .line 241
    iget v7, v3, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v7, v6, :cond_18

    .line 242
    iget-object v7, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 243
    iget-object v8, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 244
    check-cast v8, Ljava/lang/String;

    .line 245
    iget-object v9, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 246
    iget-object v8, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 247
    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 248
    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    .line 249
    iget-object v9, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v9, v4}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 250
    iget-object v4, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 251
    iget-object v9, v2, Lcom/android/tools/r8/internal/BU;->i:Lcom/android/tools/r8/internal/kC;

    .line 252
    invoke-virtual {v9, v8, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-object v4, v7

    goto :goto_9

    .line 253
    :cond_18
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 254
    :cond_19
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 255
    :cond_1a
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "api_generic_types_conversion"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 256
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 257
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v3

    .line 258
    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 259
    check-cast v3, Lcom/android/tools/r8/internal/AS;

    .line 260
    iget-object v3, v3, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 261
    iget-object v4, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 262
    iget v6, v3, Lcom/android/tools/r8/internal/FS;->f:I

    .line 263
    :goto_a
    iget-object v7, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v7, :cond_1f

    if-eq v4, v7, :cond_1e

    .line 264
    iget v7, v3, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v7, v6, :cond_1d

    .line 265
    iget-object v7, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 266
    iget-object v8, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 267
    check-cast v8, Ljava/lang/String;

    .line 268
    iget-object v9, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 269
    iget-object v8, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 270
    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 271
    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v4

    .line 272
    iget-object v9, v4, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    .line 273
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 274
    new-array v9, v9, [Lcom/android/tools/r8/graph/A2;

    move v10, v5

    .line 275
    :goto_b
    iget-object v11, v4, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_1c

    .line 276
    iget-object v11, v4, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/dL;

    .line 277
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v11

    .line 278
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1b

    const/4 v11, 0x0

    goto :goto_c

    .line 279
    :cond_1b
    iget-object v12, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v12, v11}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 280
    iget-object v11, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v11

    .line 281
    :goto_c
    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 282
    :cond_1c
    iget-object v4, v2, Lcom/android/tools/r8/internal/BU;->j:Lcom/android/tools/r8/internal/kC;

    .line 283
    invoke-virtual {v4, v8, v9}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-object v4, v7

    goto :goto_a

    .line 284
    :cond_1d
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 285
    :cond_1e
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 286
    :cond_1f
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "emulated_interface"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_25

    .line 287
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 288
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v3

    .line 289
    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 290
    check-cast v3, Lcom/android/tools/r8/internal/AS;

    .line 291
    iget-object v3, v3, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 292
    iget-object v4, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 293
    iget v8, v3, Lcom/android/tools/r8/internal/FS;->f:I

    .line 294
    :goto_d
    iget-object v9, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v9, :cond_25

    if-eq v4, v9, :cond_24

    .line 295
    iget v9, v3, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v9, v8, :cond_23

    .line 296
    iget-object v9, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 297
    iget-object v10, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 298
    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/android/tools/r8/internal/yU;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 299
    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 300
    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v4

    .line 301
    const-string v11, "emulated interface descriptor"

    invoke-virtual {v0, v4, v6, v11}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/bL;ILjava/lang/String;)V

    .line 302
    iget-object v11, v4, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/dL;

    .line 303
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/yU;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    .line 304
    iget-object v4, v4, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    .line 305
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v4

    .line 306
    new-instance v12, Ljava/util/IdentityHashMap;

    invoke-direct {v12}, Ljava/util/IdentityHashMap;-><init>()V

    .line 307
    iget-object v4, v4, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 308
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 309
    check-cast v4, Lcom/android/tools/r8/internal/AS;

    .line 310
    iget-object v4, v4, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 311
    iget-object v13, v4, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v13, v13, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 312
    iget v14, v4, Lcom/android/tools/r8/internal/FS;->f:I

    .line 313
    :goto_e
    iget-object v15, v4, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v13, v15, :cond_22

    if-eq v13, v15, :cond_21

    .line 314
    iget v15, v4, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v15, v14, :cond_20

    .line 315
    iget-object v15, v13, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 316
    iget-object v6, v13, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 317
    check-cast v6, Ljava/lang/String;

    .line 318
    iget-object v7, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 319
    iget-object v6, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 320
    iget-object v7, v13, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 321
    check-cast v7, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/yU;->b(Lcom/android/tools/r8/internal/bL;)Lcom/android/tools/r8/internal/cu;

    move-result-object v7

    .line 322
    invoke-virtual {v12, v6, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v15

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto :goto_e

    .line 323
    :cond_20
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 324
    :cond_21
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 325
    :cond_22
    new-instance v4, Lcom/android/tools/r8/internal/eu;

    invoke-direct {v4, v11, v12}, Lcom/android/tools/r8/internal/eu;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/IdentityHashMap;)V

    .line 326
    iget-object v6, v2, Lcom/android/tools/r8/internal/BU;->k:Lcom/android/tools/r8/internal/kC;

    .line 327
    invoke-virtual {v6, v10, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-object v4, v9

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto/16 :goto_d

    .line 328
    :cond_23
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 329
    :cond_24
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 330
    :cond_25
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "wrapper"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 331
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 332
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v3

    .line 333
    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 334
    check-cast v3, Lcom/android/tools/r8/internal/AS;

    .line 335
    iget-object v3, v3, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 336
    iget-object v4, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 337
    iget v6, v3, Lcom/android/tools/r8/internal/FS;->f:I

    .line 338
    :goto_f
    iget-object v7, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v7, :cond_2a

    if-eq v4, v7, :cond_29

    .line 339
    iget v7, v3, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v7, v6, :cond_28

    .line 340
    iget-object v7, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 341
    iget-object v8, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 342
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/yU;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 343
    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 344
    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v4

    .line 345
    iget-object v9, v4, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    .line 346
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/dL;

    .line 347
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v9

    .line 348
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 349
    iget-object v9, v9, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    .line 350
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v5

    :goto_10
    if-ge v12, v11, :cond_26

    .line 351
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/tools/r8/internal/dL;

    .line 352
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v13

    .line 353
    iget-object v14, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v14, v13}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 354
    iget-object v13, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v13

    .line 355
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 356
    :cond_26
    iget-object v9, v4, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/dL;

    .line 357
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/dL;->a()Z

    move-result v9

    .line 358
    iget-object v4, v4, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    .line 359
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v4

    .line 360
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 361
    iget-object v4, v4, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    .line 362
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v5

    :goto_11
    if-ge v14, v13, :cond_27

    .line 363
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lcom/android/tools/r8/internal/dL;

    .line 364
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/internal/yU;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 365
    :cond_27
    new-instance v4, Lcom/android/tools/r8/internal/ay0;

    invoke-direct {v4, v10, v12, v9}, Lcom/android/tools/r8/internal/ay0;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    .line 366
    iget-object v9, v2, Lcom/android/tools/r8/internal/BU;->l:Ljava/util/LinkedHashMap;

    .line 367
    invoke-virtual {v9, v8, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v7

    goto/16 :goto_f

    .line 368
    :cond_28
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 369
    :cond_29
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 370
    :cond_2a
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "legacy_backport"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 371
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 372
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v3

    .line 373
    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 374
    check-cast v3, Lcom/android/tools/r8/internal/AS;

    .line 375
    iget-object v3, v3, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 376
    iget-object v4, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 377
    iget v6, v3, Lcom/android/tools/r8/internal/FS;->f:I

    .line 378
    :goto_12
    iget-object v7, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v7, :cond_2d

    if-eq v4, v7, :cond_2c

    .line 379
    iget v7, v3, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v7, v6, :cond_2b

    .line 380
    iget-object v7, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 381
    iget-object v8, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 382
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/yU;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 383
    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 384
    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/yU;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 385
    iget-object v9, v2, Lcom/android/tools/r8/internal/BU;->m:Lcom/android/tools/r8/internal/kC;

    .line 386
    invoke-virtual {v9, v8, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-object v4, v7

    goto :goto_12

    .line 387
    :cond_2b
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 388
    :cond_2c
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 389
    :cond_2d
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "dont_retarget"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 390
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 391
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v3

    .line 392
    iget-object v3, v3, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :goto_13
    if-ge v6, v4, :cond_2e

    .line 393
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/dL;

    .line 394
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/yU;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 395
    iget-object v8, v2, Lcom/android/tools/r8/internal/BU;->n:Lcom/android/tools/r8/internal/IC;

    .line 396
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    goto :goto_13

    .line 397
    :cond_2e
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "custom_conversion"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 398
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 399
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v3

    .line 400
    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 401
    check-cast v3, Lcom/android/tools/r8/internal/AS;

    .line 402
    iget-object v3, v3, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 403
    iget-object v4, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 404
    iget v6, v3, Lcom/android/tools/r8/internal/FS;->f:I

    .line 405
    :goto_14
    iget-object v7, v3, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v7, :cond_31

    if-eq v4, v7, :cond_30

    .line 406
    iget v7, v3, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v7, v6, :cond_2f

    .line 407
    iget-object v7, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 408
    iget-object v8, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 409
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/yU;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 410
    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 411
    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v4

    .line 412
    new-instance v9, Lcom/android/tools/r8/internal/ui;

    .line 413
    iget-object v10, v4, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    .line 414
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/dL;

    .line 415
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v10

    .line 416
    iget-object v11, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 417
    iget-object v10, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v10

    .line 418
    iget-object v4, v4, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    .line 419
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    .line 420
    iget-object v12, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v12, v4}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 421
    iget-object v4, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 422
    invoke-direct {v9, v10, v4}, Lcom/android/tools/r8/internal/ui;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    .line 423
    iget-object v4, v2, Lcom/android/tools/r8/internal/BU;->o:Lcom/android/tools/r8/internal/kC;

    .line 424
    invoke-virtual {v4, v8, v9}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-object v4, v7

    goto :goto_14

    .line 425
    :cond_2f
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 426
    :cond_30
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 427
    :cond_31
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "amend_library_method"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 428
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 429
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v3

    .line 430
    iget-object v3, v3, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :goto_15
    if-ge v6, v4, :cond_34

    .line 431
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/dL;

    .line 432
    iget-object v8, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 433
    iget-object v7, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    iget-object v8, v0, Lcom/android/tools/r8/internal/yU;->b:Lcom/android/tools/r8/internal/AU;

    .line 434
    sget-boolean v9, Lcom/android/tools/r8/internal/GA;->j:Z

    if-nez v9, :cond_33

    .line 435
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/GA;->b()Z

    move-result v9

    if-eqz v9, :cond_32

    goto :goto_16

    .line 436
    :cond_32
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 437
    :cond_33
    :goto_16
    iget-object v8, v8, Lcom/android/tools/r8/internal/GA;->i:Lcom/android/tools/r8/graph/L4;

    .line 438
    iget-object v9, v2, Lcom/android/tools/r8/internal/BU;->q:Lcom/android/tools/r8/internal/kC;

    .line 439
    invoke-virtual {v9, v7, v8}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_15

    .line 440
    :cond_34
    iget-object v3, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "amend_library_field"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 441
    iget-object v1, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/dL;

    .line 442
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v1

    .line 443
    iget-object v1, v1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_17
    if-ge v5, v3, :cond_37

    .line 444
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    .line 445
    iget-object v6, v0, Lcom/android/tools/r8/internal/yU;->c:Lcom/android/tools/r8/internal/zU;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/o;->b(Ljava/lang/String;)V

    .line 446
    iget-object v4, v0, Lcom/android/tools/r8/internal/yU;->c:Lcom/android/tools/r8/internal/zU;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/FA;->a()Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    iget-object v6, v0, Lcom/android/tools/r8/internal/yU;->c:Lcom/android/tools/r8/internal/zU;

    .line 447
    sget-boolean v7, Lcom/android/tools/r8/internal/FA;->h:Z

    if-nez v7, :cond_36

    .line 448
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/FA;->b()Z

    move-result v7

    if-eqz v7, :cond_35

    goto :goto_18

    .line 449
    :cond_35
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 450
    :cond_36
    :goto_18
    iget-object v6, v6, Lcom/android/tools/r8/internal/FA;->g:Lcom/android/tools/r8/graph/k3;

    .line 451
    iget-object v7, v2, Lcom/android/tools/r8/internal/BU;->r:Lcom/android/tools/r8/internal/kC;

    .line 452
    invoke-virtual {v7, v4, v6}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_17

    :cond_37
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/bL;)Lcom/android/tools/r8/internal/cu;
    .locals 8

    const/4 v0, 0x4

    const-string v1, "emulated dispatch descriptor"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/bL;ILjava/lang/String;)V

    iget-object v0, p1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/bL;)Lcom/android/tools/r8/internal/Yj;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/bL;)Lcom/android/tools/r8/internal/Yj;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/bL;)Lcom/android/tools/r8/internal/Yj;

    move-result-object v2

    const/4 v3, 0x3

    iget-object p1, p1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object p1

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p1, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/AS;

    iget-object p1, p1, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    iget-object v4, p1, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    iget v5, p1, Lcom/android/tools/r8/internal/FS;->f:I

    :goto_0
    iget-object v6, p1, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v6, :cond_2

    if-eq v4, v6, :cond_1

    iget v6, p1, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v6, v5, :cond_0

    iget-object v6, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    iget-object v7, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/yU;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/bL;)Lcom/android/tools/r8/internal/Yj;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v6

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/cu;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/cu;-><init>(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/Yj;Ljava/util/LinkedHashMap;)V

    return-object p1
.end method
