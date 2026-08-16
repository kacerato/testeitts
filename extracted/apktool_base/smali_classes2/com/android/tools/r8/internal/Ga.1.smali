.class public final Lcom/android/tools/r8/internal/Ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/E1;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Da;

.field public final b:Lcom/android/tools/r8/graph/H5;

.field public final synthetic c:Lcom/android/tools/r8/internal/Ha;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ha;Lcom/android/tools/r8/internal/Da;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ga;->c:Lcom/android/tools/r8/internal/Ha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ga;->a:Lcom/android/tools/r8/internal/Da;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ga;->b:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;
    .locals 4

    .line 6
    check-cast p1, Lcom/android/tools/r8/internal/f9;

    check-cast p2, Lcom/android/tools/r8/internal/H9;

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/kg;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/kg;-><init>()V

    .line 8
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ga;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ga;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 11
    sget p2, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object p2, Lcom/android/tools/r8/internal/gv0;->c:Lcom/android/tools/r8/internal/gv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ga;->a:Lcom/android/tools/r8/internal/Da;

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ga;->b:Lcom/android/tools/r8/graph/H5;

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ga;->a:Lcom/android/tools/r8/internal/Da;

    .line 14
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 15
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ga;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 16
    invoke-static {v1}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ga;->a:Lcom/android/tools/r8/internal/Da;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/tools/r8/internal/H9;->a(ILcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->B0()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/D1;
    .locals 0

    .line 4
    check-cast p1, Lcom/android/tools/r8/internal/f9;

    check-cast p4, Lcom/android/tools/r8/internal/f9;

    check-cast p2, Lcom/android/tools/r8/internal/W9;

    check-cast p3, Lcom/android/tools/r8/internal/H9;

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ga;->a:Lcom/android/tools/r8/internal/Da;

    invoke-virtual {p3, p1, p5}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/Da;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;
    .locals 0

    .line 3
    check-cast p1, Lcom/android/tools/r8/internal/f9;

    check-cast p2, Lcom/android/tools/r8/internal/f9;

    check-cast p3, Lcom/android/tools/r8/internal/H9;

    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/Os0;
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/W9;

    check-cast p2, Lcom/android/tools/r8/internal/H9;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ga;->c:Lcom/android/tools/r8/internal/Ha;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ha;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ga;->a:Lcom/android/tools/r8/internal/Da;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/W9;->a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/Os0;)Lcom/android/tools/r8/internal/Xi;
    .locals 1

    .line 18
    check-cast p1, Lcom/android/tools/r8/internal/W9;

    .line 19
    check-cast p2, Lcom/android/tools/r8/internal/hv;

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/Fa;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Fa;-><init>(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/hv;)V

    return-object v0
.end method
