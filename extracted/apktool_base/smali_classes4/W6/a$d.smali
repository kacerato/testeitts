.class public LW6/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW6/a;->h(LV6/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LV6/b;

.field public final synthetic b:LW6/a;


# direct methods
.method public constructor <init>(LW6/a;LV6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$nextListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LW6/a$d;->b:LW6/a;

    iput-object p2, p0, LW6/a$d;->a:LV6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, LW6/a$d;->b:LW6/a;

    invoke-static {v0}, LW6/a;->r(LW6/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LW6/a$d;->a:LV6/b;

    invoke-interface {p1}, LV6/b;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, LV5/a;->p1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, p0, LW6/a$d;->a:LV6/b;

    invoke-interface {v0}, LV6/b;->a()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, LW6/a$d;->b:LW6/a;

    invoke-virtual {v0}, LV6/d;->i()V

    return-void
.end method
