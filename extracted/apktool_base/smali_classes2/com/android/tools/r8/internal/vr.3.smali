.class public final Lcom/android/tools/r8/internal/vr;
.super Lcom/android/tools/r8/graph/a1;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final g:Lcom/android/tools/r8/internal/wr;

.field public final h:Ljava/util/ArrayList;

.field public final i:Lcom/android/tools/r8/internal/D60;

.field public final j:Ljava/util/ArrayList;

.field public k:I

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/wr;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/D60;Ljava/util/ArrayList;ILcom/android/tools/r8/graph/A2;Z)V
    .locals 0

    invoke-direct {p0, p5, p6, p7}, Lcom/android/tools/r8/graph/a1;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    const/4 p5, 0x0

    iput p5, p0, Lcom/android/tools/r8/internal/vr;->k:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/vr;->g:Lcom/android/tools/r8/internal/wr;

    iput-object p2, p0, Lcom/android/tools/r8/internal/vr;->h:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/tools/r8/internal/vr;->i:Lcom/android/tools/r8/internal/D60;

    iput-object p4, p0, Lcom/android/tools/r8/internal/vr;->j:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/O0$b;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/graph/a1;->a(Lcom/android/tools/r8/graph/O0$b;)V

    .line 2
    sget-boolean p1, Lcom/android/tools/r8/internal/vr;->m:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a1;->a()I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a1;->c()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/vr;->i:Lcom/android/tools/r8/internal/D60;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vr;->h:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/D60;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/o50;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/B60;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60;

    .line 8
    new-instance v3, Lcom/android/tools/r8/internal/UU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v4

    invoke-direct {v3, v4, v2}, Lcom/android/tools/r8/internal/UU;-><init>(ILcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/vr;->g:Lcom/android/tools/r8/internal/wr;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a1;->b()I

    move-result v2

    .line 10
    iget-object v3, v1, Lcom/android/tools/r8/internal/wr;->e:Lcom/android/tools/r8/internal/B60;

    if-nez v3, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v3

    iput v3, v1, Lcom/android/tools/r8/internal/wr;->b:I

    .line 12
    invoke-static {}, Lcom/android/tools/r8/internal/B60$b;->t()Lcom/android/tools/r8/internal/B60$b$a;

    move-result-object v3

    iget v4, v1, Lcom/android/tools/r8/internal/wr;->b:I

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/B60$b$a;

    iget-object v4, v1, Lcom/android/tools/r8/internal/wr;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/B60$b$a;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/B60$b$a;->d()Lcom/android/tools/r8/internal/B60$b;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/wr;->e:Lcom/android/tools/r8/internal/B60;

    .line 13
    :cond_2
    iget v3, v1, Lcom/android/tools/r8/internal/wr;->d:I

    iget-object v4, v1, Lcom/android/tools/r8/internal/wr;->e:Lcom/android/tools/r8/internal/B60;

    iget-object v7, v1, Lcom/android/tools/r8/internal/wr;->f:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/tools/r8/internal/wr;->a:Lcom/android/tools/r8/graph/u1;

    const/4 v9, 0x1

    move v5, v2

    move-object v6, v0

    invoke-static/range {v3 .. v9}, Lcom/android/tools/r8/graph/U0;->a(ILcom/android/tools/r8/internal/B60;ILcom/android/tools/r8/internal/B60;Ljava/util/List;Lcom/android/tools/r8/graph/u1;Z)V

    .line 14
    iput v2, v1, Lcom/android/tools/r8/internal/wr;->d:I

    .line 15
    iput-object v0, v1, Lcom/android/tools/r8/internal/wr;->e:Lcom/android/tools/r8/internal/B60;

    if-eq v0, p1, :cond_3

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/vr;->l:Z

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a1;->b()I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/vr;->k:I

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/O0$c;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/vr;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/O0$d;)V
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vr;->d()V

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/vr;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/P0;)V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vr;->d()V

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/vr;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/Q0;)V
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vr;->d()V

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/vr;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/R0;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/vr;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/T0;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/vr;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/vr;->k:I

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a1;->b()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/vr;->g:Lcom/android/tools/r8/internal/wr;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a1;->b()I

    move-result v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/wr;->f:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/tools/r8/graph/O0$a;

    iget v4, v0, Lcom/android/tools/r8/internal/wr;->d:I

    sub-int v4, v1, v4

    invoke-direct {v3, v4}, Lcom/android/tools/r8/graph/O0$a;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v1, v0, Lcom/android/tools/r8/internal/wr;->d:I

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a1;->b()I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/vr;->k:I

    :cond_0
    return-void
.end method
