.class public final Lcom/android/tools/r8/internal/VY;
.super Lcom/android/tools/r8/internal/vw;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/F1;

.field public b:I

.field public c:I

.field public d:Lcom/android/tools/r8/internal/xt;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vw;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/VY;->a:Lcom/android/tools/r8/internal/F1;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/VY;->c:I

    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/KV;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/VY;
    .locals 1

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/VY;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v0, p1, Lcom/android/tools/r8/internal/Hm0;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/VY;->a:Lcom/android/tools/r8/internal/F1;

    return-object p0
.end method

.method public final a(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/VY;
    .locals 0

    return-object p0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/VY;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/android/tools/r8/internal/F1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/VY;->a:Lcom/android/tools/r8/internal/F1;

    return-object v0
.end method

.method public final g()Lcom/android/tools/r8/internal/xt;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/VY;->c:I

    return v0
.end method

.method public final i()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/VY;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/VY;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    return-void
.end method
