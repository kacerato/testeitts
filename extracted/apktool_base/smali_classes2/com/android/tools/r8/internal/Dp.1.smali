.class public Lcom/android/tools/r8/internal/Dp;
.super Lcom/android/tools/r8/internal/Ip;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ja;


# direct methods
.method public constructor <init>(IILcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Ip;-><init>(IILcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/x5;->a()[Lcom/android/tools/r8/graph/l1;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Ip;-><init>(ILcom/android/tools/r8/internal/w8;[Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/Jp;
    .locals 3

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Dp;

    iget-byte v1, p0, Lcom/android/tools/r8/internal/bp;->f:B

    iget-byte v2, p0, Lcom/android/tools/r8/internal/bp;->g:B

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Dp;-><init>(IILcom/android/tools/r8/graph/l1;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Np;->e(I)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/internal/Ja;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 3

    .line 2
    iget-byte v0, p0, Lcom/android/tools/r8/internal/bp;->f:B

    iget-byte v1, p0, Lcom/android/tools/r8/internal/bp;->g:B

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ip;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "Iget"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x52

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "iget"

    return-object v0
.end method
