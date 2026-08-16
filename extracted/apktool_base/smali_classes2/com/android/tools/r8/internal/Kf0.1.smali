.class public final Lcom/android/tools/r8/internal/Kf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/AZ;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Kf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->L0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/graph/b3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kf0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->O:Lcom/android/tools/r8/internal/yb0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/R2;->B0()Lcom/android/tools/r8/graph/b3;

    move-result-object p2

    iget p2, p2, Lcom/android/tools/r8/graph/b3;->d:I

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/yb0;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
