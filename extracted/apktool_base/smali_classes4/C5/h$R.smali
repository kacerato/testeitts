.class public LC5/h$R;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b;


# direct methods
.method public constructor <init>(LC5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/h$R;->a:LC5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compoundButton",
            "b"
        }
    .end annotation

    iget-object p1, p0, LC5/h$R;->a:LC5/b;

    if-eqz p1, :cond_0

    iget-object p1, p1, LC5/b;->Q:LC5/a;

    if-eqz p1, :cond_0

    iput-boolean p2, p1, LC5/a;->c:Z

    iget-object p1, p1, LC5/a;->g:LD5/h;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, ""

    invoke-direct {v0, v1, p2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {p1, v0}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    :cond_0
    return-void
.end method
