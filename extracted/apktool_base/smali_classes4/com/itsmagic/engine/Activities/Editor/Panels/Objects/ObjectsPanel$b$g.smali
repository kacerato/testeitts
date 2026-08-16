.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$b;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$b;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$gameObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$b$g;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$b;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$b$g;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$b$g;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$b;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$b$g;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->P1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method
