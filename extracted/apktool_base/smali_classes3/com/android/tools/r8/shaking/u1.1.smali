.class public final Lcom/android/tools/r8/shaking/u1;
.super Lcom/android/tools/r8/shaking/w1;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/z1;

.field public final b:Lcom/android/tools/r8/internal/UQ;

.field public final c:Lcom/android/tools/r8/shaking/B1;

.field public final d:Lcom/android/tools/r8/internal/UQ;

.field public final e:Lcom/android/tools/r8/shaking/A1;

.field public final f:Lcom/android/tools/r8/internal/UQ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/w1;-><init>()V

    new-instance v0, Lcom/android/tools/r8/shaking/z1;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/z1;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/u1;->a:Lcom/android/tools/r8/shaking/z1;

    new-instance v0, Lcom/android/tools/r8/internal/UQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/UQ;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/u1;->b:Lcom/android/tools/r8/internal/UQ;

    new-instance v0, Lcom/android/tools/r8/shaking/B1;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/B1;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/u1;->c:Lcom/android/tools/r8/shaking/B1;

    new-instance v0, Lcom/android/tools/r8/internal/UQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/UQ;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/u1;->d:Lcom/android/tools/r8/internal/UQ;

    new-instance v0, Lcom/android/tools/r8/shaking/A1;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/A1;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/u1;->e:Lcom/android/tools/r8/shaking/A1;

    new-instance v0, Lcom/android/tools/r8/internal/UQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/UQ;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/u1;->f:Lcom/android/tools/r8/internal/UQ;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/fv;)Lcom/android/tools/r8/internal/fv;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/fv;)Lcom/android/tools/r8/internal/fv;
    .locals 0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/fv;)Lcom/android/tools/r8/internal/fv;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/I1;)Lcom/android/tools/r8/shaking/I1;
    .locals 3

    .line 20
    iget-object v0, p1, Lcom/android/tools/r8/shaking/t1;->h:Lcom/android/tools/r8/shaking/i1;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i1;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    iget-object v0, p1, Lcom/android/tools/r8/shaking/t1;->i:Lcom/android/tools/r8/shaking/i1;

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/shaking/I1;->B:Lcom/android/tools/r8/shaking/i1;

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i1;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/u1;->d:Lcom/android/tools/r8/internal/UQ;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/u1;->c:Lcom/android/tools/r8/shaking/B1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 28
    new-instance p1, Lcom/android/tools/r8/shaking/pf;

    invoke-direct {p1}, Lcom/android/tools/r8/shaking/pf;-><init>()V

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/fv;

    .line 29
    iget-object p1, p1, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 30
    check-cast p1, Lcom/android/tools/r8/shaking/I1;

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/l1;)Lcom/android/tools/r8/shaking/l1;
    .locals 3

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/shaking/t1;->h:Lcom/android/tools/r8/shaking/i1;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i1;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/shaking/t1;->i:Lcom/android/tools/r8/shaking/i1;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/u1;->b:Lcom/android/tools/r8/internal/UQ;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/u1;->a:Lcom/android/tools/r8/shaking/z1;

    .line 7
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 8
    new-instance p1, Lcom/android/tools/r8/shaking/rf;

    invoke-direct {p1}, Lcom/android/tools/r8/shaking/rf;-><init>()V

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/fv;

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 10
    check-cast p1, Lcom/android/tools/r8/shaking/l1;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/q1;)Lcom/android/tools/r8/shaking/q1;
    .locals 3

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/shaking/t1;->h:Lcom/android/tools/r8/shaking/i1;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i1;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p1, Lcom/android/tools/r8/shaking/t1;->i:Lcom/android/tools/r8/shaking/i1;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/u1;->f:Lcom/android/tools/r8/internal/UQ;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/u1;->e:Lcom/android/tools/r8/shaking/A1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 17
    new-instance p1, Lcom/android/tools/r8/shaking/qf;

    invoke-direct {p1}, Lcom/android/tools/r8/shaking/qf;-><init>()V

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/fv;

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 19
    check-cast p1, Lcom/android/tools/r8/shaking/q1;

    :cond_1
    :goto_0
    return-object p1
.end method
