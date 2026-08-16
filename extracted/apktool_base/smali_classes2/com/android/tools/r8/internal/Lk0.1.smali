.class public final Lcom/android/tools/r8/internal/Lk0;
.super Lcom/android/tools/r8/internal/Mk0;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/Kk0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Kk0;)V
    .locals 1

    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk0;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Mk0;-><init>(Ljava/lang/StringBuilder;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Lk0;->c:Lcom/android/tools/r8/internal/Kk0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Mk0;
    .locals 2

    const-string v0, "(...)"

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lk0;->c:Lcom/android/tools/r8/internal/Kk0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Kk0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/Mk0;
    .locals 2

    .line 2
    const-string v0, "**"

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Lk0;->c:Lcom/android/tools/r8/internal/Kk0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Kk0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk0;->c:Lcom/android/tools/r8/internal/Kk0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Kk0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/Mk0;
    .locals 2

    const-string v0, "%"

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lk0;->c:Lcom/android/tools/r8/internal/Kk0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Kk0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    return-object p0
.end method

.method public final d()V
    .locals 2

    const-string v0, "*"

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lk0;->c:Lcom/android/tools/r8/internal/Kk0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Kk0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    return-void
.end method

.method public final e()Lcom/android/tools/r8/internal/Mk0;
    .locals 2

    const-string v0, "***"

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lk0;->c:Lcom/android/tools/r8/internal/Kk0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Kk0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    return-object p0
.end method
