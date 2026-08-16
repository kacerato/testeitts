.class public final Lcom/android/tools/r8/internal/t10;
.super Lcom/android/tools/r8/internal/u10;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/l1;

.field public final d:Lcom/android/tools/r8/graph/l1;

.field public final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;Ljava/util/List;)V
    .locals 1

    iget-object v0, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/internal/u10;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/t10;->c:Lcom/android/tools/r8/graph/l1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/t10;->d:Lcom/android/tools/r8/graph/l1;

    iput-object p4, p0, Lcom/android/tools/r8/internal/t10;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/graph/G;
    .locals 12

    iget-object v0, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/internal/t10;->d:Lcom/android/tools/r8/graph/l1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object v3

    invoke-static {v2}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object v3

    invoke-static {v1}, Lcom/android/tools/r8/internal/u10;->b(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v4, Lcom/android/tools/r8/internal/t10;->f:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/tools/r8/internal/t10;->c:Lcom/android/tools/r8/graph/l1;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    new-instance v4, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/pa;

    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/tools/r8/internal/V9;

    iget-object v6, p0, Lcom/android/tools/r8/internal/t10;->c:Lcom/android/tools/r8/graph/l1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/V9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/tools/r8/internal/O9;

    sget-object v6, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v5, v6, v8, v4}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/tools/r8/internal/pa;

    iget-object v6, v2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte v6, v6, v7

    int-to-char v6, v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v6

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/tools/r8/internal/i9;

    iget-object v6, p0, Lcom/android/tools/r8/internal/t10;->c:Lcom/android/tools/r8/graph/l1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/tools/r8/internal/T9;

    iget-object v6, p0, Lcom/android/tools/r8/internal/t10;->c:Lcom/android/tools/r8/graph/l1;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/tools/r8/internal/ab;

    iget-object v6, p0, Lcom/android/tools/r8/internal/t10;->c:Lcom/android/tools/r8/graph/l1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-static {v6}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/G9;

    iget-object v5, v3, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    iget-object v6, v3, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/jG;Ljava/util/Deque;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/tools/r8/internal/t10;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    new-instance v6, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/ka;-><init>()V

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    new-instance v9, Lcom/android/tools/r8/internal/pa;

    iget-object v10, v2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v10, v10, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte v10, v10, v7

    int-to-char v10, v10

    invoke-static {v10}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v10

    invoke-direct {v9, v10, v7}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/android/tools/r8/internal/V9;

    invoke-direct {v9, v8}, Lcom/android/tools/r8/internal/V9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/android/tools/r8/internal/O9;

    sget-object v10, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    sget-object v11, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v9, v10, v11, v6}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/android/tools/r8/internal/pa;

    iget-object v10, v2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v10, v10, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte v10, v10, v7

    int-to-char v10, v10

    invoke-static {v10}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v10

    invoke-direct {v9, v10, v7}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/android/tools/r8/internal/i9;

    invoke-direct {v9, v8}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/tools/r8/internal/ga;

    const/16 v9, 0xb8

    invoke-direct {v8, v9, v5, v7}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/tools/r8/internal/ab;

    iget-object v8, p0, Lcom/android/tools/r8/internal/t10;->c:Lcom/android/tools/r8/graph/l1;

    iget-object v8, v8, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-static {v8}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/tools/r8/internal/G9;

    iget-object v6, v3, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    iget-object v8, v3, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-direct {v5, v6, v8}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/jG;Ljava/util/Deque;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    new-instance v3, Lcom/android/tools/r8/internal/wa;

    iget-object v4, p0, Lcom/android/tools/r8/internal/t10;->d:Lcom/android/tools/r8/graph/l1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x59

    invoke-static {v3}, Lcom/android/tools/r8/internal/kb;->a(I)Lcom/android/tools/r8/internal/kb;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/tools/r8/internal/pa;

    iget-object v4, v2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte v4, v4, v7

    int-to-char v4, v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v4

    invoke-direct {v3, v4, v7}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/tools/r8/internal/ga;

    iget-object v4, p0, Lcom/android/tools/r8/internal/t10;->d:Lcom/android/tools/r8/graph/l1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    const/16 v2, 0xb7

    invoke-direct {v3, v2, v0, v7}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/tools/r8/internal/ab;

    iget-object v2, p0, Lcom/android/tools/r8/internal/t10;->d:Lcom/android/tools/r8/graph/l1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mr0;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/graph/G;

    move-result-object v0

    return-object v0
.end method
