.class public final Lcom/android/tools/r8/internal/Hu;
.super Lcom/android/tools/r8/internal/Ku;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/graph/M2;

.field public final e:Lcom/android/tools/r8/internal/ru;

.field public final f:Lcom/android/tools/r8/internal/F1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/mu;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/F1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Ku;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Hu;->d:Lcom/android/tools/r8/graph/M2;

    sget-boolean p1, Lcom/android/tools/r8/internal/mu;->f:Z

    if-nez p1, :cond_1

    iget-object p1, p3, Lcom/android/tools/r8/internal/mu;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p1, p4}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p3, Lcom/android/tools/r8/internal/mu;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p1, p4}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/qu;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qu;->c()Lcom/android/tools/r8/internal/ru;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Hu;->e:Lcom/android/tools/r8/internal/ru;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Hu;->f:Lcom/android/tools/r8/internal/F1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/F1;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hu;->d:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/Ku;->a(Ljava/util/List;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/M2;)V

    new-instance p2, Lcom/android/tools/r8/internal/ab;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hu;->d:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lcom/android/tools/r8/graph/G;
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object v1

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    move-result-object v6

    new-instance v3, Lcom/android/tools/r8/internal/tH0;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/tH0;-><init>(Lcom/android/tools/r8/internal/Hu;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hu;->e:Lcom/android/tools/r8/internal/ru;

    iget-object v4, v0, Lcom/android/tools/r8/internal/ru;->a:Lcom/android/tools/r8/internal/cC;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Hu;->f:Lcom/android/tools/r8/internal/F1;

    if-nez v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v2, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/Ku;->a(Ljava/util/ArrayList;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/wH;Ljava/lang/Object;Lcom/android/tools/r8/internal/G9$a;Z)V

    invoke-virtual {p0, v8}, Lcom/android/tools/r8/internal/mr0;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/graph/G;

    move-result-object v0

    return-object v0
.end method
