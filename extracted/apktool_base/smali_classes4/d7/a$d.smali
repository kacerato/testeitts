.class public Ld7/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a;->v(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Ld7/a;


# direct methods
.method public constructor <init>(Ld7/a;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$d;->b:Ld7/a;

    iput-object p2, p0, Ld7/a$d;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LM7/o;ILandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "selected",
            "selectedIndex",
            "context"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-boolean p2, Lc8/b;->b:Z

    if-eqz p2, :cond_1

    invoke-static {p3}, Lc8/b;->w(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_1
    sget-boolean p2, Lc8/b;->a:Z

    if-nez p2, :cond_3

    sget-boolean p2, Lc8/b;->d:Z

    if-nez p2, :cond_3

    invoke-static {}, Ld8/j;->W()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Ld7/a$d;->b:Ld7/a;

    invoke-static {p2}, Ld7/a;->h(Ld7/a;)LM7/p;

    move-result-object p2

    invoke-virtual {p2, p1, p1}, LM7/p;->z(IZ)V

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PLEASE_WAIT_SCRIPTS_COMPILER_FINISH:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ld7/a$d;->a:Landroid/app/Activity;

    invoke-static {p1}, Lc8/b;->t(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    sget-boolean p1, Lc8/b;->a:Z

    if-eqz p1, :cond_9

    invoke-static {p3}, Lc8/b;->u(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    sget-boolean p1, Lc8/b;->a:Z

    if-eqz p1, :cond_9

    sget-boolean p1, Lc8/b;->d:Z

    if-nez p1, :cond_9

    invoke-static {p3}, Lc8/b;->m(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->i0()V

    sget-boolean p2, Lc8/b;->b:Z

    if-eqz p2, :cond_6

    invoke-static {p3}, Lc8/b;->u(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    sget-boolean p2, Lc8/b;->a:Z

    if-eqz p2, :cond_7

    sget-boolean p2, Lc8/b;->d:Z

    if-nez p2, :cond_7

    invoke-static {p3}, Lc8/b;->u(Landroid/content/Context;)V

    goto :goto_0

    :cond_7
    sget-boolean p2, Lc8/b;->a:Z

    if-nez p2, :cond_9

    invoke-static {}, Ld8/j;->W()Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PLEASE_WAIT_SCRIPTS_COMPILER_FINISH:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    iget-object p2, p0, Ld7/a$d;->b:Ld7/a;

    invoke-static {p2}, Ld7/a;->h(Ld7/a;)LM7/p;

    move-result-object p2

    invoke-virtual {p2, p1, p1}, LM7/p;->z(IZ)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Ld7/a$d;->a:Landroid/app/Activity;

    invoke-static {p1}, Lc8/b;->t(Landroid/app/Activity;)V

    :cond_9
    :goto_0
    return-void
.end method
