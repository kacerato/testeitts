.class public final Lcom/android/tools/r8/internal/ac0;
.super Lcom/android/tools/r8/internal/dc0;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/dc0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/ac0;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;)V
    .locals 1

    const-string v0, "Ljava/lang/Objects;"

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->d(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/graph/G;
    .locals 10

    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/mr0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-static {v1}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v1}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/pa;

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/tools/r8/internal/V9;

    iget-object v6, p0, Lcom/android/tools/r8/internal/mr0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v3, v6}, Lcom/android/tools/r8/internal/V9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/tools/r8/internal/O9;

    sget-object v6, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    sget-object v7, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v3, v6, v7, v2}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/tools/r8/internal/i9;

    iget-object v5, p0, Lcom/android/tools/r8/internal/mr0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v3, v5}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/tools/r8/internal/yb;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v6, p0, Lcom/android/tools/r8/internal/ac0;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    iget-object v6, p0, Lcom/android/tools/r8/internal/ac0;->c:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-static {v7}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v7

    new-instance v8, Lcom/android/tools/r8/internal/pa;

    sget-object v9, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v8, v9, v3}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/tools/r8/internal/T9;

    invoke-direct {v8, v6}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v8, v9, v5}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/tools/r8/internal/T9;

    invoke-direct {v8, v6}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/tools/r8/internal/Kw0;->f:Lcom/android/tools/r8/internal/Kw0;

    if-ne v7, v6, :cond_0

    new-instance v6, Lcom/android/tools/r8/internal/q9;

    sget-object v7, Lcom/android/tools/r8/internal/re;->d:Lcom/android/tools/r8/internal/re;

    sget-object v8, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v6, v7, v8}, Lcom/android/tools/r8/internal/q9;-><init>(Lcom/android/tools/r8/internal/re;Lcom/android/tools/r8/internal/T10;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/tools/r8/internal/O9;

    sget-object v7, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v6, v7, v8, v2}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_0
    sget-object v6, Lcom/android/tools/r8/internal/Kw0;->d:Lcom/android/tools/r8/internal/Kw0;

    if-ne v7, v6, :cond_1

    new-instance v6, Lcom/android/tools/r8/internal/q9;

    sget-object v7, Lcom/android/tools/r8/internal/re;->d:Lcom/android/tools/r8/internal/re;

    sget-object v8, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v6, v7, v8}, Lcom/android/tools/r8/internal/q9;-><init>(Lcom/android/tools/r8/internal/re;Lcom/android/tools/r8/internal/T10;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/tools/r8/internal/O9;

    sget-object v7, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v6, v7, v8, v2}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/android/tools/r8/internal/Kw0;->e:Lcom/android/tools/r8/internal/Kw0;

    if-ne v7, v6, :cond_2

    new-instance v6, Lcom/android/tools/r8/internal/q9;

    sget-object v7, Lcom/android/tools/r8/internal/re;->b:Lcom/android/tools/r8/internal/re;

    sget-object v8, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v6, v7, v8}, Lcom/android/tools/r8/internal/q9;-><init>(Lcom/android/tools/r8/internal/re;Lcom/android/tools/r8/internal/T10;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/tools/r8/internal/O9;

    sget-object v7, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v6, v7, v8, v2}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/j2;->a:Lcom/android/tools/r8/graph/A2;

    new-instance v7, Lcom/android/tools/r8/internal/ga;

    const/16 v8, 0xb8

    invoke-direct {v7, v8, v6, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/tools/r8/internal/O9;

    sget-object v7, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v6, v7, v8, v2}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    sget-boolean v6, Lcom/android/tools/r8/internal/ac0;->d:Z

    if-nez v6, :cond_5

    sget-object v6, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    if-ne v7, v6, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_1
    new-instance v6, Lcom/android/tools/r8/internal/Q9;

    sget-object v7, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v6, v7, v8, v2}, Lcom/android/tools/r8/internal/Q9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance v3, Lcom/android/tools/r8/internal/z9;

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    const-wide/16 v5, 0x1

    invoke-direct {v3, v5, v6, v4}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/tools/r8/internal/z9;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v0, v4}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mr0;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/graph/G;

    move-result-object v0

    return-object v0
.end method
