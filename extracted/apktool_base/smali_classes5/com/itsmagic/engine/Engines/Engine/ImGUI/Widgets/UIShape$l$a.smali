.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l$a;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "LU9/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l$a;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l$a;LU9/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l$a;->e(LU9/e;)V

    return-void
.end method

.method private synthetic e(LU9/e;)V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l$a;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;->setMaskMode(LU9/e;)V

    return-void
.end method


# virtual methods
.method public f(LU9/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, LX9/w;

    invoke-direct {v0, p0, p1}, LX9/w;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l$a;LU9/e;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, LU9/e;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l$a;->f(LU9/e;)V

    return-void
.end method
