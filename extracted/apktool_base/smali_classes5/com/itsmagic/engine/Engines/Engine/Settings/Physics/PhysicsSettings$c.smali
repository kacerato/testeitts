.class public Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/b;


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

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Settings/c;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$settingsInflationListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$c;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$c;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$c;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->j()I

    move-result p1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$c;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    new-instance v1, LAc/b;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$c;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->d()LAc/b;

    move-result-object v2

    invoke-direct {v1, v2}, LAc/b;-><init>(LAc/b;)V

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;-><init>(LAc/b;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->a(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$c;->a:Landroid/content/Context;

    invoke-static {p1}, LK8/a;->m(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->k()V

    new-instance p1, Lkd/a;

    invoke-direct {p1}, Lkd/a;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$c$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$c$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$c;)V

    const/16 v1, 0xfa

    invoke-virtual {p1, v1, v0}, Lkd/a;->a(ILkd/b;)V

    goto :goto_0

    :cond_0
    const-string p1, "Max supported layers by physics engine:16"

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
