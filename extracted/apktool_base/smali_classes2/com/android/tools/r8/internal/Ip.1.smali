.class public abstract Lcom/android/tools/r8/internal/Ip;
.super Lcom/android/tools/r8/internal/bp;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/bp;",
        "Lcom/android/tools/r8/internal/Jp;"
    }
.end annotation


# direct methods
.method public constructor <init>(IILcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/bp;-><init>(IILcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/w8;[Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/bp;-><init>(ILcom/android/tools/r8/internal/w8;[Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method


# virtual methods
.method public final I()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ip;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    .line 4
    iget-byte p3, p0, Lcom/android/tools/r8/internal/bp;->g:B

    iget-byte p4, p0, Lcom/android/tools/r8/internal/bp;->f:B

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result p5

    invoke-static {p3, p4, p6, p5}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;I)V

    .line 6
    invoke-static {p2, p6, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ip;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p5

    invoke-virtual {p4, p2, p5}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void
.end method

.method public final getField()Lcom/android/tools/r8/graph/l1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bp;->h:Lcom/android/tools/r8/graph/J2;

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    return-object v0
.end method

.method public final h()Lcom/android/tools/r8/internal/Jp;
    .locals 0

    return-object p0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
