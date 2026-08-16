.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$f$a;
.super LZ6/c$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$f;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$f;

    invoke-direct {p0}, LZ6/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/c$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, LZ6/c$h;->a(LZ6/c$g;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$f;->b:Lp4/c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lp4/c;->close()V

    :cond_0
    return-void
.end method
