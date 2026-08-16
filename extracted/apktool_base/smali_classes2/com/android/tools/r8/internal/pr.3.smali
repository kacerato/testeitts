.class public Lcom/android/tools/r8/internal/pr;
.super Lcom/android/tools/r8/internal/cp;
.source "SourceFile"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/cp;-><init>(III)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/cp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    iget-byte v1, p0, Lcom/android/tools/r8/internal/cp;->f:B

    iget-byte v2, p0, Lcom/android/tools/r8/internal/cp;->g:B

    iget-short v3, p0, Lcom/android/tools/r8/internal/cp;->h:S

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/aB;->j(Lcom/android/tools/r8/internal/T10;III)V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "OrIntLit16"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0xd6

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "or-int/lit16"

    return-object v0
.end method
