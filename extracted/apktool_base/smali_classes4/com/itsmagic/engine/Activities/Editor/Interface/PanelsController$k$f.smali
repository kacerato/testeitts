.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k;->d(Li4/c;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Li4/c;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k;Ljava/lang/String;Li4/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$tittle",
            "val$inflatePanelListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f;->b:Li4/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f;->a:Ljava/lang/String;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f;)V

    invoke-static {p1, v0}, Ld8/j;->I0(Ljava/lang/String;Lo8/h;)V

    return-void
.end method
