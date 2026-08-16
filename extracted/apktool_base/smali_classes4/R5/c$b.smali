.class public LR5/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR5/c;->p()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO5/b;

.field public final synthetic b:LR5/c;


# direct methods
.method public constructor <init>(LR5/c;LO5/b;)V
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

    iput-object p1, p0, LR5/c$b;->b:LR5/c;

    iput-object p2, p0, LR5/c$b;->a:LO5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    if-nez p2, :cond_1

    iget-object p1, p0, LR5/c$b;->b:LR5/c;

    invoke-static {p1}, LR5/c;->z(LR5/c;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LR5/c$b;->b:LR5/c;

    invoke-static {p1}, LR5/c;->z(LR5/c;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, LR5/c$b;->a:LO5/b;

    invoke-virtual {p2, p1}, LO5/b;->o(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
