.class public Lcom/itsmagic/engine/Engines/Engine/World/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/World/b$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/World/b$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/World/b$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/World/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b$a;->a:Lcom/itsmagic/engine/Engines/Engine/World/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b$a;->a:Lcom/itsmagic/engine/Engines/Engine/World/b$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    iget-object v1, v0, LMb/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v1, :cond_0

    iget-boolean v1, v0, LMb/a;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, LMb/a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget v0, v0, LMb/a;->c:I

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->C1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, LMb/a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->B1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :goto_0
    return-void
.end method
