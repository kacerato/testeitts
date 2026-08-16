.class public LQ5/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/a;->p()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LO5/b;

.field public final synthetic c:LQ5/a;


# direct methods
.method public constructor <init>(LQ5/a;LO5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ5/a$c;->c:LQ5/a;

    iput-object p2, p0, LQ5/a$c;->b:LO5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textView",
            "i",
            "keyEvent"
        }
    .end annotation

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    iget-object p1, p0, LQ5/a$c;->b:LO5/b;

    iget-object p2, p0, LQ5/a$c;->c:LQ5/a;

    invoke-static {p2}, LQ5/a;->A(LQ5/a;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, LO5/b;->n(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
