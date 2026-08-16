.class public final Lcom/android/tools/r8/internal/Tp0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Lcom/android/tools/r8/internal/Rp0;

.field public c:Lcom/android/tools/r8/internal/Up0;

.field public d:I

.field public final synthetic e:Lcom/android/tools/r8/internal/Vp0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Vp0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tp0;->e:Lcom/android/tools/r8/internal/Vp0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tp0;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tp0;->b:Lcom/android/tools/r8/internal/Rp0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tp0;->c:Lcom/android/tools/r8/internal/Up0;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/Tp0;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;
    .locals 10

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tp0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/Sp0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v5, Lcom/android/tools/r8/internal/Rp0;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Sp0;->a()Lcom/android/tools/r8/internal/Rp0;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/yb;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Sp0;->c()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v7

    iget v5, v5, Lcom/android/tools/r8/internal/Rp0;->c:I

    invoke-direct {v6, v7, v5}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/wa;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Tp0;->e:Lcom/android/tools/r8/internal/Vp0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Vp0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/tools/r8/internal/kb;

    sget-object v2, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/tools/r8/internal/ga;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Tp0;->e:Lcom/android/tools/r8/internal/Vp0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Vp0;->c:Lcom/android/tools/r8/graph/q2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->o:Lcom/android/tools/r8/graph/A2;

    const/16 v4, 0xb7

    invoke-direct {v1, v4, v2, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tp0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_1
    const/16 v5, 0xb6

    if-ge v4, v2, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/Sp0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lcom/android/tools/r8/internal/Rp0;

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Sp0;->a()Lcom/android/tools/r8/internal/Rp0;

    move-result-object v7

    new-instance v8, Lcom/android/tools/r8/internal/pa;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Sp0;->c()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v9

    iget v7, v7, Lcom/android/tools/r8/internal/Rp0;->c:I

    invoke-direct {v8, v9, v7}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    sget-boolean v7, Lcom/android/tools/r8/internal/Tp0;->f:Z

    if-nez v7, :cond_4

    instance-of v7, v6, Lcom/android/tools/r8/internal/Up0;

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    new-instance v7, Lcom/android/tools/r8/internal/A9;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Sp0;->b()Lcom/android/tools/r8/internal/Up0;

    move-result-object v8

    iget-object v8, v8, Lcom/android/tools/r8/internal/Up0;->c:Lcom/android/tools/r8/graph/L2;

    invoke-direct {v7, v8}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_3
    new-instance v7, Lcom/android/tools/r8/internal/ga;

    iget-object v6, v6, Lcom/android/tools/r8/internal/Sp0;->a:Lcom/android/tools/r8/graph/A2;

    invoke-direct {v7, v5, v6, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/ga;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Tp0;->e:Lcom/android/tools/r8/internal/Vp0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Vp0;->c:Lcom/android/tools/r8/graph/q2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->r:Lcom/android/tools/r8/graph/A2;

    invoke-direct {v1, v5, v2, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tp0;->b:Lcom/android/tools/r8/internal/Rp0;

    const/4 v2, 0x2

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Sp0;->c()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v1

    if-ne v1, v2, :cond_6

    const/4 v3, 0x1

    :cond_6
    invoke-static {v3}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/tools/r8/internal/Tp0;->d:I

    if-le v1, v2, :cond_7

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Lcom/android/tools/r8/internal/QT;->a(I)V

    :cond_7
    return-object v0
.end method
