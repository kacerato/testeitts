.class public final Lcom/android/tools/r8/graph/l4;
.super Lcom/android/tools/r8/internal/DX;
.source "SourceFile"


# static fields
.field public static final synthetic r:Z = true


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/android/tools/r8/graph/j4;

.field public final f:I

.field public g:Ljava/util/ArrayList;

.field public h:Lcom/android/tools/r8/graph/R2;

.field public i:I

.field public j:Ljava/util/ArrayList;

.field public k:Ljava/util/ArrayList;

.field public l:Ljava/util/ArrayList;

.field public final m:Lcom/android/tools/r8/graph/H3$g;

.field public final n:Lcom/android/tools/r8/graph/A2;

.field public final o:Lcom/android/tools/r8/graph/L4;

.field public final p:Z

.field public q:Lcom/android/tools/r8/graph/u4;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/android/tools/r8/graph/j4;)V
    .locals 3

    const/high16 v0, 0x90000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/DX;-><init>(ILcom/android/tools/r8/internal/DX;)V

    iput-object v1, p0, Lcom/android/tools/r8/graph/l4;->g:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/tools/r8/graph/l4;->h:Lcom/android/tools/r8/graph/R2;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/graph/l4;->i:I

    iput-object v1, p0, Lcom/android/tools/r8/graph/l4;->j:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/tools/r8/graph/l4;->k:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/tools/r8/graph/l4;->l:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/tools/r8/graph/l4;->q:Lcom/android/tools/r8/graph/u4;

    iput-object p2, p0, Lcom/android/tools/r8/graph/l4;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/graph/l4;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v0, p6, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v1, p6, Lcom/android/tools/r8/graph/j4;->j:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/tools/r8/graph/h4;->a(Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/l4;->n:Lcom/android/tools/r8/graph/A2;

    invoke-static {p1, p2}, Lcom/android/tools/r8/graph/o4;->a(ILjava/lang/String;)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/l4;->o:Lcom/android/tools/r8/graph/L4;

    const/high16 v0, 0x20000

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/tools/r8/graph/l4;->p:Z

    invoke-static {p3}, Lcom/android/tools/r8/internal/Bl;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/graph/l4;->f:I

    if-eqz p5, :cond_3

    array-length p1, p5

    if-lez p1, :cond_3

    array-length p1, p5

    new-array p1, p1, [Lcom/android/tools/r8/graph/R2;

    :goto_1
    array-length p3, p5

    if-ge v1, p3, :cond_1

    new-instance p3, Lcom/android/tools/r8/graph/R2$l;

    iget-object v0, p6, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    aget-object v2, p5, v1

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/h4;->f(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/android/tools/r8/graph/R2$l;-><init>(Lcom/android/tools/r8/graph/M2;)V

    aput-object p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p3, p6, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object p3, p3, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    sget-object p5, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    iget-object p5, p3, Lcom/android/tools/r8/graph/u1;->O5:Lcom/android/tools/r8/graph/M2;

    new-instance v0, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    invoke-static {p5, p3, v0}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/R2;)Lcom/android/tools/r8/graph/r0;

    move-result-object p1

    iget-object p3, p0, Lcom/android/tools/r8/graph/l4;->g:Ljava/util/ArrayList;

    if-nez p3, :cond_2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/tools/r8/graph/l4;->g:Ljava/util/ArrayList;

    :cond_2
    iget-object p3, p0, Lcom/android/tools/r8/graph/l4;->g:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p6, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object p1, p1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p6, Lcom/android/tools/r8/graph/j4;->c:Lcom/android/tools/r8/origin/Origin;

    iget-object p3, p6, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object p3, p3, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object p5, p3, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-static {p2, p4, p1, p5, p3}, Lcom/android/tools/r8/graph/H3;->c(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/graph/H3$g;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/l4;->m:Lcom/android/tools/r8/graph/H3$g;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 24
    new-instance v0, Lcom/android/tools/r8/graph/i4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    new-instance v2, Lcom/android/tools/r8/graph/Me;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/graph/Me;-><init>(Lcom/android/tools/r8/graph/l4;)V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/i4;-><init>(Lcom/android/tools/r8/graph/h4;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(ILcom/android/tools/r8/internal/tu0;[Lcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;[ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 31
    iget v0, p0, Lcom/android/tools/r8/graph/l4;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 32
    iget v0, p0, Lcom/android/tools/r8/graph/l4;->f:I

    iput v0, p0, Lcom/android/tools/r8/graph/l4;->i:I

    .line 33
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/tools/r8/graph/l4;->i:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/graph/l4;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 34
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/graph/l4;->i:I

    if-ge v0, v1, :cond_1

    .line 35
    iget-object v1, p0, Lcom/android/tools/r8/graph/l4;->j:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/graph/l4;->r:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 37
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->j:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    new-instance v1, Lcom/android/tools/r8/graph/ne;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/ne;-><init>()V

    .line 39
    invoke-static {p2, p3, p1, v0, v1}, Lcom/android/tools/r8/graph/o4;->a(Ljava/lang/String;ZLjava/util/List;Lcom/android/tools/r8/graph/h4;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/i4;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 9

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    .line 4
    iget-object v1, v0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    .line 5
    iget-object v1, v1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$p;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    sget-object v1, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 6
    invoke-static {p1}, Lcom/android/tools/r8/internal/rO;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->j:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object v4

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/G50;

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/C50;

    invoke-direct {v1, v4}, Lcom/android/tools/r8/internal/C50;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/graph/l4;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/graph/l4;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/G50;-><init>(Lcom/android/tools/r8/internal/C50;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v7, Lcom/android/tools/r8/internal/B50;

    invoke-direct {v7, v0, p1}, Lcom/android/tools/r8/internal/B50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v1, v0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v3, v1, Lcom/android/tools/r8/internal/nJ$p;->a:Z

    iget-object v5, p0, Lcom/android/tools/r8/graph/l4;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/tools/r8/graph/l4;->d:Ljava/lang/String;

    .line 13
    new-instance v8, Lcom/android/tools/r8/graph/me;

    invoke-direct {v8, v0}, Lcom/android/tools/r8/graph/me;-><init>(Lcom/android/tools/r8/graph/h4;)V

    move-object v1, p1

    move v2, p2

    .line 14
    invoke-static/range {v1 .. v8}, Lcom/android/tools/r8/internal/rO;->b(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/B50;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/R2;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-boolean v1, v0, Lcom/android/tools/r8/graph/j4;->D:Z

    iget-object v2, v0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    .line 16
    iget-object v2, v2, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 17
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 18
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Ldalvik/annotation/optimization/ReachabilitySensitive;"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/tools/r8/graph/j4;->D:Z

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/l4;->g:Ljava/util/ArrayList;

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->g:Ljava/util/ArrayList;

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    new-instance v2, Lcom/android/tools/r8/graph/ne;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/ne;-><init>()V

    .line 23
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/tools/r8/graph/o4;->a(Ljava/lang/String;ZLjava/util/List;Lcom/android/tools/r8/graph/h4;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/i4;

    move-result-object p1

    return-object p1
.end method

.method public final a(IZ)V
    .locals 1

    .line 27
    iget p2, p0, Lcom/android/tools/r8/graph/l4;->i:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 28
    sget-boolean v0, Lcom/android/tools/r8/graph/l4;->r:Z

    if-nez v0, :cond_1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/graph/l4;->i:I

    return-void
.end method

.method public final synthetic a(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .line 25
    sget-boolean p1, Lcom/android/tools/r8/graph/l4;->r:Z

    if-nez p1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 26
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/R2;

    iput-object p1, p0, Lcom/android/tools/r8/graph/l4;->h:Lcom/android/tools/r8/graph/R2;

    return-void
.end method

.method public final b(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 2

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "visitCode() should not be called when SKIP_CODE is set"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(ILjava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/graph/l4;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/tools/r8/graph/l4;->f:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/graph/l4;->k:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/tools/r8/graph/l4;->f:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/graph/l4;->l:Ljava/util/ArrayList;

    :cond_2
    if-nez p2, :cond_3

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->k:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/tools/r8/graph/Z2;->d:Lcom/android/tools/r8/graph/Z2;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->k:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/graph/R2$k;

    iget-object v2, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v2, v2, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    .line 8
    iget-object v2, v2, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 9
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 10
    invoke-virtual {v2, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/tools/r8/graph/R2$h;->j(I)Lcom/android/tools/r8/graph/R2$h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/DX;->b(ILjava/lang/String;)V

    return-void
.end method

.method public final c(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 7

    .line 87
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/l4;->g:Ljava/util/ArrayList;

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/android/tools/r8/graph/l4;->g:Ljava/util/ArrayList;

    .line 90
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v4, v0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    move-object v1, p3

    move v2, p4

    move v5, p1

    move-object v6, p2

    .line 91
    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/graph/o4;->a(Ljava/lang/String;ZLjava/util/List;Lcom/android/tools/r8/graph/h4;ILcom/android/tools/r8/internal/tu0;)Lcom/android/tools/r8/graph/i4;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v1, v0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v2, v1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 2
    iget-object v3, p0, Lcom/android/tools/r8/graph/l4;->n:Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    .line 3
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->k()I

    move-result v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/oJ;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, v1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 5
    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/tc0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-ne v0, v4, :cond_0

    .line 8
    iget-object v0, v1, Lcom/android/tools/r8/graph/h4;->f:Lcom/android/tools/r8/graph/y0;

    .line 9
    iget-object v1, v0, Lcom/android/tools/r8/graph/y0;->c:Lcom/android/tools/r8/internal/IC;

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v0, v0, Lcom/android/tools/r8/graph/y0;->c:Lcom/android/tools/r8/internal/IC;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 12
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v1, v0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v3, p0, Lcom/android/tools/r8/graph/l4;->n:Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    .line 14
    iget-object v4, v1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 15
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->d0()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    iget-object v4, v1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 17
    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 18
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/android/tools/r8/graph/h4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/V;)V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v1, v0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v3, p0, Lcom/android/tools/r8/graph/l4;->n:Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    .line 20
    iget-object v4, v1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 21
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->d0()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 22
    iget-object v4, v1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 23
    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Pw0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 24
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/android/tools/r8/graph/h4;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/V;)V

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->o:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->o:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v0

    if-nez v0, :cond_4

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v1, v0, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    sget-object v3, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-eq v1, v3, :cond_3

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->i()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v1, v0, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    sget-object v3, Lcom/android/tools/r8/graph/V;->d:Lcom/android/tools/r8/graph/V;

    if-ne v1, v3, :cond_4

    .line 28
    iget-object v1, v0, Lcom/android/tools/r8/graph/j4;->p:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->o:Lcom/android/tools/r8/graph/o5;

    if-eqz v0, :cond_4

    .line 30
    :cond_3
    new-instance v0, Lcom/android/tools/r8/graph/u4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->c:Lcom/android/tools/r8/origin/Origin;

    iget-object v4, v1, Lcom/android/tools/r8/graph/j4;->g:Lcom/android/tools/r8/graph/n4;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    invoke-direct {v0, v3, v4, v1}, Lcom/android/tools/r8/graph/u4;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/n4;Lcom/android/tools/r8/graph/h4;)V

    iput-object v0, p0, Lcom/android/tools/r8/graph/l4;->q:Lcom/android/tools/r8/graph/u4;

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 32
    sget-object v0, Lcom/android/tools/r8/graph/z5;->d:Lcom/android/tools/r8/graph/z5;

    goto :goto_2

    .line 33
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/tools/r8/graph/u0;

    move v3, v1

    .line 34
    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/graph/l4;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 35
    iget-object v4, p0, Lcom/android/tools/r8/graph/l4;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4, v2}, Lcom/android/tools/r8/graph/o4;->a(Ljava/util/List;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/graph/u0;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 36
    :cond_6
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/z5;->a([Lcom/android/tools/r8/graph/u0;I)Lcom/android/tools/r8/graph/z5;

    move-result-object v0

    .line 37
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/graph/l4;->k:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    .line 38
    sget-boolean v4, Lcom/android/tools/r8/graph/l4;->r:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/tools/r8/graph/l4;->l:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_8
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/tools/r8/graph/l4;->f:I

    if-eq v3, v4, :cond_9

    .line 40
    iget-object v3, p0, Lcom/android/tools/r8/graph/l4;->n:Lcom/android/tools/r8/graph/A2;

    iget-object v5, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v5, v5, Lcom/android/tools/r8/graph/j4;->c:Lcom/android/tools/r8/origin/Origin;

    iget-object v6, p0, Lcom/android/tools/r8/graph/l4;->k:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 42
    invoke-virtual {v2, v3, v5, v4, v6}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/origin/Origin;II)V

    .line 43
    :cond_9
    iget-object v3, p0, Lcom/android/tools/r8/graph/l4;->g:Ljava/util/ArrayList;

    if-nez v3, :cond_a

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/tools/r8/graph/l4;->g:Ljava/util/ArrayList;

    .line 45
    :cond_a
    iget-object v3, p0, Lcom/android/tools/r8/graph/l4;->g:Ljava/util/ArrayList;

    .line 46
    iget-object v4, p0, Lcom/android/tools/r8/graph/l4;->k:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/tools/r8/graph/R2;->b:[Lcom/android/tools/r8/graph/R2;

    .line 47
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/tools/r8/graph/R2;

    iget-object v6, p0, Lcom/android/tools/r8/graph/l4;->l:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/tools/r8/graph/R2;

    iget-object v6, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v6, v6, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    .line 49
    iget-object v6, v6, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 50
    iget-object v6, v6, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 51
    invoke-static {v4, v5, v6}, Lcom/android/tools/r8/graph/r0;->a([Lcom/android/tools/r8/graph/R2;[Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/r0;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_b
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->K0()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/graph/l4;->n:Lcom/android/tools/r8/graph/A2;

    .line 53
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/graph/l4;->o:Lcom/android/tools/r8/graph/L4;

    .line 54
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/graph/l4;->m:Lcom/android/tools/r8/graph/H3$g;

    .line 55
    iput-object v4, v3, Lcom/android/tools/r8/graph/j1$a;->d:Lcom/android/tools/r8/graph/H3$g;

    .line 56
    iget-object v4, p0, Lcom/android/tools/r8/graph/l4;->g:Ljava/util/ArrayList;

    .line 57
    invoke-static {v4, v2}, Lcom/android/tools/r8/graph/o4;->a(Ljava/util/List;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/graph/u0;

    move-result-object v4

    .line 58
    iput-object v4, v3, Lcom/android/tools/r8/graph/j1$a;->e:Lcom/android/tools/r8/graph/u0;

    .line 59
    iput-object v0, v3, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    .line 60
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->q:Lcom/android/tools/r8/graph/u4;

    .line 61
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v3, v3, Lcom/android/tools/r8/graph/j4;->h:Lcom/android/tools/r8/internal/Ib;

    .line 62
    iput-object v3, v0, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 63
    iget-boolean v3, p0, Lcom/android/tools/r8/graph/l4;->p:Z

    .line 64
    iput-boolean v3, v0, Lcom/android/tools/r8/graph/j1$a;->o:Z

    .line 65
    iput-boolean v1, v0, Lcom/android/tools/r8/graph/j1$a;->r:Z

    .line 66
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/android/tools/r8/internal/vX;->a:Lcom/android/tools/r8/internal/vX;

    iget-object v3, p0, Lcom/android/tools/r8/graph/l4;->n:Lcom/android/tools/r8/graph/A2;

    .line 69
    new-instance v4, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v4, v1, v3}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 70
    iget-object v1, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j4;->C:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 71
    iget-object v1, p0, Lcom/android/tools/r8/graph/l4;->o:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/tools/r8/graph/l4;->o:Lcom/android/tools/r8/graph/L4;

    const/high16 v2, 0x10000

    .line 72
    iget v1, v1, Lcom/android/tools/r8/graph/g;->c:I

    .line 73
    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v1

    if-nez v1, :cond_d

    .line 74
    iget-object v1, p0, Lcom/android/tools/r8/graph/l4;->o:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    .line 75
    :cond_c
    iget-object v1, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j4;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 76
    :cond_d
    :goto_4
    iget-object v1, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j4;->A:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 77
    :cond_e
    iget-object v0, v2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object v2, p0, Lcom/android/tools/r8/graph/l4;->n:Lcom/android/tools/r8/graph/A2;

    .line 78
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v2

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring an implementation of the method `"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v2, "` because it has multiple definitions"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 82
    :goto_5
    iget-object v0, p0, Lcom/android/tools/r8/graph/l4;->h:Lcom/android/tools/r8/graph/R2;

    if-eqz v0, :cond_10

    .line 83
    iget-object v1, p0, Lcom/android/tools/r8/graph/l4;->e:Lcom/android/tools/r8/graph/j4;

    iget-object v2, p0, Lcom/android/tools/r8/graph/l4;->c:Ljava/lang/String;

    .line 84
    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->w:Ljava/util/ArrayList;

    if-nez v3, :cond_f

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/android/tools/r8/graph/j4;->w:Ljava/util/ArrayList;

    .line 86
    :cond_f
    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->w:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/tools/r8/graph/t0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h4;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-direct {v4, v1, v0}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method
