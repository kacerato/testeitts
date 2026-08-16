.class public final Lcom/android/tools/r8/internal/A5;
.super Lcom/android/tools/r8/internal/x5;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/F5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/F5;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/x5;-><init>(Lcom/android/tools/r8/graph/v2;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/A5;->b:Lcom/android/tools/r8/internal/F5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/H5;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/ny0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/ny0;-><init>(Lcom/android/tools/r8/internal/A5;)V

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object p2

    new-instance v2, Lcom/android/tools/r8/internal/oy0;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/internal/oy0;-><init>(Lcom/android/tools/r8/internal/A5;Lcom/android/tools/r8/graph/y;)V

    .line 4
    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 1

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/A5;->b:Lcom/android/tools/r8/internal/F5;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/F5;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 20
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/S;->D:Lcom/android/tools/r8/synthesis/S$b;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;
    .locals 0

    .line 15
    invoke-virtual {p0, p3, p5}, Lcom/android/tools/r8/internal/A5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 16
    iget-object p2, p5, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 17
    invoke-interface {p4, p1, p2}, Lcom/android/tools/r8/internal/q5;->s(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 18
    new-instance p2, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    const/16 p3, 0xb8

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, p4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 19
    new-instance p1, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/N;)V
    .locals 4

    .line 5
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/x5;->a:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v0

    .line 7
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/x5;->a:Lcom/android/tools/r8/graph/v2;

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 10
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 v0, 0x1009

    .line 11
    invoke-static {v0, v2}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 12
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/my0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/my0;-><init>(Lcom/android/tools/r8/internal/A5;Lcom/android/tools/r8/graph/y;)V

    .line 14
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method
