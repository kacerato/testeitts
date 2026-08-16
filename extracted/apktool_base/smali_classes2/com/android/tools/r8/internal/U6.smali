.class public Lcom/android/tools/r8/internal/U6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/U6;->b:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/U6;->b:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/U6;->c(Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/BooleanSupplier;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/U6;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/U6;->c(Z)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/U6;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/U6;->c(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/U6;->a:Z

    return v0
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/U6;->a()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/U6;->e()V

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/U6;->a:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/U6;->c(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/U6;->b:Z

    .line 3
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/U6;->a:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/U6;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/U6;->a()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/U6;->c(Z)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/U6;->c(Z)V

    return-void
.end method
