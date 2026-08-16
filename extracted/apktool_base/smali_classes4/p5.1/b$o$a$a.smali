.class public Lp5/b$o$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp5/b$o$a;->a(Lq7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq7/a;

.field public final synthetic b:Lp5/b$o$a;


# direct methods
.method public constructor <init>(Lp5/b$o$a;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$loadingBar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lp5/b$o$a$a;->b:Lp5/b$o$a;

    iput-object p2, p0, Lp5/b$o$a$a;->a:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    iget-object p1, p0, Lp5/b$o$a$a;->a:Lq7/a;

    invoke-virtual {p1}, Lq7/a;->p1()V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, LV5/a;->p1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, p0, Lp5/b$o$a$a;->a:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    return-void
.end method

.method public c()V
    .locals 3

    new-instance v0, Lbd/a;

    const-string v1, "You are already exporting a project. Wait for completion"

    const-string v2, "Voc\u00ea j\u00e1 est\u00e1 exportando um projeto. Aguarde a finaliza\u00e7\u00e3o"

    invoke-direct {v0, v1, v2}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    iget-object v0, p0, Lp5/b$o$a$a;->a:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    return-void
.end method

.method public d()V
    .locals 1

    new-instance v0, Lp5/b$o$a$a$a;

    invoke-direct {v0, p0}, Lp5/b$o$a$a$a;-><init>(Lp5/b$o$a$a;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->i(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;)V

    return-void
.end method
