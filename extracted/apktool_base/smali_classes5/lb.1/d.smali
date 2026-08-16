.class public Llb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Llb/e;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "TAG",
            "name"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llb/d;->b:Ljava/lang/String;

    iput-object p2, p0, Llb/d;->c:Ljava/lang/String;

    new-instance p1, Llb/e;

    invoke-direct {p1}, Llb/e;-><init>()V

    iput-object p1, p0, Llb/d;->a:Llb/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Llb/d;->a:Llb/e;

    invoke-virtual {v0}, Llb/e;->g()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Llb/d;->a:Llb/e;

    invoke-virtual {v0}, Llb/e;->l()V

    iget-object v0, p0, Llb/d;->a:Llb/e;

    invoke-virtual {v0}, Llb/e;->n()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Llb/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llb/d;->a:Llb/e;

    invoke-virtual {v1}, Llb/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
