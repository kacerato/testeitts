.class public Lcom/android/tools/r8/internal/U1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.android.tools.r8.accessmodification.forcePackagePrivateAndProtected"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/U1;->a:Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/U1;->b:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/U1;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/U1;->b:Lcom/android/tools/r8/internal/nJ;

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    .line 4
    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/o3;->f:Z

    if-eqz v0, :cond_0

    return v2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/U1;->b:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
