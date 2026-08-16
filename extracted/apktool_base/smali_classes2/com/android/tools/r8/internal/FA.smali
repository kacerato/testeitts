.class public Lcom/android/tools/r8/internal/FA;
.super Lcom/android/tools/r8/internal/o;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public c:Lcom/android/tools/r8/graph/j3;

.field public d:Lcom/android/tools/r8/graph/M2;

.field public e:Lcom/android/tools/r8/graph/M2;

.field public f:Lcom/android/tools/r8/graph/l1;

.field public g:Lcom/android/tools/r8/graph/k3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/o;-><init>(Lcom/android/tools/r8/graph/u1;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/l1;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/FA;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FA;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/FA;->f:Lcom/android/tools/r8/graph/l1;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/FA;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FA;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/FA;->c:Lcom/android/tools/r8/graph/j3;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 6
    check-cast v0, Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/g;->a(I)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FA;->f:Lcom/android/tools/r8/graph/l1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
