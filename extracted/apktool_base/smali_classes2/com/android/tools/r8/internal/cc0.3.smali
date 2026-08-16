.class public final Lcom/android/tools/r8/internal/cc0;
.super Lcom/android/tools/r8/internal/dc0;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:Ljava/util/List;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/dc0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/cc0;->c:Ljava/util/List;

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/cc0;->d:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;)V
    .locals 4

    .line 1
    const-string v0, "Ljava/lang/Objects;"

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->d(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    const-string v0, "Ljava/lang/Double;"

    const-string v1, "Ljava/lang/Float;"

    const-string v2, "Ljava/lang/Boolean;"

    const-string v3, "Ljava/lang/Long;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/l1;I)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    .line 9
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/cc0;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v2, v1, p3}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    new-instance p3, Lcom/android/tools/r8/internal/pa;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p3, v2, v3}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p3, Lcom/android/tools/r8/internal/T9;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_0
    sget-object p3, Lcom/android/tools/r8/internal/Kw0;->f:Lcom/android/tools/r8/internal/Kw0;

    const/16 v2, 0xb8

    if-ne v1, p3, :cond_1

    .line 14
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1;->L4:Lcom/android/tools/r8/graph/I1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/I1;->f:Lcom/android/tools/r8/graph/A2;

    .line 15
    new-instance p3, Lcom/android/tools/r8/internal/ga;

    invoke-direct {p3, v2, p2, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 16
    :cond_1
    sget-object p3, Lcom/android/tools/r8/internal/Kw0;->d:Lcom/android/tools/r8/internal/Kw0;

    if-ne v1, p3, :cond_2

    .line 17
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1;->A4:Lcom/android/tools/r8/graph/K1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/K1;->e:Lcom/android/tools/r8/graph/A2;

    .line 18
    new-instance p3, Lcom/android/tools/r8/internal/ga;

    invoke-direct {p3, v2, p2, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 19
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 20
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1;->x4:Lcom/android/tools/r8/graph/u1$b;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1$b;->h:Lcom/android/tools/r8/graph/A2;

    .line 21
    new-instance p3, Lcom/android/tools/r8/internal/ga;

    invoke-direct {p3, v2, p2, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 22
    :cond_3
    sget-object p2, Lcom/android/tools/r8/internal/Kw0;->e:Lcom/android/tools/r8/internal/Kw0;

    if-ne v1, p2, :cond_4

    .line 23
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1;->C4:Lcom/android/tools/r8/graph/f2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/f2;->e:Lcom/android/tools/r8/graph/A2;

    .line 24
    new-instance p3, Lcom/android/tools/r8/internal/ga;

    invoke-direct {p3, v2, p2, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 25
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 26
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/j2;->c:Lcom/android/tools/r8/graph/A2;

    .line 27
    new-instance p3, Lcom/android/tools/r8/internal/ga;

    invoke-direct {p3, v2, p2, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 28
    :cond_5
    sget-boolean p1, Lcom/android/tools/r8/internal/cc0;->e:Z

    if-nez p1, :cond_7

    sget-object p1, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    if-ne v1, p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_1
    return-void
.end method

.method public final b()Lcom/android/tools/r8/graph/G;
    .locals 8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/cc0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/z9;

    int-to-long v5, v2

    sget-object v3, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, v5, v6, v3}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    move v2, v1

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/cc0;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p0, v4, v0, v2}, Lcom/android/tools/r8/internal/cc0;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/l1;I)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/cc0;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->T0()Z

    move-result v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/cc0;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->B0()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/cc0;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    new-instance v3, Lcom/android/tools/r8/internal/z9;

    sget-object v5, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    const-wide/16 v6, 0x1f

    invoke-direct {v3, v6, v7, v5}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/tools/r8/internal/V8;

    sget-object v5, Lcom/android/tools/r8/internal/V8$a;->d:Lcom/android/tools/r8/internal/V8$a;

    sget-object v6, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v3, v5, v6}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/tools/r8/internal/cc0;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p0, v4, v3, v2}, Lcom/android/tools/r8/internal/cc0;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/l1;I)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/cc0;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->T0()Z

    move-result v3

    or-int/2addr v0, v3

    new-instance v3, Lcom/android/tools/r8/internal/V8;

    sget-object v5, Lcom/android/tools/r8/internal/V8$a;->b:Lcom/android/tools/r8/internal/V8$a;

    invoke-direct {v3, v5, v6}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/tools/r8/internal/cc0;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->B0()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    :goto_1
    move v3, v2

    move v2, v0

    :goto_2
    new-instance v0, Lcom/android/tools/r8/internal/ab;

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/tools/r8/graph/G;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mr0;->b:Lcom/android/tools/r8/graph/M2;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v7
.end method
