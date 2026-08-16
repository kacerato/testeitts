.class public abstract Lcom/android/tools/r8/internal/Pf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/H5;

.field public final c:Lcom/android/tools/r8/internal/Sw;

.field public final d:Lcom/android/tools/r8/internal/bX;

.field public final e:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Sw;Lcom/android/tools/r8/internal/bX;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pf;->e:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pf;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Pf;->b:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Pf;->c:Lcom/android/tools/r8/internal/Sw;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Pf;->d:Lcom/android/tools/r8/internal/bX;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/GE;)Lcom/android/tools/r8/internal/Vf;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pf;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Vf;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->k()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Vf;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->h()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/f60;)Lcom/android/tools/r8/internal/Vf;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Vf;

    move-result-object v0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Pf;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/internal/f60;)Lcom/android/tools/r8/internal/Vf;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Vf;
.end method
