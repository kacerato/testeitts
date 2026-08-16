.class public abstract Lcom/android/tools/r8/shaking/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Es0;
.implements Lcom/android/tools/r8/internal/oK;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/W;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/W;->b:Lcom/android/tools/r8/shaking/N;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/graph/H2;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/shaking/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/W;->a(Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;I)V
    .locals 3

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 11
    invoke-static {v0}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v0

    add-int/2addr v0, p3

    .line 12
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/shaking/W;->a:Lcom/android/tools/r8/graph/y;

    .line 16
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 17
    iget-object p2, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    iget-object p2, p2, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 21
    :goto_0
    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/shaking/W;->a(Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 22
    iget-object p3, p0, Lcom/android/tools/r8/shaking/W;->b:Lcom/android/tools/r8/shaking/N;

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 24
    new-instance v1, Lcom/android/tools/r8/shaking/M1;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/shaking/M1;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    .line 25
    invoke-virtual {p3, p2, v1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    :cond_4
    :goto_1
    return-void
.end method
