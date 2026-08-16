.class public LE5/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/c;->b(LC5/b;Landroid/view/View;Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:LE5/c;


# direct methods
.method public constructor <init>(LE5/c;LC5/b;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry",
            "val$inputField"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LE5/c$b;->c:LE5/c;

    iput-object p2, p0, LE5/c$b;->a:LC5/b;

    iput-object p3, p0, LE5/c$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LE5/c$b;->a:LC5/b;

    iget-object v0, v0, LC5/b;->b:LD5/h;

    invoke-interface {v0}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, LTc/b;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LE5/c$b;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
