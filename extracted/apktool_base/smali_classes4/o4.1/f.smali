.class public Lo4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lo4/f;


# instance fields
.field public final a:LJAVARuntime/AtomicFloat;

.field public final b:LJAVARuntime/AtomicFloat;

.field public final c:LJAVARuntime/AtomicFloat;

.field public final d:LJAVARuntime/AtomicFloat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo4/f;

    invoke-direct {v0}, Lo4/f;-><init>()V

    sput-object v0, Lo4/f;->e:Lo4/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJAVARuntime/AtomicFloat;

    invoke-direct {v0}, LJAVARuntime/AtomicFloat;-><init>()V

    iput-object v0, p0, Lo4/f;->a:LJAVARuntime/AtomicFloat;

    new-instance v1, LJAVARuntime/AtomicFloat;

    invoke-direct {v1}, LJAVARuntime/AtomicFloat;-><init>()V

    iput-object v1, p0, Lo4/f;->b:LJAVARuntime/AtomicFloat;

    new-instance v2, LJAVARuntime/AtomicFloat;

    invoke-direct {v2}, LJAVARuntime/AtomicFloat;-><init>()V

    iput-object v2, p0, Lo4/f;->c:LJAVARuntime/AtomicFloat;

    new-instance v3, LJAVARuntime/AtomicFloat;

    invoke-direct {v3}, LJAVARuntime/AtomicFloat;-><init>()V

    iput-object v3, p0, Lo4/f;->d:LJAVARuntime/AtomicFloat;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, LJAVARuntime/AtomicFloat;->set(F)V

    invoke-virtual {v1, v4}, LJAVARuntime/AtomicFloat;->set(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0}, LJAVARuntime/AtomicFloat;->set(F)V

    invoke-virtual {v3, v0}, LJAVARuntime/AtomicFloat;->set(F)V

    return-void
.end method

.method public static g()Lo4/f;
    .locals 2

    sget-object v0, Lo4/f;->e:Lo4/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo4/f;->k(F)V

    invoke-virtual {v0, v1}, Lo4/f;->l(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lo4/f;->j(F)V

    invoke-virtual {v0, v1}, Lo4/f;->i(F)V

    return-object v0
.end method


# virtual methods
.method public a()Lo4/f;
    .locals 1

    new-instance v0, Lo4/f;

    invoke-direct {v0}, Lo4/f;-><init>()V

    invoke-virtual {v0, p0}, Lo4/f;->h(Lo4/f;)Lo4/f;

    move-result-object v0

    return-object v0
.end method

.method public b(Lo4/f;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    invoke-virtual {p0}, Lo4/f;->e()F

    move-result v0

    invoke-virtual {p1}, Lo4/f;->e()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo4/f;->f()F

    move-result v0

    invoke-virtual {p1}, Lo4/f;->f()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo4/f;->d()F

    move-result v0

    invoke-virtual {p1}, Lo4/f;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo4/f;->c()F

    move-result v0

    invoke-virtual {p1}, Lo4/f;->c()F

    move-result p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()F
    .locals 1

    iget-object v0, p0, Lo4/f;->d:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0}, LJAVARuntime/AtomicFloat;->get()F

    move-result v0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lo4/f;->a()Lo4/f;

    move-result-object v0

    return-object v0
.end method

.method public d()F
    .locals 1

    iget-object v0, p0, Lo4/f;->c:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0}, LJAVARuntime/AtomicFloat;->get()F

    move-result v0

    return v0
.end method

.method public e()F
    .locals 1

    iget-object v0, p0, Lo4/f;->a:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0}, LJAVARuntime/AtomicFloat;->get()F

    move-result v0

    return v0
.end method

.method public f()F
    .locals 1

    iget-object v0, p0, Lo4/f;->b:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0}, LJAVARuntime/AtomicFloat;->get()F

    move-result v0

    return v0
.end method

.method public h(Lo4/f;)Lo4/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    invoke-virtual {p1}, Lo4/f;->e()F

    move-result v0

    invoke-virtual {p0, v0}, Lo4/f;->k(F)V

    invoke-virtual {p1}, Lo4/f;->f()F

    move-result v0

    invoke-virtual {p0, v0}, Lo4/f;->l(F)V

    invoke-virtual {p1}, Lo4/f;->d()F

    move-result v0

    invoke-virtual {p0, v0}, Lo4/f;->j(F)V

    invoke-virtual {p1}, Lo4/f;->c()F

    move-result p1

    invoke-virtual {p0, p1}, Lo4/f;->i(F)V

    return-object p0
.end method

.method public i(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "h"
        }
    .end annotation

    iget-object v0, p0, Lo4/f;->d:LJAVARuntime/AtomicFloat;

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
            "w"
        }
    .end annotation

    iget-object v0, p0, Lo4/f;->c:LJAVARuntime/AtomicFloat;

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
            "x"
        }
    .end annotation

    iget-object v0, p0, Lo4/f;->a:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0, p1}, LJAVARuntime/AtomicFloat;->set(F)V

    return-void
.end method

.method public l(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iget-object v0, p0, Lo4/f;->b:LJAVARuntime/AtomicFloat;

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

    iget-object v1, p0, Lo4/f;->a:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo4/f;->b:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo4/f;->c:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo4/f;->d:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
