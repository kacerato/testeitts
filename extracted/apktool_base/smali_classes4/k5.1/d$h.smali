.class public Lk5/d$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk5/d;->R(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;FIZLcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

.field public final synthetic c:Lk5/d;


# direct methods
.method public constructor <init>(Lk5/d;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$anchor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lk5/d$h;->c:Lk5/d;

    iput-object p2, p0, Lk5/d$h;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lk5/d$h$a;

    invoke-direct {v0, p0}, Lk5/d$h$a;-><init>(Lk5/d$h;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
