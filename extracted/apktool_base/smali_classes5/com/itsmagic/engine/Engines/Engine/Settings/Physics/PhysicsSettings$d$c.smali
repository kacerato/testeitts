.class public Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->e(Landroid/widget/TableLayout;Landroid/view/LayoutInflater;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$layer",
            "val$layerX"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isChecked"
        }
    .end annotation

    const-string p1, "<->"

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->f(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->f(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->name:LAc/b;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->name:LAc/b;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " OFF"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->r(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->r(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->name:LAc/b;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->name:LAc/b;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ON"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->a:Landroid/content/Context;

    invoke-static {p1}, LK8/a;->m(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->k()V

    invoke-static {}, LCc/d;->b()V

    return-void
.end method
