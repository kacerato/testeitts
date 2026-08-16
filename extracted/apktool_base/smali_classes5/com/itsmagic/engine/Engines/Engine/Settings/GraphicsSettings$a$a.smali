.class public Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a;->d(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;->Lite:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->g(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;)V

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->k()V

    return-void
.end method
