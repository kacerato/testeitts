.class public final Lcom/android/tools/r8/shaking/H0;
.super Lcom/android/tools/r8/shaking/k0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/F5;

.field public final b:Lcom/android/tools/r8/graph/H5;

.field public final c:Lcom/android/tools/r8/shaking/J;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/shaking/k0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/shaking/H0;->a:Lcom/android/tools/r8/graph/F5;

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/shaking/H0;->b:Lcom/android/tools/r8/graph/H5;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/shaking/H0;->c:Lcom/android/tools/r8/shaking/J;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/shaking/k0;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/shaking/H0;->a:Lcom/android/tools/r8/graph/F5;

    .line 7
    iput-object p2, p0, Lcom/android/tools/r8/shaking/H0;->b:Lcom/android/tools/r8/graph/H5;

    .line 8
    iput-object p3, p0, Lcom/android/tools/r8/shaking/H0;->c:Lcom/android/tools/r8/shaking/J;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/shaking/H0;->c:Lcom/android/tools/r8/shaking/J;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/J;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/H0;->a:Lcom/android/tools/r8/graph/F5;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/H0;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v3, p1, Lcom/android/tools/r8/shaking/N;->g:Lcom/android/tools/r8/shaking/S;

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/shaking/S;->a(Lcom/android/tools/r8/graph/F5;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, v3, v1, v2, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/tools/r8/shaking/T1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/shaking/T1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H0;->a:Lcom/android/tools/r8/graph/F5;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/H0;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v4, p1, Lcom/android/tools/r8/shaking/N;->g:Lcom/android/tools/r8/shaking/S;

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/shaking/S;->a(Lcom/android/tools/r8/graph/F5;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, v4, v3, v1, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/tools/r8/shaking/T1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/T1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H0;->a:Lcom/android/tools/r8/graph/F5;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/H0;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v4, p1, Lcom/android/tools/r8/shaking/N;->g:Lcom/android/tools/r8/shaking/S;

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/shaking/S;->a(Lcom/android/tools/r8/graph/F5;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, v4, v3, v2, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;ZZ)Z

    move-result v4

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, v5, v3, v1, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;ZZ)Z

    move-result v1

    or-int/2addr v1, v4

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/tools/r8/shaking/T1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/T1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    :cond_2
    return-void
.end method
