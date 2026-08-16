.class public Lcom/android/tools/r8/internal/wm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/v0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZI)Lcom/android/tools/r8/internal/vm;
    .locals 6

    .line 2
    new-instance v5, Lcom/android/tools/r8/internal/Tx1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/Tx1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/wm;->a(Lcom/android/tools/r8/v0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZILjava/util/function/Consumer;)Lcom/android/tools/r8/internal/vm;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/v0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZILjava/util/function/Consumer;)Lcom/android/tools/r8/internal/vm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/v0;",
            "Lcom/android/tools/r8/graph/u1;",
            "Lcom/android/tools/r8/internal/Ef0;",
            "ZI",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/internal/ws0<",
            "*>;>;)",
            "Lcom/android/tools/r8/internal/vm;"
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    .line 4
    sget-boolean v1, Lcom/android/tools/r8/internal/wm;->a:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-interface {p0}, Lcom/android/tools/r8/v0;->a()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/android/tools/r8/internal/iL;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object v3, v2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 8
    const-string v4, "configuration_format_version"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    iget-object v1, v2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/dL;

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result v1

    const/16 v3, 0xc8

    if-lt v1, v3, :cond_2

    .line 11
    new-instance p5, Lcom/android/tools/r8/internal/yU;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/yU;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZI)V

    .line 12
    invoke-virtual {p5, v0, p0, v2}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Lcom/android/tools/r8/internal/gL;)Lcom/android/tools/r8/internal/xU;

    move-result-object p0

    return-object p0

    .line 13
    :cond_2
    invoke-static {v2, p2, v0}, Lcom/android/tools/r8/internal/wm;->a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/EA;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/EA;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZI)V

    .line 15
    invoke-virtual {v1, v0, p0, v2, p5}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/DA;

    move-result-object p0

    return-object p0

    .line 16
    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/DR;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DR;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZI)V

    .line 17
    invoke-virtual {v1, v0, p0, v2, p5}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/CR;

    move-result-object p0

    return-object p0

    .line 18
    :cond_4
    new-instance p0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string p1, "Invalid desugared library configuration. Expected required key \'configuration_format_version\'"

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 19
    invoke-virtual {p2, v1, p0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 20
    iget-object p0, p2, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p0

    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    .line 22
    invoke-virtual {p2, v1, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 23
    iget-object p0, p2, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ws0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Z
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 25
    const-string v1, "configuration_format_version"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object p0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/dL;

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result p0

    const/16 p1, 0x64

    if-lt p0, p1, :cond_0

    const/16 p1, 0xc8

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 28
    :cond_1
    new-instance p0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v0, "Invalid desugared library configuration. Expected required key \'configuration_format_version\'"

    invoke-direct {p0, v0, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    const/4 p2, 0x0

    .line 29
    invoke-virtual {p1, p2, p0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 30
    iget-object p0, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p0
.end method
