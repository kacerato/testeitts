.class public Lcom/android/tools/r8/internal/br;
.super Lcom/android/tools/r8/internal/Uo;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Uo;-><init>(II)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Uo;-><init>(ILcom/android/tools/r8/internal/w8;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    iget-byte v1, p0, Lcom/android/tools/r8/internal/Uo;->f:B

    iget-byte v2, p0, Lcom/android/tools/r8/internal/Uo;->g:B

    invoke-virtual {p1, v0, v1, v1, v2}, Lcom/android/tools/r8/internal/aB;->g(Lcom/android/tools/r8/internal/T10;III)V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "MulLong2Addr"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0xbd

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "mul-long/2addr"

    return-object v0
.end method
