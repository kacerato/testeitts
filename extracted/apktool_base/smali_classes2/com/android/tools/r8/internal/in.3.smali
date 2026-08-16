.class public Lcom/android/tools/r8/internal/in;
.super Lcom/android/tools/r8/internal/ap;
.source "SourceFile"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/ap;-><init>(III)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/ap;-><init>(ILcom/android/tools/r8/internal/w8;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    iget-short v1, p0, Lcom/android/tools/r8/internal/ap;->f:S

    iget-short v2, p0, Lcom/android/tools/r8/internal/ap;->g:S

    iget-byte v3, p0, Lcom/android/tools/r8/internal/ap;->h:B

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/aB;->d(Lcom/android/tools/r8/internal/T10;III)V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "AndIntLit8"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0xdd

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "and-int/lit8"

    return-object v0
.end method
