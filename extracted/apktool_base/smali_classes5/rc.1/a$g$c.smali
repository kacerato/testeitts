.class public Lrc/a$g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:F

.field public final synthetic j:Lrc/a$g;


# direct methods
.method public constructor <init>(Lrc/a$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lrc/a$g$c;->j:Lrc/a$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lrc/a$g$c;->f:Z

    iput-boolean p1, p0, Lrc/a$g$c;->g:Z

    iput-boolean p1, p0, Lrc/a$g$c;->h:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lrc/a$g$c;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lrc/a$g$c;->e:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lrc/a$g$c;->d:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lrc/a$g$c;->a:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lrc/a$g$c;->c:Z

    return v0
.end method

.method public f(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "front"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    iput-boolean p1, p0, Lrc/a$g$c;->a:Z

    iget-boolean v0, p0, Lrc/a$g$c;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lrc/a$g$c;->h:Z

    if-nez p1, :cond_1

    iget p1, p0, Lrc/a$g$c;->i:F

    invoke-static {}, LK8/d;->e()F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lrc/a$g$c;->i:F

    const v0, 0x3e99999a    # 0.3f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    iput-boolean v1, p0, Lrc/a$g$c;->e:Z

    iput-boolean v1, p0, Lrc/a$g$c;->h:Z

    iput-boolean v1, p0, Lrc/a$g$c;->d:Z

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lrc/a$g$c;->e:Z

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lrc/a$g$c;->b:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lrc/a$g$c;->a:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lrc/a$g$c;->f:Z

    if-nez p1, :cond_3

    iput-boolean v1, p0, Lrc/a$g$c;->f:Z

    iput-boolean v1, p0, Lrc/a$g$c;->b:Z

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lrc/a$g$c;->b:Z

    :cond_3
    :goto_1
    iget-boolean p1, p0, Lrc/a$g$c;->a:Z

    if-nez p1, :cond_5

    iget-boolean v0, p0, Lrc/a$g$c;->c:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lrc/a$g$c;->g:Z

    if-nez v0, :cond_6

    iput-boolean v1, p0, Lrc/a$g$c;->c:Z

    iput-boolean v1, p0, Lrc/a$g$c;->g:Z

    goto :goto_2

    :cond_4
    iput-boolean v2, p0, Lrc/a$g$c;->c:Z

    goto :goto_2

    :cond_5
    iput-boolean v2, p0, Lrc/a$g$c;->g:Z

    :cond_6
    :goto_2
    const/4 v0, 0x0

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lrc/a$g$c;->c:Z

    if-nez p1, :cond_7

    iput-boolean v2, p0, Lrc/a$g$c;->f:Z

    iput-boolean v2, p0, Lrc/a$g$c;->h:Z

    iput v0, p0, Lrc/a$g$c;->i:F

    iput-boolean v2, p0, Lrc/a$g$c;->d:Z

    iput-boolean v2, p0, Lrc/a$g$c;->e:Z

    :cond_7
    iget-boolean p1, p0, Lrc/a$g$c;->b:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lrc/a$g$c;->c:Z

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lrc/a$g$c;->j:Lrc/a$g;

    invoke-static {p1, v0}, Lrc/a$g;->b(Lrc/a$g;F)F

    iget-object p1, p0, Lrc/a$g$c;->j:Lrc/a$g;

    invoke-static {p1, v0}, Lrc/a$g;->c(Lrc/a$g;F)F

    :cond_9
    return-void
.end method
