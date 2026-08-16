.class public LE5/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/f;->e(LC5/b;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;LE5/f$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:LE5/f;


# direct methods
.method public constructor <init>(LE5/f;LC5/b;Landroid/view/View;)V
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

    iput-object p1, p0, LE5/f$c;->c:LE5/f;

    iput-object p2, p0, LE5/f$c;->a:LC5/b;

    iput-object p3, p0, LE5/f$c;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lv3/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "repeater"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, LE5/f$c;->c:LE5/f;

    iget-object v0, p0, LE5/f$c;->a:LC5/b;

    iget-object v1, p0, LE5/f$c;->b:Landroid/view/View;

    invoke-static {p1, v0, v1}, LE5/f;->b(LE5/f;LC5/b;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv3/o;->b(Lv3/k;)V

    :goto_0
    :try_start_1
    iget-object p1, p0, LE5/f$c;->a:LC5/b;

    invoke-virtual {p1}, LC5/b;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv3/o;->b(Lv3/k;)V

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, LW7/b;->i:La8/a;

    iget-object p1, p1, La8/a;->a:La8/b;

    iget-object p1, p1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez p1, :cond_1

    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv3/o;->b(Lv3/k;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv3/o;->b(Lv3/k;)V

    :cond_1
    :goto_2
    return-void
.end method
