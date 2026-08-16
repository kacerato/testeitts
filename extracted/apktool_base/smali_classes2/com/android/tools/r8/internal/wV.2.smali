.class public final Lcom/android/tools/r8/internal/wV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/MarkerInfo;


# instance fields
.field public final a:Lcom/android/tools/r8/dex/W;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/dex/W;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    return-void
.end method


# virtual methods
.method public final getMinApi()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/W;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/W;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final getRawEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/W;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTool()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/W;->h()Lcom/android/tools/r8/dex/W$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/W;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasBackend()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/W;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasCompilationMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    iget-object v0, v0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    const-string v1, "compilation-mode"

    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isBackendClassFiles()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/W;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isBackendDexFiles()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/W;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dex"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isCompilationModeDebug()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/W;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isCompilationModeRelease()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/W;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isD8()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    iget-object v0, v0, Lcom/android/tools/r8/dex/W;->b:Lcom/android/tools/r8/dex/W$b;

    sget-object v1, Lcom/android/tools/r8/dex/W$b;->b:Lcom/android/tools/r8/dex/W$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isL8()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    iget-object v0, v0, Lcom/android/tools/r8/dex/W;->b:Lcom/android/tools/r8/dex/W$b;

    sget-object v1, Lcom/android/tools/r8/dex/W$b;->d:Lcom/android/tools/r8/dex/W$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isR8()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    iget-object v0, v0, Lcom/android/tools/r8/dex/W;->b:Lcom/android/tools/r8/dex/W$b;

    sget-object v1, Lcom/android/tools/r8/dex/W$b;->e:Lcom/android/tools/r8/dex/W$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isR8ModeCompatibility()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wV;->isR8()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/W;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "compatibility"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isR8ModeFull()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wV;->isR8()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/W;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "full"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
