.class public final Lcom/android/tools/r8/internal/gR;
.super Lcom/android/tools/r8/internal/bR;
.source "SourceFile"


# instance fields
.field public final f:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public constructor <init>(ZLcom/android/tools/r8/graph/H5;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    sget-object v1, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/tools/r8/internal/bR;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/gR;->f:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Zx;Lcom/android/tools/r8/internal/rr0;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;
    .locals 0

    iget-object p1, p0, Lcom/android/tools/r8/internal/gR;->f:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->A()V

    iget-object p2, p0, Lcom/android/tools/r8/internal/gR;->f:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->w()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
