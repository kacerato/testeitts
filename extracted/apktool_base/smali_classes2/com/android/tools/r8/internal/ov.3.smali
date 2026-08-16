.class public final Lcom/android/tools/r8/internal/ov;
.super Lcom/android/tools/r8/internal/vt0;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/vt0;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lcom/android/tools/r8/internal/Oz;

.field public final synthetic e:Lcom/android/tools/r8/internal/Cu0;

.field public final synthetic f:Lcom/android/tools/r8/internal/pv;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/pv;ZZLcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/ov;->f:Lcom/android/tools/r8/internal/pv;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/ov;->b:Z

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/ov;->c:Z

    iput-object p4, p0, Lcom/android/tools/r8/internal/ov;->d:Lcom/android/tools/r8/internal/Oz;

    iput-object p5, p0, Lcom/android/tools/r8/internal/ov;->e:Lcom/android/tools/r8/internal/Cu0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vt0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/ov;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->y()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ov;->a:Lcom/android/tools/r8/internal/vt0;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ov;->d:Lcom/android/tools/r8/internal/Oz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ov;->f:Lcom/android/tools/r8/internal/pv;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ov;->e:Lcom/android/tools/r8/internal/Cu0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/wt0;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ov;->a:Lcom/android/tools/r8/internal/vt0;

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 3

    .line 6
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/ov;->c:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->i()Lcom/android/tools/r8/internal/qL;

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ov;->a:Lcom/android/tools/r8/internal/vt0;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ov;->d:Lcom/android/tools/r8/internal/Oz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ov;->f:Lcom/android/tools/r8/internal/pv;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ov;->e:Lcom/android/tools/r8/internal/Cu0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/wt0;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ov;->a:Lcom/android/tools/r8/internal/vt0;

    .line 10
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V

    return-void
.end method
