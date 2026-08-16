.class public final Lcom/android/tools/r8/internal/hx;
.super Lcom/android/tools/r8/internal/xw0;
.source "SourceFile"


# instance fields
.field public final p:Lcom/android/tools/r8/internal/f60;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/f60;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/hx;->p:Lcom/android/tools/r8/internal/f60;

    return-void
.end method


# virtual methods
.method public final M()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final T()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/hx;->p:Lcom/android/tools/r8/internal/f60;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fixed:v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
