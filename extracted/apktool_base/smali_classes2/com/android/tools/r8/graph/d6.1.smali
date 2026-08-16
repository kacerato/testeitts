.class public final Lcom/android/tools/r8/graph/d6;
.super Lcom/android/tools/r8/graph/T;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/T;-><init>(Lcom/android/tools/r8/graph/y;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/T;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/T;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/graph/T;->b:I

    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-nez v0, :cond_6

    instance-of v0, p1, Lcom/android/tools/r8/graph/I0;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    goto :goto_1

    :cond_6
    :goto_0
    move v0, v4

    :goto_1
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/graph/T;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_a

    iget-object v5, p0, Lcom/android/tools/r8/graph/T;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {v5, v0}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_a

    iget v5, p0, Lcom/android/tools/r8/graph/T;->b:I

    invoke-static {v5}, Lcom/android/tools/r8/c;->b(I)I

    move-result v5

    if-eqz v5, :cond_9

    if-eq v5, v4, :cond_9

    if-eq v5, v3, :cond_9

    if-ne v5, v2, :cond_8

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v5

    goto :goto_2

    :cond_8
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    :cond_9
    move v5, v4

    :goto_2
    if-eqz v5, :cond_a

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/d6;->a(Lcom/android/tools/r8/graph/E0;)V

    :cond_a
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/T;->e:Z

    if-nez v0, :cond_e

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v0, p1

    :goto_3
    if-ge v1, v0, :cond_e

    aget-object v5, p1, v1

    iget-object v6, p0, Lcom/android/tools/r8/graph/T;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {v6, v5}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    if-eqz v5, :cond_d

    iget v6, p0, Lcom/android/tools/r8/graph/T;->b:I

    invoke-static {v6}, Lcom/android/tools/r8/c;->b(I)I

    move-result v6

    if-eqz v6, :cond_c

    if-eq v6, v4, :cond_c

    if-eq v6, v3, :cond_c

    if-ne v6, v2, :cond_b

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v6

    goto :goto_4

    :cond_b
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    :cond_c
    move v6, v4

    :goto_4
    if-eqz v6, :cond_d

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/graph/d6;->a(Lcom/android/tools/r8/graph/E0;)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    :goto_5
    return-void
.end method
