.class public final Lcom/android/tools/r8/internal/Lc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jv;


# static fields
.field public static final a:Lcom/android/tools/r8/internal/Lc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Lc;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Lc;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Lc;->a:Lcom/android/tools/r8/internal/Lc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/iv;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/H5;)Z
    .locals 1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result p2

    const/4 p4, 0x0

    if-nez p2, :cond_6

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1$d;->x:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1$d;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$d;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return p4

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->y1()Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return p4

    :cond_5
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    :goto_1
    return p4
.end method
