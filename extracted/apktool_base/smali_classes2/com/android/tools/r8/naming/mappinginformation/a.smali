.class public final Lcom/android/tools/r8/naming/mappinginformation/a;
.super Lcom/android/tools/r8/naming/mappinginformation/d;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/naming/mappinginformation/d;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/mappinginformation/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/DiagnosticsHandler;ILjava/util/function/Consumer;)V
    .locals 2

    .line 4
    :try_start_0
    const-string v0, "fileName"

    const-string v1, "sourceFile"

    .line 5
    iget-object p0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/dL;

    if-nez p0, :cond_0

    .line 7
    invoke-static {p2, v0, v1}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    move-result-object v0

    .line 8
    invoke-interface {p1, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->info(Lcom/android/tools/r8/Diagnostic;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 9
    new-instance v0, Lcom/android/tools/r8/naming/mappinginformation/a;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/mappinginformation/a;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 10
    :catch_0
    invoke-static {p2}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->a(I)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    move-result-object p0

    .line 11
    invoke-interface {p1, p0}, Lcom/android/tools/r8/DiagnosticsHandler;->info(Lcom/android/tools/r8/Diagnostic;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/naming/mappinginformation/a;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/naming/mappinginformation/e;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of p1, p1, Lcom/android/tools/r8/naming/mappinginformation/a;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/naming/mappinginformation/e;)Lcom/android/tools/r8/naming/mappinginformation/e;
    .locals 0

    return-object p1
.end method

.method public final r()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/gL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gL;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/jL;

    const-string v2, "sourceFile"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/jL;

    iget-object v2, p0, Lcom/android/tools/r8/naming/mappinginformation/a;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v3, "fileName"

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
