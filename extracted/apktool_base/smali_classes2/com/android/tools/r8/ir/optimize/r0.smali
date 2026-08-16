.class public final Lcom/android/tools/r8/ir/optimize/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ir/optimize/p0;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Pm0;

.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/internal/Pm0;)V
    .locals 2

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/r0;->b:Lcom/android/tools/r8/ir/optimize/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/r0;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    sget v1, Lcom/android/tools/r8/ir/optimize/t0;->e:I

    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/r0;->a:Lcom/android/tools/r8/internal/Pm0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;
    .locals 2

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/r0;->a:Lcom/android/tools/r8/internal/Pm0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/F1;->g0()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/r0;->a:Lcom/android/tools/r8/internal/Pm0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    instance-of v1, v1, Lcom/android/tools/r8/internal/Dm0;

    if-eqz v1, :cond_0

    goto :goto_3

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/r0;->a:Lcom/android/tools/r8/internal/Pm0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/r0;->a:Lcom/android/tools/r8/internal/Pm0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object p2

    .line 16
    iget-object p2, p2, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 18
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1

    .line 19
    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/r0;->c:Z

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/r0;->a:Lcom/android/tools/r8/internal/Pm0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    instance-of v0, v0, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    .line 23
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/r0;->a:Lcom/android/tools/r8/internal/Pm0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    instance-of p1, p1, Lcom/android/tools/r8/internal/Hm0;

    if-eqz p1, :cond_4

    goto :goto_1

    .line 25
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    return-object p1

    :cond_6
    if-nez p1, :cond_8

    .line 27
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_2
    return-object p2

    .line 28
    :cond_9
    :goto_3
    iget-object p1, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/r0;->b:Lcom/android/tools/r8/ir/optimize/s0;

    iget-object p2, p2, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 29
    sget v0, Lcom/android/tools/r8/ir/optimize/t0;->e:I

    .line 30
    iget-object p2, p2, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 31
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/zE;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/r0;->a:Lcom/android/tools/r8/internal/Pm0;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/r0;->b:Lcom/android/tools/r8/ir/optimize/s0;

    iget-object v1, v1, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 2
    sget v2, Lcom/android/tools/r8/ir/optimize/t0;->e:I

    .line 3
    iget-object v1, v1, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/r0;->b:Lcom/android/tools/r8/ir/optimize/s0;

    iget-object v2, v2, Lcom/android/tools/r8/ir/optimize/s0;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2, p2}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/r0;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    array-length v0, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/tools/r8/internal/X3;->a:Z

    const/4 v0, 0x0

    .line 8
    aget-object p2, p2, v0

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/r0;->b:Lcom/android/tools/r8/ir/optimize/s0;

    iget-object v0, v0, Lcom/android/tools/r8/ir/optimize/s0;->d:Lcom/android/tools/r8/ir/optimize/a;

    invoke-interface {p1, p2, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/r0;->b:Lcom/android/tools/r8/ir/optimize/s0;

    iput-boolean v1, p1, Lcom/android/tools/r8/ir/optimize/s0;->h:Z

    return-void
.end method
