.class public final Lcom/android/tools/r8/ir/optimize/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/ir/optimize/h;

.field public b:Lcom/android/tools/r8/internal/xt;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/ir/optimize/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/i;->a:Lcom/android/tools/r8/ir/optimize/h;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xt;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/i;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object v0, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    return-void
.end method
