.class public final Lcom/android/tools/r8/internal/fp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jp0;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/xw0;

.field public final b:Lcom/android/tools/r8/internal/xw0;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/android/tools/r8/internal/xw0;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/lang/String;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/fp0;->f:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/fp0;->a:Lcom/android/tools/r8/internal/xw0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/fp0;->b:Lcom/android/tools/r8/internal/xw0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/fp0;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/internal/fp0;->d:Lcom/android/tools/r8/internal/xw0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Pp0;)V
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/fp0;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 3
    iget-object v1, p4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    if-nez v0, :cond_5

    if-ne v1, p4, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/fp0;->c:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 8
    invoke-static {p1, p2, p3, v1, v2}, Lcom/android/tools/r8/internal/jp0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/zE;Ljava/lang/String;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    if-nez v0, :cond_8

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/fp0;->a:Lcom/android/tools/r8/internal/xw0;

    if-nez v1, :cond_8

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_4
    if-nez v0, :cond_a

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/fp0;->b:Lcom/android/tools/r8/internal/xw0;

    if-nez v1, :cond_a

    if-eqz p2, :cond_9

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_a
    :goto_5
    sget-boolean v1, Lcom/android/tools/r8/internal/mK;->o:Z

    .line 12
    new-instance v1, Lcom/android/tools/r8/internal/lK;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/lK;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$d;->d:Lcom/android/tools/r8/graph/A2;

    .line 14
    iput-object p1, v1, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/internal/fp0;->d:Lcom/android/tools/r8/internal/xw0;

    .line 16
    iput-object p1, v1, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 17
    iget-object p1, p0, Lcom/android/tools/r8/internal/fp0;->a:Lcom/android/tools/r8/internal/xw0;

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    move-object p1, p2

    :goto_6
    iget-object v2, p0, Lcom/android/tools/r8/internal/fp0;->b:Lcom/android/tools/r8/internal/xw0;

    if-eqz v2, :cond_c

    move-object p2, v2

    .line 18
    :cond_c
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/lK;

    .line 20
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    .line 21
    iput-object p2, p1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lK;->c()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    .line 23
    invoke-interface {p3, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 24
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    if-nez v0, :cond_e

    if-ne p1, p4, :cond_d

    goto :goto_7

    .line 25
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_e
    :goto_7
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/fp0;->e:Z

    if-eqz p1, :cond_f

    .line 27
    invoke-static {p3, p4, p5, p6}, Lcom/android/tools/r8/internal/jp0;->a(Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Pp0;)V

    return-void

    .line 28
    :cond_f
    iget-object p1, p0, Lcom/android/tools/r8/internal/fp0;->d:Lcom/android/tools/r8/internal/xw0;

    const/4 p2, 0x1

    invoke-virtual {p4, p2, p1}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Lcom/android/tools/r8/internal/fp0;
    .locals 0

    return-object p0
.end method
