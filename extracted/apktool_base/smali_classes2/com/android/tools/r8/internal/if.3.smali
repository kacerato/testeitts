.class public final Lcom/android/tools/r8/internal/if;
.super Lcom/android/tools/r8/internal/Do0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/graph/X1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Do0;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/if;->a:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->l5:Lcom/android/tools/r8/graph/X1;

    iput-object p1, p0, Lcom/android/tools/r8/internal/if;->b:Lcom/android/tools/r8/graph/X1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;)Lcom/android/tools/r8/internal/EE;
    .locals 0

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    iget-object p4, p0, Lcom/android/tools/r8/internal/if;->b:Lcom/android/tools/r8/graph/X1;

    iget-object p4, p4, Lcom/android/tools/r8/graph/X1;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/internal/if;->b:Lcom/android/tools/r8/graph/X1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/X1;->a:Lcom/android/tools/r8/graph/l1;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/android/tools/r8/internal/if;->b:Lcom/android/tools/r8/graph/X1;

    iget-object p4, p4, Lcom/android/tools/r8/graph/X1;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/internal/if;->b:Lcom/android/tools/r8/graph/X1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/X1;->b:Lcom/android/tools/r8/graph/l1;

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/android/tools/r8/internal/if;->b:Lcom/android/tools/r8/graph/X1;

    iget-object p4, p4, Lcom/android/tools/r8/graph/X1;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/tools/r8/internal/if;->b:Lcom/android/tools/r8/graph/X1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/X1;->c:Lcom/android/tools/r8/graph/l1;

    goto :goto_0

    :cond_2
    move-object p2, p5

    :goto_0
    if-eqz p2, :cond_4

    invoke-interface {p3}, Lcom/android/tools/r8/internal/AE;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p4

    if-nez p4, :cond_3

    invoke-interface {p3}, Lcom/android/tools/r8/internal/EE;->i()V

    return-object p3

    :cond_3
    new-instance p6, Lcom/android/tools/r8/internal/Mo0;

    invoke-interface {p1, p4, p5}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-direct {p6, p2, p1}, Lcom/android/tools/r8/internal/Mo0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    invoke-interface {p3, p6}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    :cond_4
    return-object p3
.end method

.method public final getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/if;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->r2:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method
