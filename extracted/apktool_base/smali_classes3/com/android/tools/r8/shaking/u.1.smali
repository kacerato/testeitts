.class public Lcom/android/tools/r8/shaking/u;
.super Lcom/android/tools/r8/graph/f6;
.source "SourceFile"


# instance fields
.field public final e:Lcom/android/tools/r8/graph/j;

.field public final f:Lcom/android/tools/r8/androidapi/a;

.field public final g:Z

.field public h:Lcom/android/tools/r8/androidapi/f;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/androidapi/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/f6;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J5;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/shaking/u;->e:Lcom/android/tools/r8/graph/j;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/u;->f:Lcom/android/tools/r8/androidapi/a;

    invoke-virtual {p3}, Lcom/android/tools/r8/androidapi/a;->a()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/tools/r8/shaking/u;->g:Z

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/u;->h:Lcom/android/tools/r8/androidapi/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;)V
    .locals 3

    .line 5
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/u;->g:Z

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/shaking/u;->h:Lcom/android/tools/r8/androidapi/f;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/u;->f:Lcom/android/tools/r8/androidapi/a;

    .line 9
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/tools/r8/androidapi/f;->a(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/u;->h:Lcom/android/tools/r8/androidapi/f;

    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/shaking/u;->h:Lcom/android/tools/r8/androidapi/f;

    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 13
    invoke-interface {p1, v0}, Lcom/android/tools/r8/androidapi/f;->a(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/u;->h:Lcom/android/tools/r8/androidapi/f;

    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 15
    sget v1, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v1, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    if-eqz v0, :cond_2

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/u;->e:Lcom/android/tools/r8/graph/j;

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->m0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 18
    invoke-static {v1, v2, v0, p1}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/o50;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/androidapi/f;

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/shaking/u;->h:Lcom/android/tools/r8/androidapi/f;

    invoke-interface {p1, v1}, Lcom/android/tools/r8/androidapi/f;->a(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/u;->h:Lcom/android/tools/r8/androidapi/f;

    :cond_3
    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 21
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/u;->g:Z

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/shaking/u;->f:Lcom/android/tools/r8/androidapi/a;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/shaking/u;->e:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/Y2;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/shaking/u;->e:Lcom/android/tools/r8/graph/j;

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-object v1, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 26
    invoke-interface {v0}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/shaking/u;->h:Lcom/android/tools/r8/androidapi/f;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/androidapi/f;->a(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/u;->h:Lcom/android/tools/r8/androidapi/f;

    :cond_1
    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/M2;Ljava/util/ListIterator;Z)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/M2;Z)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public b(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public b(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public c(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public c(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public d(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public d(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public d(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public e(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public e(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public f(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public f(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public f(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public g(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public g(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public h(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method
