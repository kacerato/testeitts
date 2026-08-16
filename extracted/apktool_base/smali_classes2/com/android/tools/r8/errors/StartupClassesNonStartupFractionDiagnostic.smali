.class public Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Lcom/android/tools/r8/internal/hF;


# direct methods
.method public constructor <init>(IIILcom/android/tools/r8/internal/hF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->b:I

    iput p2, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->c:I

    iput p3, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->d:I

    iput-object p4, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->e:Lcom/android/tools/r8/internal/hF;

    return-void
.end method

.method private static synthetic a(Lcom/android/tools/r8/internal/XE;)Ljava/lang/Integer;
    .locals 2

    invoke-interface {p0}, Lcom/android/tools/r8/internal/XE;->a()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    invoke-interface {p0}, Lcom/android/tools/r8/internal/XE;->getIntValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/XE;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->a(Lcom/android/tools/r8/internal/XE;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 12

    iget v0, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->c:I

    iget v2, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->d:I

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->d:I

    int-to-double v4, v0

    iget v6, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->c:I

    add-int/2addr v6, v0

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->e:Lcom/android/tools/r8/internal/hF;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v6, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->e:Lcom/android/tools/r8/internal/hF;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->e:Lcom/android/tools/r8/internal/hF;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->e:Lcom/android/tools/r8/internal/hF;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->e:Lcom/android/tools/r8/internal/hF;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->e:Lcom/android/tools/r8/internal/hF;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->e:Lcom/android/tools/r8/internal/hF;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->e:Lcom/android/tools/r8/internal/hF;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v9, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->e:Lcom/android/tools/r8/internal/hF;

    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v9

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->e:Lcom/android/tools/r8/internal/hF;

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v9, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->e:Lcom/android/tools/r8/internal/hF;

    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v9

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;->e:Lcom/android/tools/r8/internal/hF;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/hF;->h()Lcom/android/tools/r8/internal/I30;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/android/tools/r8/errors/n;

    invoke-direct {v11}, Lcom/android/tools/r8/errors/n;-><init>()V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v11, Lcom/android/tools/r8/errors/o;

    invoke-direct {v11}, Lcom/android/tools/r8/errors/o;-><init>()V

    invoke-interface {v10, v5, v11}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v10

    move-object v5, v0

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Startup DEX files contains %d classes and %d methods of which %d (%d%%) are non-startup methods. Distribution of classes by their number of startup methods:\n0: %d classes\n1: %d classes\n2-3: %d classes\n4-5: %d classes\n6-10: %d classes\n11+: %d classes\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
