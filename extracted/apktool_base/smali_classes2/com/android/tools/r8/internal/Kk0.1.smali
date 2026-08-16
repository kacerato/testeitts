.class public final Lcom/android/tools/r8/internal/Kk0;
.super Lcom/android/tools/r8/internal/Mk0;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/function/Supplier;

.field public final d:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Mk0;-><init>(Ljava/lang/StringBuilder;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Kk0;->d:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Kk0;->c:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Mk0;
    .locals 1

    .line 1
    const-string v0, "(...)"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Kk0;->c(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kk0;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)Lcom/android/tools/r8/internal/Mk0;
    .locals 0

    if-eqz p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Lk0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Lk0;-><init>(Lcom/android/tools/r8/internal/Kk0;)V

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/Mk0;
    .locals 1

    .line 3
    const-string v0, "**"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Kk0;->c(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kk0;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kk0;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Mk0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kk0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kk0;->d:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Kk0;->c:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Mk0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/Mk0;
    .locals 1

    .line 3
    const-string v0, "%"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Kk0;->c(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kk0;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Kk0;->c(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kk0;

    return-void
.end method

.method public final e()Lcom/android/tools/r8/internal/Mk0;
    .locals 1

    const-string v0, "***"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Kk0;->c(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kk0;

    move-result-object v0

    return-object v0
.end method
