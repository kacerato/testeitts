.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw5/c$I0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a;->a(Landroid/view/View;LG4/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG4/e;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a;LG4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$panel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a$a;->a:LG4/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    invoke-static {}, Ld8/j;->v0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a$a;->a:LG4/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->c()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    return-void
.end method
