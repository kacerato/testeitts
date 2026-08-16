.class public Lk5/d$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk5/d$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lk5/d$f;


# direct methods
.method public constructor <init>(Lk5/d$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lk5/d$f$a;->b:Lk5/d$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lk5/d$f$a;->b:Lk5/d$f;

    iget-object v0, v0, Lk5/d$f;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;->Unfixed:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->setTopAnchor(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;)V

    iget-object v0, p0, Lk5/d$f$a;->b:Lk5/d$f;

    iget-object v0, v0, Lk5/d$f;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->setTopTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method
