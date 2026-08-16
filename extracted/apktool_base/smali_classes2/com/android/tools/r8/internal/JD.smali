.class public Lcom/android/tools/r8/internal/JD;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/H5;

.field public final c:Lcom/android/tools/r8/internal/QR;

.field public final d:Lcom/android/tools/r8/internal/z10;

.field public final e:Lcom/android/tools/r8/internal/dX;

.field public final f:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/JD;->f:Ljava/util/IdentityHashMap;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/JD;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/JD;->b:Lcom/android/tools/r8/graph/H5;

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/internal/JD;->c:Lcom/android/tools/r8/internal/QR;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/JD;->d:Lcom/android/tools/r8/internal/z10;

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/internal/JD;->e:Lcom/android/tools/r8/internal/dX;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/dX;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/JD;->f:Ljava/util/IdentityHashMap;

    .line 10
    iput-object p1, p0, Lcom/android/tools/r8/internal/JD;->a:Lcom/android/tools/r8/graph/y;

    .line 11
    iput-object p2, p0, Lcom/android/tools/r8/internal/JD;->b:Lcom/android/tools/r8/graph/H5;

    .line 12
    iput-object p4, p0, Lcom/android/tools/r8/internal/JD;->c:Lcom/android/tools/r8/internal/QR;

    .line 13
    iget-object p1, p3, Lcom/android/tools/r8/internal/fB;->e:Lcom/android/tools/r8/internal/z10;

    iput-object p1, p0, Lcom/android/tools/r8/internal/JD;->d:Lcom/android/tools/r8/internal/z10;

    .line 14
    iput-object p5, p0, Lcom/android/tools/r8/internal/JD;->e:Lcom/android/tools/r8/internal/dX;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/fB;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/JD;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/JD;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/fB;)V

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/fB;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/JD;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/fB;

    .line 4
    sget-boolean p2, Lcom/android/tools/r8/internal/JD;->g:Z

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/fB;
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/JD;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/fB;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/JD;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v4, p0, Lcom/android/tools/r8/internal/JD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v6, p0, Lcom/android/tools/r8/internal/JD;->d:Lcom/android/tools/r8/internal/z10;

    sget-boolean v0, Lcom/android/tools/r8/internal/B60;->g:Z

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    iget-object v1, p2, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/B60$b;->t()Lcom/android/tools/r8/internal/B60$b$a;

    move-result-object p2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/B60$b$a;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/B60$b$a;->d()Lcom/android/tools/r8/internal/B60$b;

    move-result-object p2

    :cond_3
    move-object v7, p2

    if-nez v0, :cond_5

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/B60;->h()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/JD;->e:Lcom/android/tools/r8/internal/dX;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    sget-object v3, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/dX;->c(Lcom/android/tools/r8/graph/H5;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;

    move-result-object p2

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v0

    move-object v5, p2

    move-object v8, v0

    goto :goto_2

    :cond_6
    move-object v5, v0

    move-object v8, v3

    :goto_2
    move-object v3, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/fB;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/JD;->c:Lcom/android/tools/r8/internal/QR;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/JD;->e:Lcom/android/tools/r8/internal/dX;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/dX;->c(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/JD;->c:Lcom/android/tools/r8/internal/QR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/JD;->e:Lcom/android/tools/r8/internal/dX;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)V

    :cond_7
    return-object p2
.end method
