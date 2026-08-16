.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN9/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$c;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$c;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$c;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, LX9/B;

    invoke-direct {v0, p0}, LX9/B;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$c;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic c()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$c;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;->requestDraw()V

    return-void
.end method
