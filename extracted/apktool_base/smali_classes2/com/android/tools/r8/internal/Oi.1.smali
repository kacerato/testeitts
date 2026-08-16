.class public final Lcom/android/tools/r8/internal/Oi;
.super Lcom/android/tools/r8/internal/Si;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/metadata/D8OptionsMetadata;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/Si<",
        "Lcom/android/tools/r8/metadata/D8ApiModelingMetadata;",
        "Lcom/android/tools/r8/metadata/D8LibraryDesugaringMetadata;",
        ">;",
        "Lcom/android/tools/r8/metadata/D8OptionsMetadata;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/H2;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Fi;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Fi;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xU;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Lcom/android/tools/r8/internal/Ii;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Ii;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/android/tools/r8/internal/Si;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/Qi;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method
