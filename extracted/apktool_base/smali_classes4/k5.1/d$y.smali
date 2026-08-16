.class public Lk5/d$y;
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

    iput-object p1, p0, Lk5/d$y;->d:Lk5/d;

    invoke-direct {p0, p2, p3}, Lk5/b;-><init>(ILub/p;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
    .locals 0
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

    new-instance p1, Lk5/d$y$a;

    invoke-direct {p1, p0, p2}, Lk5/d$y$a;-><init>(Lk5/d$y;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    const/4 p2, 0x0

    invoke-static {p2, p1}, LN7/c;->l(FLjava/lang/Runnable;)V

    return-void
.end method
