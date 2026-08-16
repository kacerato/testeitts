.class public final Lcom/android/tools/r8/internal/et0;
.super Lcom/android/tools/r8/internal/wl0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/cL;

.field public final b:Lcom/android/tools/r8/internal/Oz;

.field public final c:Lcom/android/tools/r8/internal/Cu0;

.field public final d:Lcom/android/tools/r8/internal/dt0;

.field public final e:Lcom/android/tools/r8/internal/ct0;

.field public final f:Z

.field public volatile g:Lcom/android/tools/r8/internal/vt0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/cL;Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;Lcom/android/tools/r8/internal/dt0;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/wl0;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/ct0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ct0;-><init>(Lcom/android/tools/r8/internal/et0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/et0;->e:Lcom/android/tools/r8/internal/ct0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/et0;->a:Lcom/android/tools/r8/internal/cL;

    iput-object p2, p0, Lcom/android/tools/r8/internal/et0;->b:Lcom/android/tools/r8/internal/Oz;

    iput-object p3, p0, Lcom/android/tools/r8/internal/et0;->c:Lcom/android/tools/r8/internal/Cu0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/et0;->d:Lcom/android/tools/r8/internal/dt0;

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/et0;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/vt0;
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/et0;->g:Lcom/android/tools/r8/internal/vt0;

    if-eqz v0, :cond_0

    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/et0;->b:Lcom/android/tools/r8/internal/Oz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/et0;->d:Lcom/android/tools/r8/internal/dt0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/et0;->c:Lcom/android/tools/r8/internal/Cu0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/wt0;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/et0;->g:Lcom/android/tools/r8/internal/vt0;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/et0;->a:Lcom/android/tools/r8/internal/cL;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/et0;->g:Lcom/android/tools/r8/internal/vt0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/et0;->b:Lcom/android/tools/r8/internal/Oz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/et0;->d:Lcom/android/tools/r8/internal/dt0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/et0;->c:Lcom/android/tools/r8/internal/Cu0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/wt0;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/et0;->g:Lcom/android/tools/r8/internal/vt0;

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Zo0;->a(Lcom/android/tools/r8/internal/lL;)Lcom/android/tools/r8/internal/dL;

    move-result-object p1

    .line 6
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/et0;->f:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/fL;

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/et0;->a:Lcom/android/tools/r8/internal/cL;

    iget-object v1, p0, Lcom/android/tools/r8/internal/et0;->c:Lcom/android/tools/r8/internal/Cu0;

    .line 9
    iget-object v1, v1, Lcom/android/tools/r8/internal/Cu0;->b:Ljava/lang/reflect/Type;

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/et0;->e:Lcom/android/tools/r8/internal/ct0;

    invoke-interface {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/cL;->a(Lcom/android/tools/r8/internal/dL;Ljava/lang/reflect/Type;Lcom/android/tools/r8/internal/ct0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/et0;->g:Lcom/android/tools/r8/internal/vt0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/et0;->b:Lcom/android/tools/r8/internal/Oz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/et0;->d:Lcom/android/tools/r8/internal/dt0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/et0;->c:Lcom/android/tools/r8/internal/Cu0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/wt0;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/et0;->g:Lcom/android/tools/r8/internal/vt0;

    .line 15
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V

    return-void
.end method
