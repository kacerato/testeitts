.class public LI4/d$c$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI4/d$c;->c(LI4/f;LI4/e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LI4/e;

.field public final synthetic c:LI4/d$c;


# direct methods
.method public constructor <init>(LI4/d$c;LI4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$displayElement"
        }
    .end annotation

    iput-object p1, p0, LI4/d$c$a;->c:LI4/d$c;

    iput-object p2, p0, LI4/d$c$a;->b:LI4/e;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, LI4/d$c$a;->c:LI4/d$c;

    iget-object v0, v0, LI4/d$c;->a:LI4/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LI4/d$c$a;->b:LI4/e;

    invoke-virtual {v2}, LI4/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LI4/d$c$a;->b:LI4/e;

    invoke-virtual {v2}, LI4/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LI4/d$c$a;->b:LI4/e;

    invoke-virtual {v2}, LI4/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LI4/d$c$a;->b:LI4/e;

    invoke-virtual {v2}, LI4/e;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lr4/a$e;->Right:Lr4/a$e;

    invoke-static {v0, v1, v2, p1, v3}, LI4/c;->t1(LI4/d;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method
