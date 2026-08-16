.class public Lcom/android/tools/r8/internal/CE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/android/tools/r8/internal/zE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/W5;

.field public c:Lcom/android/tools/r8/internal/zE;

.field public d:Lcom/android/tools/r8/internal/zE;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/W5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/CE;->b:Lcom/android/tools/r8/internal/W5;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/zE;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/CE;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CE;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/internal/zE;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V
    .locals 4

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/CE;->f:Z

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    :goto_1
    if-eqz v1, :cond_3

    if-ne v1, p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    goto :goto_1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_4
    :goto_2
    iget v1, p0, Lcom/android/tools/r8/internal/CE;->e:I

    if-nez v1, :cond_7

    if-nez v0, :cond_6

    if-nez p2, :cond_5

    goto :goto_3

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_6
    :goto_3
    iput-object p1, p0, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    .line 10
    iput-object p1, p0, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    goto :goto_5

    :cond_7
    if-nez p2, :cond_8

    .line 11
    iget-object p2, p0, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    iput-object p2, p1, Lcom/android/tools/r8/internal/zE;->c:Lcom/android/tools/r8/internal/zE;

    .line 12
    iput-object p1, p2, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    .line 13
    iput-object p1, p0, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    goto :goto_5

    .line 14
    :cond_8
    iget-object v2, p2, Lcom/android/tools/r8/internal/zE;->c:Lcom/android/tools/r8/internal/zE;

    .line 15
    iput-object v2, p1, Lcom/android/tools/r8/internal/zE;->c:Lcom/android/tools/r8/internal/zE;

    .line 16
    iput-object p2, p1, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    .line 17
    iput-object p1, p2, Lcom/android/tools/r8/internal/zE;->c:Lcom/android/tools/r8/internal/zE;

    if-nez v2, :cond_b

    if-nez v0, :cond_a

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    if-ne v0, p2, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_a
    :goto_4
    iput-object p1, p0, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    goto :goto_5

    .line 20
    :cond_b
    iput-object p1, v2, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 21
    iput v1, p0, Lcom/android/tools/r8/internal/CE;->e:I

    .line 22
    iget-object p2, p0, Lcom/android/tools/r8/internal/CE;->b:Lcom/android/tools/r8/internal/W5;

    iput-object p2, p1, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    .line 23
    iget-object p2, p2, Lcom/android/tools/r8/internal/W5;->p:Lcom/android/tools/r8/internal/mB;

    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result p1

    const-wide/16 v0, 0x1

    const/16 v2, 0x40

    if-ge p1, v2, :cond_c

    .line 26
    iget-wide v2, p2, Lcom/android/tools/r8/internal/mB;->b:J

    shl-long/2addr v0, p1

    or-long/2addr v0, v2

    iput-wide v0, p2, Lcom/android/tools/r8/internal/mB;->b:J

    return-void

    .line 27
    :cond_c
    sget-boolean v3, Lcom/android/tools/r8/internal/mB;->d:Z

    if-nez v3, :cond_e

    const/16 v3, 0x80

    if-ge p1, v3, :cond_d

    goto :goto_6

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_6
    sub-int/2addr p1, v2

    .line 28
    iget-wide v2, p2, Lcom/android/tools/r8/internal/mB;->c:J

    shl-long/2addr v0, p1

    or-long/2addr v0, v2

    iput-wide v0, p2, Lcom/android/tools/r8/internal/mB;->c:J

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 5

    .line 29
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 31
    iget-object v4, v3, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 32
    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 33
    iput-object v4, v3, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    sget-boolean v0, Lcom/android/tools/r8/internal/CE;->f:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 36
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/ir/optimize/a;)V

    .line 38
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 39
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/zE;->c(Lcom/android/tools/r8/internal/zE;)V

    .line 40
    iget-object p3, p2, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    if-eqz p3, :cond_5

    goto :goto_2

    .line 41
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 42
    :goto_2
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public b()Lcom/android/tools/r8/internal/zE;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/CE;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CE;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)V
    .locals 3

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/CE;->f:Z

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    .line 7
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->c:Lcom/android/tools/r8/internal/zE;

    .line 8
    iget-object v1, p1, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    if-ne v2, p1, :cond_3

    .line 10
    iput-object v1, p0, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    .line 11
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    if-ne v2, p1, :cond_4

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    :cond_4
    if-eqz v0, :cond_5

    .line 13
    iput-object v1, v0, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    :cond_5
    if-eqz v1, :cond_6

    .line 14
    iput-object v0, v1, Lcom/android/tools/r8/internal/zE;->c:Lcom/android/tools/r8/internal/zE;

    .line 15
    :cond_6
    iget p1, p0, Lcom/android/tools/r8/internal/CE;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/CE;->e:I

    return-void
.end method

.method public c()Lcom/android/tools/r8/internal/Y5;
    .locals 3

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Y5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/CE;->b:Lcom/android/tools/r8/internal/W5;

    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;I)V

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/internal/zE;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/CE;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->U0()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void

    .line 4
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/cj;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cj;-><init>()V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/internal/zE;)V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/CE;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CE;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/tools/r8/internal/W5;->p:Lcom/android/tools/r8/internal/mB;

    iget-object v1, p0, Lcom/android/tools/r8/internal/CE;->b:Lcom/android/tools/r8/internal/W5;

    iget-object v1, v1, Lcom/android/tools/r8/internal/W5;->p:Lcom/android/tools/r8/internal/mB;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    iget-object v0, v2, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    iput-object v0, p0, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->c:Lcom/android/tools/r8/internal/zE;

    iput-object v0, v2, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iput-object v1, v2, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    goto :goto_2

    :cond_4
    iput-object v1, v0, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    iput-object v1, p1, Lcom/android/tools/r8/internal/zE;->c:Lcom/android/tools/r8/internal/zE;

    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/CE;->b:Lcom/android/tools/r8/internal/W5;

    const/4 v1, 0x0

    :goto_3
    if-eqz p1, :cond_5

    add-int/lit8 v1, v1, 0x1

    iput-object v0, p1, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    goto :goto_3

    :cond_5
    iput v1, p0, Lcom/android/tools/r8/internal/CE;->e:I

    iget p1, v2, Lcom/android/tools/r8/internal/CE;->e:I

    sub-int/2addr p1, v1

    iput p1, v2, Lcom/android/tools/r8/internal/CE;->e:I

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    return-object v0
.end method

.method public j(I)Lcom/android/tools/r8/internal/zE;
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/internal/CE;->f:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/CE;->e:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/android/tools/r8/internal/CE;->e:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/CE;->e:I

    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-le p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->c:Lcom/android/tools/r8/internal/zE;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    :goto_2
    if-ge v2, p1, :cond_4

    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/CE;->e:I

    return v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/tools/r8/internal/zE;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/BE;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/BE;-><init>(Lcom/android/tools/r8/internal/CE;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
