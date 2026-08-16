.class public final Lcom/android/tools/r8/internal/Zy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jx;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Lcom/android/tools/r8/internal/bz;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/bz;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Zy;->b:Lcom/android/tools/r8/internal/bz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Zy;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/L0;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/internal/Zy;->b:Lcom/android/tools/r8/internal/bz;

    iget-object p1, p1, Lcom/android/tools/r8/internal/bz;->d:Ljava/util/IdentityHashMap;

    iget-object p3, p0, Lcom/android/tools/r8/internal/Zy;->a:Ljava/util/Set;

    new-instance p4, Lcom/android/tools/r8/internal/A41;

    invoke-direct {p4, p0, p3, p2}, Lcom/android/tools/r8/internal/A41;-><init>(Lcom/android/tools/r8/internal/Zy;Ljava/util/Set;Lcom/android/tools/r8/shaking/L0;)V

    invoke-virtual {p1, p4}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/Set;Lcom/android/tools/r8/shaking/L0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 2
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/Zy;->b:Lcom/android/tools/r8/internal/bz;

    iget-object p1, p1, Lcom/android/tools/r8/internal/bz;->a:Lcom/android/tools/r8/graph/y;

    iget-object p3, p3, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 4
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 5
    sget-boolean p3, Lcom/android/tools/r8/internal/Zy;->c:Z

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Zy;->b:Lcom/android/tools/r8/internal/bz;

    iget-object v1, v1, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->j:Lcom/android/tools/r8/graph/M2;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Zy;->b:Lcom/android/tools/r8/internal/bz;

    iget-object v0, v0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/La0;->s:Lcom/android/tools/r8/internal/Ha0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ha0;->a:Lcom/android/tools/r8/graph/A2;

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Zy;->b:Lcom/android/tools/r8/internal/bz;

    iget-object v0, v0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/La0;->t:Lcom/android/tools/r8/internal/Ia0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ia0;->b:Lcom/android/tools/r8/graph/A2;

    .line 10
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->A()V

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->B()V

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->w()V

    .line 16
    :cond_3
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 17
    iget v1, v0, Lcom/android/tools/r8/graph/g;->c:I

    and-int/lit16 v1, v1, -0x401

    .line 18
    iput v1, v0, Lcom/android/tools/r8/graph/g;->c:I

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Zy;->b:Lcom/android/tools/r8/internal/bz;

    iget-object v1, v1, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->j:Lcom/android/tools/r8/graph/M2;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 21
    iget-object p1, p0, Lcom/android/tools/r8/internal/Zy;->b:Lcom/android/tools/r8/internal/bz;

    iget-object p1, p1, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/La0;->j:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p1, p4}, Lcom/android/tools/r8/shaking/L0;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    .line 22
    iget-object p1, p0, Lcom/android/tools/r8/internal/Zy;->b:Lcom/android/tools/r8/internal/bz;

    iget-object p1, p1, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/La0;->s:Lcom/android/tools/r8/internal/Ha0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ha0;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p1, p4, v1}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V

    goto :goto_3

    :cond_4
    if-nez p3, :cond_6

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p3, p0, Lcom/android/tools/r8/internal/Zy;->b:Lcom/android/tools/r8/internal/bz;

    iget-object p3, p3, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object p3, p3, Lcom/android/tools/r8/internal/La0;->k:Lcom/android/tools/r8/graph/M2;

    .line 24
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 25
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/Zy;->b:Lcom/android/tools/r8/internal/bz;

    iget-object p1, p1, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/La0;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p1, p4}, Lcom/android/tools/r8/shaking/L0;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    .line 27
    iget-object p1, p0, Lcom/android/tools/r8/internal/Zy;->b:Lcom/android/tools/r8/internal/bz;

    iget-object p1, p1, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/La0;->t:Lcom/android/tools/r8/internal/Ia0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ia0;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p1, p4, v1}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V

    .line 28
    :goto_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/Zy;->b:Lcom/android/tools/r8/internal/bz;

    iget-object p1, p1, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    .line 29
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    .line 30
    iget-object v0, p1, Lcom/android/tools/r8/internal/La0;->a:Lcom/android/tools/r8/graph/u1;

    .line 31
    iget-object p3, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/La0;->v:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, p3, p3, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 32
    invoke-virtual {p2, p1, p4}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)V

    :cond_7
    return-void
.end method
