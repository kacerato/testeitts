.class public Lgb/g;
.super LK8/f;
.source "SourceFile"


# instance fields
.field public final b:LJAVARuntime/AtomicFloat;

.field public final c:LJAVARuntime/AtomicFloat;

.field public final d:LJAVARuntime/AtomicFloat;

.field public final e:LJAVARuntime/AtomicFloat;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LK8/f;-><init>()V

    new-instance v0, LJAVARuntime/AtomicFloat;

    invoke-direct {v0}, LJAVARuntime/AtomicFloat;-><init>()V

    iput-object v0, p0, Lgb/g;->b:LJAVARuntime/AtomicFloat;

    new-instance v0, LJAVARuntime/AtomicFloat;

    invoke-direct {v0}, LJAVARuntime/AtomicFloat;-><init>()V

    iput-object v0, p0, Lgb/g;->c:LJAVARuntime/AtomicFloat;

    new-instance v0, LJAVARuntime/AtomicFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, LJAVARuntime/AtomicFloat;-><init>(F)V

    iput-object v0, p0, Lgb/g;->d:LJAVARuntime/AtomicFloat;

    new-instance v0, LJAVARuntime/AtomicFloat;

    invoke-direct {v0, v1}, LJAVARuntime/AtomicFloat;-><init>(F)V

    iput-object v0, p0, Lgb/g;->e:LJAVARuntime/AtomicFloat;

    return-void
.end method


# virtual methods
.method public d()F
    .locals 1

    iget-object v0, p0, Lgb/g;->e:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0}, LJAVARuntime/AtomicFloat;->get()F

    move-result v0

    return v0
.end method

.method public e()F
    .locals 1

    iget-object v0, p0, Lgb/g;->d:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0}, LJAVARuntime/AtomicFloat;->get()F

    move-result v0

    return v0
.end method

.method public f(Lo4/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percentageRect"
        }
    .end annotation

    invoke-virtual {p1}, Lo4/f;->e()F

    move-result v0

    invoke-virtual {p0, v0}, Lgb/g;->j(F)V

    invoke-virtual {p1}, Lo4/f;->f()F

    move-result v0

    invoke-virtual {p0, v0}, Lgb/g;->k(F)V

    invoke-virtual {p1}, Lo4/f;->d()F

    move-result v0

    invoke-virtual {p0, v0}, Lgb/g;->i(F)V

    invoke-virtual {p1}, Lo4/f;->c()F

    move-result p1

    invoke-virtual {p0, p1}, Lgb/g;->h(F)V

    return-void
.end method

.method public getX()F
    .locals 1

    iget-object v0, p0, Lgb/g;->b:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0}, LJAVARuntime/AtomicFloat;->get()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    iget-object v0, p0, Lgb/g;->c:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0}, LJAVARuntime/AtomicFloat;->get()F

    move-result v0

    return v0
.end method

.method public h(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "h"
        }
    .end annotation

    iget-object v0, p0, Lgb/g;->e:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0, p1}, LJAVARuntime/AtomicFloat;->set(F)V

    return-void
.end method

.method public i(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "w"
        }
    .end annotation

    iget-object v0, p0, Lgb/g;->d:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0, p1}, LJAVARuntime/AtomicFloat;->set(F)V

    return-void
.end method

.method public j(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iget-object v0, p0, Lgb/g;->b:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0, p1}, LJAVARuntime/AtomicFloat;->set(F)V

    return-void
.end method

.method public k(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iget-object v0, p0, Lgb/g;->c:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0, p1}, LJAVARuntime/AtomicFloat;->set(F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgb/g;->b:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgb/g;->c:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgb/g;->d:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgb/g;->e:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
