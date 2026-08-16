.class public LW6/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW6/b;->h(LV6/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LV6/b;

.field public final synthetic b:LW6/b;


# direct methods
.method public constructor <init>(LW6/b;LV6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$l"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LW6/b$c;->b:LW6/b;

    iput-object p2, p0, LW6/b$c;->a:LV6/b;

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

    iget-object v0, p0, LW6/b$c;->b:LW6/b;

    invoke-static {v0}, LW6/b;->m(LW6/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LW6/b$c;->a:LV6/b;

    invoke-interface {p1}, LV6/b;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, LV5/a;->p1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, p0, LW6/b$c;->a:LV6/b;

    invoke-interface {v0}, LV6/b;->a()V

    return-void
.end method

.method public c(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "email",
            "confirmed",
            "confirmedAt",
            "etd"
        }
    .end annotation

    iget-object p2, p0, LW6/b$c;->b:LW6/b;

    invoke-static {p2}, LW6/b;->m(LW6/b;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-lez p4, :cond_0

    iget-object p1, p0, LW6/b$c;->a:LV6/b;

    invoke-interface {p1}, LV6/b;->b()V

    goto :goto_0

    :cond_0
    new-instance p1, LW6/b$c$a;

    invoke-direct {p1, p0}, LW6/b$c$a;-><init>(LW6/b$c;)V

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f;->c(Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LW6/b$c;->b:LW6/b;

    invoke-static {p1}, LW6/b;->m(LW6/b;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, LW6/b$c$b;

    invoke-direct {p2, p0}, LW6/b$c$b;-><init>(LW6/b$c;)V

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f;->d(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;)V

    :goto_0
    return-void
.end method
