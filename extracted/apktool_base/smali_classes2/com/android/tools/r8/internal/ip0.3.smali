.class public final Lcom/android/tools/r8/internal/ip0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jp0;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/xw0;

.field public final b:Lcom/android/tools/r8/internal/xw0;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/ip0;->d:Z

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
    iput-object p1, p0, Lcom/android/tools/r8/internal/ip0;->a:Lcom/android/tools/r8/internal/xw0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ip0;->b:Lcom/android/tools/r8/internal/xw0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/ip0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Pp0;)V
    .locals 3

    iget-object p5, p0, Lcom/android/tools/r8/internal/ip0;->c:Ljava/lang/String;

    const/4 p6, 0x0

    if-eqz p5, :cond_0

    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/internal/zE;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ip0;->c:Ljava/lang/String;

    invoke-static {p1, p2, p3, p5, v0}, Lcom/android/tools/r8/internal/jp0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/zE;Ljava/lang/String;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p5, p6

    :goto_0
    sget-boolean v0, Lcom/android/tools/r8/internal/ip0;->d:Z

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/ip0;->a:Lcom/android/tools/r8/internal/xw0;

    if-nez v1, :cond_2

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/ip0;->b:Lcom/android/tools/r8/internal/xw0;

    if-nez v0, :cond_4

    if-eqz p5, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    sget-boolean v0, Lcom/android/tools/r8/internal/mK;->o:Z

    new-instance v0, Lcom/android/tools/r8/internal/lK;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lK;-><init>()V

    sget-boolean v1, Lcom/android/tools/r8/internal/pu0;->a:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object p4

    invoke-interface {p2, v1, p4}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$d;->d:Lcom/android/tools/r8/graph/A2;

    iput-object p1, v0, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    iget-object p1, p0, Lcom/android/tools/r8/internal/ip0;->a:Lcom/android/tools/r8/internal/xw0;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move-object p1, p5

    :goto_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/ip0;->b:Lcom/android/tools/r8/internal/xw0;

    if-eqz p2, :cond_6

    move-object p5, p2

    :cond_6
    invoke-static {p1, p5}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/lK;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lK;->c()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    invoke-interface {p3, p1, p6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method
