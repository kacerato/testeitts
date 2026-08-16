.class public final Lcom/android/tools/r8/internal/g60;
.super Lcom/android/tools/r8/internal/f60;
.source "SourceFile"


# static fields
.field public static final synthetic v:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/f60$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/internal/f60;-><init>(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/f60$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    sget-boolean p2, Lcom/android/tools/r8/internal/g60;->v:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->c()Lcom/android/tools/r8/internal/D70;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/W3;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez p2, :cond_5

    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/g60;->v:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    return-object p1

    :cond_2
    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->a()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/p10;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    return-object p1
.end method
