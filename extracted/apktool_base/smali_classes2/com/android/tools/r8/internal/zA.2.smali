.class public final Lcom/android/tools/r8/internal/zA;
.super Lcom/android/tools/r8/internal/sd;
.source "SourceFile"


# static fields
.field public static final synthetic n:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/CA;Lcom/android/tools/r8/internal/wA;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/sd;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/od;Lcom/android/tools/r8/internal/cW;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Bq;)V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/zA;->n:Z

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/sd;->i:Lcom/android/tools/r8/internal/cW;

    check-cast v1, Lcom/android/tools/r8/internal/CA;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/CA;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f1()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/sd;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;)Lcom/android/tools/r8/internal/Bq;

    move-result-object p3

    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->g:Lcom/android/tools/r8/graph/c4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/H2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/tools/r8/internal/zA;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Bq;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->i:Lcom/android/tools/r8/internal/cW;

    check-cast v0, Lcom/android/tools/r8/internal/CA;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/CA;->d(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/sd;->g:Lcom/android/tools/r8/graph/c4;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/H2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/tools/r8/internal/zA;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Bq;)V

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method
