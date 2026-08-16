.class public LY6/a$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY6/a$e;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LY6/a$e;


# direct methods
.method public constructor <init>(LY6/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LY6/a$e$a;->a:LY6/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldd/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "name"
        }
    .end annotation

    iget-object p1, p0, LY6/a$e$a;->a:LY6/a$e;

    iget-object p1, p1, LY6/a$e;->c:LY6/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    new-instance p2, Ln4/a;

    invoke-direct {p2}, Ln4/a;-><init>()V

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->B0(Ln4/f;)Z

    return-void
.end method
