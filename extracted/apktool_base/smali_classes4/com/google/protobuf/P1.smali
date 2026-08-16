.class public Lcom/google/protobuf/P1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t0$g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/google/protobuf/t0;",
        "BType:",
        "Lcom/google/protobuf/t0$f;",
        "IType::",
        "Lcom/google/protobuf/e1;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/t0$g;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/protobuf/t0$g;

.field public b:Lcom/google/protobuf/t0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBType;"
        }
    .end annotation
.end field

.field public c:Lcom/google/protobuf/t0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMType;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/t0;Lcom/google/protobuf/t0$g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "parent",
            "isClean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;",
            "Lcom/google/protobuf/t0$g;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/protobuf/D0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/t0;

    iput-object p1, p0, Lcom/google/protobuf/P1;->c:Lcom/google/protobuf/t0;

    iput-object p2, p0, Lcom/google/protobuf/P1;->a:Lcom/google/protobuf/t0$g;

    iput-boolean p3, p0, Lcom/google/protobuf/P1;->d:Z

    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/P1;->b:Lcom/google/protobuf/t0$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/P1;->c:Lcom/google/protobuf/t0;

    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/P1;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/P1;->a:Lcom/google/protobuf/t0$g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/protobuf/a$b;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/P1;->d:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/P1;->i()V

    return-void
.end method

.method public b()Lcom/google/protobuf/t0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMType;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/P1;->d:Z

    invoke-virtual {p0}, Lcom/google/protobuf/P1;->f()Lcom/google/protobuf/t0;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/protobuf/P1;
    .locals 1
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/P1<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/P1;->c:Lcom/google/protobuf/t0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/e1;->getDefaultInstanceForType()Lcom/google/protobuf/Y0;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/P1;->b:Lcom/google/protobuf/t0$f;

    invoke-interface {v0}, Lcom/google/protobuf/e1;->getDefaultInstanceForType()Lcom/google/protobuf/Y0;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/google/protobuf/t0;

    iput-object v0, p0, Lcom/google/protobuf/P1;->c:Lcom/google/protobuf/t0;

    iget-object v0, p0, Lcom/google/protobuf/P1;->b:Lcom/google/protobuf/t0$f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/t0$f;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/P1;->b:Lcom/google/protobuf/t0$f;

    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/P1;->i()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/P1;->d:Z

    return-object p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/P1;->a:Lcom/google/protobuf/t0$g;

    return-void
.end method

.method public e()Lcom/google/protobuf/t0$f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/P1;->b:Lcom/google/protobuf/t0$f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/P1;->c:Lcom/google/protobuf/t0;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t0;->v6(Lcom/google/protobuf/t0$g;)Lcom/google/protobuf/Y0$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t0$f;

    iput-object v0, p0, Lcom/google/protobuf/P1;->b:Lcom/google/protobuf/t0$f;

    iget-object v1, p0, Lcom/google/protobuf/P1;->c:Lcom/google/protobuf/t0;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    iget-object v0, p0, Lcom/google/protobuf/P1;->b:Lcom/google/protobuf/t0$f;

    invoke-virtual {v0}, Lcom/google/protobuf/t0$f;->markClean()V

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/P1;->b:Lcom/google/protobuf/t0$f;

    return-object v0
.end method

.method public f()Lcom/google/protobuf/t0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/P1;->c:Lcom/google/protobuf/t0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/P1;->b:Lcom/google/protobuf/t0$f;

    invoke-interface {v0}, Lcom/google/protobuf/Y0$a;->buildPartial()Lcom/google/protobuf/Y0;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t0;

    iput-object v0, p0, Lcom/google/protobuf/P1;->c:Lcom/google/protobuf/t0;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/P1;->c:Lcom/google/protobuf/t0;

    return-object v0
.end method

.method public g()Lcom/google/protobuf/e1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/P1;->b:Lcom/google/protobuf/t0$f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/P1;->c:Lcom/google/protobuf/t0;

    return-object v0
.end method

.method public h(Lcom/google/protobuf/t0;)Lcom/google/protobuf/P1;
    .locals 2
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/google/protobuf/P1<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/P1;->b:Lcom/google/protobuf/t0$f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/P1;->c:Lcom/google/protobuf/t0;

    invoke-interface {v0}, Lcom/google/protobuf/e1;->getDefaultInstanceForType()Lcom/google/protobuf/Y0;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/P1;->c:Lcom/google/protobuf/t0;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/P1;->e()Lcom/google/protobuf/t0$f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    :goto_0
    invoke-direct {p0}, Lcom/google/protobuf/P1;->i()V

    return-object p0
.end method

.method public j(Lcom/google/protobuf/t0;)Lcom/google/protobuf/P1;
    .locals 0
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/google/protobuf/P1<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/D0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/t0;

    iput-object p1, p0, Lcom/google/protobuf/P1;->c:Lcom/google/protobuf/t0;

    iget-object p1, p0, Lcom/google/protobuf/P1;->b:Lcom/google/protobuf/t0$f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/t0$f;->dispose()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/protobuf/P1;->b:Lcom/google/protobuf/t0$f;

    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/P1;->i()V

    return-object p0
.end method
