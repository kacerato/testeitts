.class public final Lcom/android/tools/r8/internal/NR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/DV;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/VJ;

.field public final synthetic c:Lcom/android/tools/r8/internal/R00;

.field public final synthetic d:Lcom/android/tools/r8/graph/A2;

.field public final synthetic e:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic f:Lcom/android/tools/r8/internal/QR;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/NR;->f:Lcom/android/tools/r8/internal/QR;

    iput-object p2, p0, Lcom/android/tools/r8/internal/NR;->b:Lcom/android/tools/r8/internal/VJ;

    iput-object p3, p0, Lcom/android/tools/r8/internal/NR;->c:Lcom/android/tools/r8/internal/R00;

    iput-object p4, p0, Lcom/android/tools/r8/internal/NR;->d:Lcom/android/tools/r8/graph/A2;

    iput-object p5, p0, Lcom/android/tools/r8/internal/NR;->e:Lcom/android/tools/r8/internal/Hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/pu0;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/NR;->c:Lcom/android/tools/r8/internal/R00;

    iget-object v1, p0, Lcom/android/tools/r8/internal/NR;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/NR;->e:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/NR;->f:Lcom/android/tools/r8/internal/QR;

    iget-object v1, v1, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    return-object v0
.end method

.method public final getPosition()Lcom/android/tools/r8/internal/B60;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/NR;->b:Lcom/android/tools/r8/internal/VJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lcom/android/tools/r8/graph/j0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/NR;->b:Lcom/android/tools/r8/internal/VJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    return-object v0
.end method
