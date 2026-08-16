.class public abstract Lcom/android/tools/r8/graph/h1;
.super Lcom/android/tools/r8/graph/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/android/tools/r8/graph/h1<",
        "TD;TR;>;R:",
        "Lcom/android/tools/r8/graph/v2<",
        "TD;TR;>;>",
        "Lcom/android/tools/r8/graph/b1;"
    }
.end annotation


# instance fields
.field public final d:Z

.field public e:Lcom/android/tools/r8/androidapi/f;

.field public final f:Lcom/android/tools/r8/graph/v2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/u0;ZLcom/android/tools/r8/androidapi/f;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/graph/b1;-><init>(Lcom/android/tools/r8/graph/u0;)V

    iput-object p1, p0, Lcom/android/tools/r8/graph/h1;->f:Lcom/android/tools/r8/graph/v2;

    iput-boolean p3, p0, Lcom/android/tools/r8/graph/h1;->d:Z

    iput-object p4, p0, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/g1;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract A0()Lcom/android/tools/r8/graph/H3$d;
.end method

.method public B0()Lcom/android/tools/r8/graph/M2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    return-object v0
.end method

.method public C0()Lcom/android/tools/r8/graph/L2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    return-object v0
.end method

.method public abstract D0()Lcom/android/tools/r8/internal/KV;
.end method

.method public E0()Lcom/android/tools/r8/graph/v2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/h1;->f:Lcom/android/tools/r8/graph/v2;

    return-object v0
.end method

.method public F0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/h1;->d:Z

    return v0
.end method

.method public final G0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    return v0
.end method

.method public final H0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v0

    return v0
.end method

.method public abstract a(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/xd;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/xd;-><init>(Ljava/util/function/Consumer;)V

    new-instance p1, Lcom/android/tools/r8/graph/yd;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/graph/yd;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/graph/h1;->a(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    return-void
.end method

.method public abstract c0()Lcom/android/tools/r8/kotlin/Q;
.end method

.method public final bridge synthetic getReference()Lcom/android/tools/r8/graph/J2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    return-object v0
.end method

.method public final n0()Lcom/android/tools/r8/graph/h1;
    .locals 0

    return-object p0
.end method

.method public abstract t()V
.end method

.method public final u0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public x0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->w0()Z

    move-result v0

    return v0
.end method

.method public abstract y0()V
.end method

.method public abstract z0()Lcom/android/tools/r8/androidapi/f;
.end method
