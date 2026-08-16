.class public Lk5/d$z;
.super Lk5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk5/d;->u(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lk5/d;


# direct methods
.method public constructor <init>(Lk5/d;ILub/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "iconPadding",
            "textureInstance"
        }
    .end annotation

    iput-object p1, p0, Lk5/d$z;->d:Lk5/d;

    invoke-direct {p0, p2, p3}, Lk5/b;-><init>(ILub/p;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "rect"
        }
    .end annotation

    new-instance v0, Lk5/d$z$a;

    invoke-direct {v0, p0, p1, p2}, Lk5/d$z$a;-><init>(Lk5/d$z;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    const/4 p1, 0x0

    invoke-static {p1, v0}, LN7/c;->l(FLjava/lang/Runnable;)V

    return-void
.end method
