.class public Lcom/android/tools/r8/shaking/q3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/shaking/q3$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/android/tools/r8/internal/hC;

.field public static final g:Lcom/android/tools/r8/internal/hC;

.field public static final h:Lcom/android/tools/r8/internal/hC;

.field public static final i:Lcom/android/tools/r8/internal/hC;

.field public static final j:Lcom/android/tools/r8/internal/Sm0;

.field public static final k:Lcom/android/tools/r8/internal/Sm0;

.field public static final l:Lcom/android/tools/r8/internal/Sm0;

.field public static final m:Lcom/android/tools/r8/internal/hC;

.field public static final n:Lcom/android/tools/r8/internal/Sm0;


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/o3$a;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/shaking/t3;

.field public final d:Lcom/android/tools/r8/internal/Ef0;

.field public final e:Lcom/android/tools/r8/InputDependencyGraphConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "target"

    const-string v1, "maximuminlinedcodelength"

    const-string v2, "protomapping"

    invoke-static {v2, v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/shaking/q3;->f:Lcom/android/tools/r8/internal/hC;

    const-string v0, "runtype"

    const-string v1, "laststageoutput"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/shaking/q3;->g:Lcom/android/tools/r8/internal/hC;

    const-string v0, "adaptkotlinmetadata"

    const-string v1, "verbose"

    const-string v2, "convert_proto_enum_to_string"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v13, "allowruntypeandignoreoptimizationpasses"

    const-string v14, "dontshrinkduringoptimization"

    const-string v3, "forceprocessing"

    const-string v4, "dontpreverify"

    const-string v5, "experimentalshrinkunusedprotofields"

    const-string v6, "filterlibraryjarswithorginalprogramjars"

    const-string v7, "dontskipnonpubliclibraryclasses"

    const-string v8, "dontskipnonpubliclibraryclassmembers"

    const-string v9, "invokebasemethod"

    const-string v10, "overloadaggressively"

    const-string v11, "mergeinterfacesaggressively"

    const-string v12, "android"

    invoke-static/range {v3 .. v15}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/shaking/q3;->h:Lcom/android/tools/r8/internal/hC;

    const-string v0, "isclassnamestring"

    const-string v1, "whyarenotsimple"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/shaking/q3;->i:Lcom/android/tools/r8/internal/hC;

    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    const-string v1, "outjars"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/tools/r8/shaking/q3;->j:Lcom/android/tools/r8/internal/Sm0;

    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    const-string v1, "dump"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/tools/r8/shaking/q3;->k:Lcom/android/tools/r8/internal/Sm0;

    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    const-string v1, "useuniqueclassmembernames"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/tools/r8/shaking/q3;->l:Lcom/android/tools/r8/internal/Sm0;

    const-string v0, "assumenoescapingparameters"

    const-string v1, "assumenoexternalreturnvalues"

    const-string v2, "assumenoexternalsideeffects"

    invoke-static {v2, v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/shaking/q3;->m:Lcom/android/tools/r8/internal/hC;

    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    const-string v1, "skipnonpubliclibraryclasses"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/tools/r8/shaking/q3;->n:Lcom/android/tools/r8/internal/Sm0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/tools/r8/shaking/t3;->a()Lcom/android/tools/r8/shaking/t3$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/t3$a;->a:Z

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t3$a;->a(Z)Lcom/android/tools/r8/shaking/t3$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t3$a;->b(Z)Lcom/android/tools/r8/shaking/t3$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t3$a;->c(Z)Lcom/android/tools/r8/shaking/t3$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t3$a;->d(Z)Lcom/android/tools/r8/shaking/t3$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/t3$a;->a()Lcom/android/tools/r8/shaking/t3;

    move-result-object v0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/shaking/q3;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/shaking/t3;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/shaking/t3;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/shaking/q3;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/shaking/t3;Lcom/android/tools/r8/InputDependencyGraphConsumer;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/shaking/t3;Lcom/android/tools/r8/InputDependencyGraphConsumer;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1, p2}, Lcom/android/tools/r8/shaking/o3;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/shaking/o3$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    .line 12
    iput-object p1, p0, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    .line 13
    iput-object p3, p0, Lcom/android/tools/r8/shaking/q3;->c:Lcom/android/tools/r8/shaking/t3;

    .line 14
    iput-object p2, p0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p4, Lcom/android/tools/r8/shaking/p3;

    invoke-direct {p4}, Lcom/android/tools/r8/shaking/p3;-><init>()V

    .line 16
    :goto_0
    iput-object p4, p0, Lcom/android/tools/r8/shaking/q3;->e:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/shaking/o3;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/q3;->c()V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3$a;->a()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/shaking/w3;)V
    .locals 1

    .line 6
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/q3;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/nio/file/Path;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/shaking/y3;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/y3;-><init>(Ljava/nio/file/Path;)V

    sget p1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/q3;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 6

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/w3;

    .line 10
    :try_start_0
    new-instance v1, Lcom/android/tools/r8/shaking/s3;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/shaking/s3;-><init>(Lcom/android/tools/r8/shaking/q3;Lcom/android/tools/r8/shaking/w3;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/s3;->j()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/shaking/h4; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    .line 12
    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v3, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-interface {v0}, Lcom/android/tools/r8/shaking/w3;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 14
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ef0;->a()V

    return-void
.end method

.method public b()Lcom/android/tools/r8/shaking/o3;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/q3;->c()V

    iget-object v0, p0, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3$a;->b()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/o3$a;->E:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/o3$a;->j:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v3, "-keepparameternames is not supported"

    iget-object v4, p0, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v5, v4, Lcom/android/tools/r8/shaking/o3$a;->F:Lcom/android/tools/r8/origin/Origin;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/o3$a;->G:Lcom/android/tools/r8/position/Position;

    invoke-direct {v1, v3, v5, v4}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw v0

    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/o3$a;->M:Z

    if-eqz v1, :cond_3

    const-string v1, "due to the use of -addconfigurationdebugging"

    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/o3$a;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v3, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build is not being obfuscated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    sget-object v4, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {v0, v4, v3}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3$a;->c()Lcom/android/tools/r8/shaking/o3$a;

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/o3$a;->r:Ljava/nio/file/Path;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v3, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Applying the obfuscation map (-applymapping) is disabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Ef0;->info(Lcom/android/tools/r8/Diagnostic;)V

    iget-object v0, p0, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iput-object v2, v0, Lcom/android/tools/r8/shaking/o3$a;->r:Ljava/nio/file/Path;

    :cond_3
    return-void
.end method
