.class public final Lcom/android/tools/r8/internal/Xn;
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
    .locals 6

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    sget-object v2, Lcom/android/tools/r8/internal/re;->c:Lcom/android/tools/r8/internal/re;

    iget-short v3, p0, Lcom/android/tools/r8/internal/fp;->f:S

    iget-short v4, p0, Lcom/android/tools/r8/internal/fp;->g:S

    iget-short v5, p0, Lcom/android/tools/r8/internal/fp;->h:S

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/re;III)V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "CmpgDouble"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "cmpg-double"

    return-object v0
.end method
