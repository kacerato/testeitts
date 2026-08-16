.class public Lcom/android/tools/r8/internal/Zm;
.super Lcom/android/tools/r8/internal/fp;
.source "SourceFile"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/fp;-><init>(III)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/fp;-><init>(ILcom/android/tools/r8/internal/w8;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/YV;->c:Lcom/android/tools/r8/internal/YV;

    iget-short v1, p0, Lcom/android/tools/r8/internal/fp;->f:S

    iget-short v2, p0, Lcom/android/tools/r8/internal/fp;->g:S

    iget-short v3, p0, Lcom/android/tools/r8/internal/fp;->h:S

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/YV;III)V

    return-void
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "AgetBoolean"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x47

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "aget-boolean"

    return-object v0
.end method
