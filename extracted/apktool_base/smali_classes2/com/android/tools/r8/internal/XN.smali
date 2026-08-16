.class public final Lcom/android/tools/r8/internal/XN;
.super Lcom/android/tools/r8/internal/fO;
.source "SourceFile"


# instance fields
.field public final j:Lcom/android/tools/r8/internal/B50;

.field public final k:Lcom/android/tools/r8/internal/pO;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/pO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fO;-><init>(Lcom/android/tools/r8/internal/B50;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/XN;->j:Lcom/android/tools/r8/internal/B50;

    iput-object p2, p0, Lcom/android/tools/r8/internal/XN;->k:Lcom/android/tools/r8/internal/pO;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 4
    invoke-super {p0}, Lcom/android/tools/r8/internal/fO;->a()V

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fO;->c()Lcom/android/tools/r8/internal/MM;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/XN;->k:Lcom/android/tools/r8/internal/pO;

    iget-object v2, p0, Lcom/android/tools/r8/internal/XN;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/internal/XN;->j:Lcom/android/tools/r8/internal/B50;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/tools/r8/internal/pO;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/B50;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "bindingName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/tools/r8/internal/XN;->l:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fO;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/pO;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/XN;->k:Lcom/android/tools/r8/internal/pO;

    return-object v0
.end method
