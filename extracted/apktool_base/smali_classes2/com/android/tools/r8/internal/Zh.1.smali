.class public final Lcom/android/tools/r8/internal/Zh;
.super Lcom/android/tools/r8/internal/fD;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/graph/l1;

.field public g:I

.field public final h:Lcom/android/tools/r8/internal/DG;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/DG;Lcom/android/tools/r8/graph/l1;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/fD;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Zh;->h:Lcom/android/tools/r8/internal/DG;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Zh;->f:Lcom/android/tools/r8/graph/l1;

    iput p3, p0, Lcom/android/tools/r8/internal/Zh;->g:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;
    .locals 1

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/r41;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r41;-><init>()V

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/R00;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/R00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xA;)Lcom/android/tools/r8/internal/WS;
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/Zh;->h:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/nG;

    .line 19
    new-instance v1, Lcom/android/tools/r8/internal/qG;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    .line 21
    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/qG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    .line 22
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/BG;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/BG;->a()Lcom/android/tools/r8/internal/pG;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/lZ;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/tools/r8/internal/Zh;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p2

    .line 26
    new-instance v0, Lcom/android/tools/r8/internal/uB;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/uB;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 27
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object p1

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/tools/r8/internal/lB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/WS;

    .line 28
    new-instance p2, Lcom/android/tools/r8/internal/Yh;

    invoke-direct {p2, p1, p3}, Lcom/android/tools/r8/internal/Yh;-><init>(Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/internal/xA;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/fB;
    .locals 7

    .line 36
    new-instance v6, Lcom/android/tools/r8/internal/Xh;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Zh;->h:Lcom/android/tools/r8/internal/DG;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Zh;->f:Lcom/android/tools/r8/graph/l1;

    iget v4, p0, Lcom/android/tools/r8/internal/Zh;->g:I

    move-object v0, v6

    move-object v2, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/Xh;-><init>(Lcom/android/tools/r8/internal/DG;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/l1;ILcom/android/tools/r8/internal/B60;)V

    .line 37
    new-instance p6, Lcom/android/tools/r8/internal/aB;

    move-object v0, p6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, v6

    move-object v5, p7

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/aB;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/on0;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/z10;)V

    .line 38
    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 8

    .line 29
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$c$a;

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$c$a;

    const/4 v1, 0x1

    .line 32
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/B60$a;->e:Z

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object v7

    .line 34
    new-instance v0, Lcom/android/tools/r8/internal/Xh;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Zh;->h:Lcom/android/tools/r8/internal/DG;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Zh;->f:Lcom/android/tools/r8/graph/l1;

    iget v6, p0, Lcom/android/tools/r8/internal/Zh;->g:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/Xh;-><init>(Lcom/android/tools/r8/internal/DG;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/l1;ILcom/android/tools/r8/internal/B60;)V

    .line 35
    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/on0;)Lcom/android/tools/r8/internal/aB;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 0

    .line 41
    const-class p1, Lcom/android/tools/r8/internal/Zh;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f6;)V
    .locals 0

    .line 39
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Zh;->a(Lcom/android/tools/r8/graph/f6;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/Mi;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Zh;->a(Lcom/android/tools/r8/graph/f6;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Zh;->i:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Zh;->h:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/oG;

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/CG;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/oG;->b:Lcom/android/tools/r8/internal/DG;

    .line 8
    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/CG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/BG;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/BG;->a()Lcom/android/tools/r8/internal/pG;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    .line 11
    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/A2;)V

    .line 13
    iget-object v0, p1, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final k0()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final l(I)V
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Zh;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/r8/internal/Zh;->g:I

    return-void
.end method

.method public final q0()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public final r0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/tools/r8/internal/Zh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
