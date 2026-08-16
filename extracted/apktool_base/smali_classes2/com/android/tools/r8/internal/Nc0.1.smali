.class public final Lcom/android/tools/r8/internal/Nc0;
.super Lcom/android/tools/r8/internal/Sc0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/A30;


# instance fields
.field public h:Lcom/android/tools/r8/internal/Qc0;

.field public final synthetic i:Lcom/android/tools/r8/internal/Uc0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Uc0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Nc0;->i:Lcom/android/tools/r8/internal/Uc0;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Sc0;-><init>(Lcom/android/tools/r8/internal/Uc0;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Qc0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Nc0;->i:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Sc0;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Qc0;-><init>(Lcom/android/tools/r8/internal/Uc0;I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Nc0;->h:Lcom/android/tools/r8/internal/Qc0;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    invoke-super {p0}, Lcom/android/tools/r8/internal/Sc0;->remove()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Nc0;->h:Lcom/android/tools/r8/internal/Qc0;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/Qc0;->b:I

    return-void
.end method
