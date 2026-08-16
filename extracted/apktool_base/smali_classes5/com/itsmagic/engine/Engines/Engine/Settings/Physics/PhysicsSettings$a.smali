.class public Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->g(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Settings/c;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$layer",
            "val$settingsInflationListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->name:LAc/b;

    invoke-virtual {v1}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryVar"
        }
    .end annotation

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;->a:Landroid/content/Context;

    const-string v2, "Name can\'t be empty."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;->a:Landroid/content/Context;

    const-string v2, "The first letter must be an alphabetic letter."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    :cond_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    new-instance v2, LAc/b;

    invoke-direct {v2, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->c(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    const/16 v2, 0x3e8

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;->a:Landroid/content/Context;

    const-string v0, "Name already in use by another layer"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Lkd/a;

    invoke-direct {p1}, Lkd/a;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;)V

    invoke-virtual {p1, v2, v0}, Lkd/a;->a(ILkd/b;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->name:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->u0(Ljava/lang/String;)V

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->k()V

    invoke-static {}, LCc/d;->b()V

    new-instance p1, Lkd/a;

    invoke-direct {p1}, Lkd/a;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;)V

    invoke-virtual {p1, v2, v0}, Lkd/a;->a(ILkd/b;)V

    :cond_4
    :goto_1
    return-void
.end method
