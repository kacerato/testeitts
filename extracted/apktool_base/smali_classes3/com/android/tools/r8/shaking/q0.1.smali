.class public final Lcom/android/tools/r8/shaking/q0;
.super Lcom/android/tools/r8/shaking/k0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H5;

.field public final b:Lcom/android/tools/r8/shaking/X1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/k0;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/shaking/q0;->a:Lcom/android/tools/r8/graph/H5;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/q0;->b:Lcom/android/tools/r8/shaking/X1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/shaking/q0;->a:Lcom/android/tools/r8/graph/H5;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/q0;->b:Lcom/android/tools/r8/shaking/X1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v5

    invoke-virtual {p1, v4, v5, v0, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/graph/Z4;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->L0()V

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, v2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/t5;->d(Lcom/android/tools/r8/graph/H2;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
