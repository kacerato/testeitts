.class public final Lcom/android/tools/r8/graph/W;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/graph/I5;

.field public b:Lcom/android/tools/r8/graph/u2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/W;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/W;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/W;->a:Lcom/android/tools/r8/graph/I5;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/W;->a:Lcom/android/tools/r8/graph/I5;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/I0;)Lcom/android/tools/r8/graph/W;
    .locals 1

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/graph/W;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/W;->a:Lcom/android/tools/r8/graph/I5;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/W;->a:Lcom/android/tools/r8/graph/I5;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/u2;)Lcom/android/tools/r8/graph/W;
    .locals 1

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/graph/W;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/W;->b:Lcom/android/tools/r8/graph/u2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/W;->b:Lcom/android/tools/r8/graph/u2;

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/graph/b0;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/W;->a:Lcom/android/tools/r8/graph/I5;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/graph/W;->b:Lcom/android/tools/r8/graph/u2;

    if-nez v1, :cond_0

    .line 8
    sget-object v0, Lcom/android/tools/r8/graph/Z;->b:Lcom/android/tools/r8/graph/Z;

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/graph/W;->b:Lcom/android/tools/r8/graph/u2;

    return-object v0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/graph/W;->b:Lcom/android/tools/r8/graph/u2;

    if-nez v1, :cond_2

    return-object v0

    .line 11
    :cond_2
    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    new-instance v0, Lcom/android/tools/r8/graph/a0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/W;->a:Lcom/android/tools/r8/graph/I5;

    .line 13
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/graph/W;->b:Lcom/android/tools/r8/graph/u2;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/a0;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/u2;)V

    return-object v0

    .line 14
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/graph/W;->c:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/graph/W;->a:Lcom/android/tools/r8/graph/I5;

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    instance-of v0, v0, Lcom/android/tools/r8/graph/I0;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 17
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_5
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/X;

    iget-object v1, p0, Lcom/android/tools/r8/graph/W;->a:Lcom/android/tools/r8/graph/I5;

    .line 19
    invoke-interface {v1}, Lcom/android/tools/r8/graph/S;->k()Lcom/android/tools/r8/graph/I0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/graph/W;->b:Lcom/android/tools/r8/graph/u2;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/X;-><init>(Lcom/android/tools/r8/graph/I0;Lcom/android/tools/r8/graph/u2;)V

    return-object v0
.end method
