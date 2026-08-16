.class public Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message"
        }
    .end annotation

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a$a;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    const/4 p1, 0x1

    return p1
.end method
