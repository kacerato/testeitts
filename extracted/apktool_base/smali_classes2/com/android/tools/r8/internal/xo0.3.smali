.class public Lcom/android/tools/r8/internal/xo0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/nio/file/Path;)Lcom/android/tools/r8/startup/StartupProfileProvider;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/wo0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/wo0;-><init>(Ljava/nio/file/Path;Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/startup/StartupProfileProvider;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->b()Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;

    move-result-object v0

    .line 4
    invoke-static {p0, v0, p1}, Lcom/android/tools/r8/internal/qo0;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;Lcom/android/tools/r8/startup/StartupProfileProvider;)Lcom/android/tools/r8/internal/qo0$a;

    move-result-object p0

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->c:Lcom/android/tools/r8/internal/Ef0;

    .line 6
    invoke-interface {p1, p0}, Lcom/android/tools/r8/startup/StartupProfileProvider;->getStartupProfile(Lcom/android/tools/r8/startup/StartupProfileBuilder;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qo0$a;->a()Lcom/android/tools/r8/internal/qo0;

    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/Ly1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ly1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/qo0;->a(Lcom/android/tools/r8/internal/Wr0;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yo0;)V
    .locals 0

    .line 11
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/yo0;->a(Ljava/lang/StringBuilder;)V

    const/16 p1, 0xa

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    return-void
.end method
