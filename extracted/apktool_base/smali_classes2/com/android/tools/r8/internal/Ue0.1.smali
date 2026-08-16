.class public final Lcom/android/tools/r8/internal/Ue0;
.super Lcom/android/tools/r8/internal/sC;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/android/tools/r8/internal/Ve0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ve0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ue0;->e:Lcom/android/tools/r8/internal/Ve0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/sC;-><init>()V

    return-void
.end method


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/JC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hC;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ue0;->e:Lcom/android/tools/r8/internal/Ve0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ve0;->f:Lcom/android/tools/r8/internal/We0;

    iget v0, v0, Lcom/android/tools/r8/internal/We0;->j:I

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/Av0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/JC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/JC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/internal/hC;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Te0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Te0;-><init>(Lcom/android/tools/r8/internal/Ue0;)V

    return-object v0
.end method

.method public final k()Lcom/android/tools/r8/internal/nC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ue0;->e:Lcom/android/tools/r8/internal/Ve0;

    return-object v0
.end method
