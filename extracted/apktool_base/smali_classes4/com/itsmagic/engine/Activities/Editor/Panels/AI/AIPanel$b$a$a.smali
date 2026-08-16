.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$root"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->destroy()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, LK8/a;->D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
