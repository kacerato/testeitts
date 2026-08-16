.class public LI4/c$d$b$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI4/c$d$b;->a(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/GIAP/b$b;Lcom/itsmagic/engine/Core/Components/GIAP/b;Lcom/itsmagic/engine/Core/Components/GIAP/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Core/Components/GIAP/b;

.field public final synthetic c:Lcom/itsmagic/engine/Core/Components/GIAP/b$a;

.field public final synthetic d:LI4/c$d$b;


# direct methods
.method public constructor <init>(LI4/c$d$b;Lcom/itsmagic/engine/Core/Components/GIAP/b;Lcom/itsmagic/engine/Core/Components/GIAP/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$2",
            "val$product",
            "val$subPlan"
        }
    .end annotation

    iput-object p1, p0, LI4/c$d$b$a;->d:LI4/c$d$b;

    iput-object p2, p0, LI4/c$d$b$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/b;

    iput-object p3, p0, LI4/c$d$b$a;->c:Lcom/itsmagic/engine/Core/Components/GIAP/b$a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    sget-object p1, LW7/b;->f:LC8/a;

    iget-object p1, p1, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v0, "BUY["

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LI4/c$d$b$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, LI4/c$d$b$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/b;

    iget-object v1, p0, LI4/c$d$b$a;->c:Lcom/itsmagic/engine/Core/Components/GIAP/b$a;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->q(Landroid/app/Activity;Lcom/itsmagic/engine/Core/Components/GIAP/b;Lcom/itsmagic/engine/Core/Components/GIAP/b$a;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LI4/c$d$b$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]STARTED_WITHOUT_USER"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, LI4/c$d$b$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/b;

    iget-object v1, p0, LI4/c$d$b$a;->c:Lcom/itsmagic/engine/Core/Components/GIAP/b$a;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->q(Landroid/app/Activity;Lcom/itsmagic/engine/Core/Components/GIAP/b;Lcom/itsmagic/engine/Core/Components/GIAP/b$a;)V

    :goto_0
    iget-object p1, p0, LI4/c$d$b$a;->d:LI4/c$d$b;

    iget-object p1, p1, LI4/c$d$b;->a:LI4/c$d;

    iget-object p1, p1, LI4/c$d;->a:LI4/c;

    invoke-static {p1}, LI4/c;->p1(LI4/c;)LI4/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    iget-object p1, p0, LI4/c$d$b$a;->d:LI4/c$d$b;

    iget-object p1, p1, LI4/c$d$b;->a:LI4/c$d;

    iget-object p1, p1, LI4/c$d;->a:LI4/c;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method
