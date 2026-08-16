.class public final Lcom/android/tools/r8/graph/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ir0;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/graph/j;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/graph/g3;

.field public final synthetic d:Lcom/android/tools/r8/internal/R00;

.field public final synthetic e:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/g3;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/graph/p;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/p;->c:Lcom/android/tools/r8/graph/g3;

    iput-object p3, p0, Lcom/android/tools/r8/graph/p;->d:Lcom/android/tools/r8/internal/R00;

    iput-object p4, p0, Lcom/android/tools/r8/graph/p;->e:Lcom/android/tools/r8/internal/Hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/graph/p;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/p;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/p;->b:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/p;->b:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->h()Lcom/android/tools/r8/shaking/i;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/p;->c:Lcom/android/tools/r8/graph/g3;

    iget-object v2, p0, Lcom/android/tools/r8/graph/p;->d:Lcom/android/tools/r8/internal/R00;

    iget-object v3, p0, Lcom/android/tools/r8/graph/p;->e:Lcom/android/tools/r8/internal/Hz;

    .line 6
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/g3;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/p;->a:Lcom/android/tools/r8/graph/j;

    return-void

    .line 7
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/graph/p;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/graph/p;->b:Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/p;->b:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/graph/p;->b:Lcom/android/tools/r8/graph/y;

    .line 15
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 16
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/graph/p;->d:Lcom/android/tools/r8/internal/R00;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/j;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/p;->a:Lcom/android/tools/r8/graph/j;

    return-void
.end method
