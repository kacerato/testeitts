.class public LW6/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW6/a;->f()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LW6/a;


# direct methods
.method public constructor <init>(LW6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LW6/a$b;->a:LW6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iget-object p1, p0, LW6/a$b;->a:LW6/a;

    invoke-static {p1}, LW6/a;->m(LW6/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, LW6/a$b;->a:LW6/a;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v0, v1}, LW6/a;->o(LW6/a;F)F

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, LW6/a$b;->a:LW6/a;

    invoke-static {v0}, LW6/a;->m(LW6/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LW6/a$b;->a:LW6/a;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v1, v2}, LW6/a;->o(LW6/a;F)F

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 1
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

    new-instance p2, Landroid/text/SpannableString;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->THIS_EMAIL_CORRECT:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "[x]"

    invoke-virtual {p3, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, LW6/a$b;->a:LW6/a;

    invoke-static {p1}, LW6/a;->q(LW6/a;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LW6/a$b;->a:LW6/a;

    invoke-static {p1}, LW6/a;->q(LW6/a;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, LW6/a$b$a;

    invoke-direct {p2, p0}, LW6/a$b$a;-><init>(LW6/a$b;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LW6/a$b;->a:LW6/a;

    invoke-static {p1}, LW6/a;->m(LW6/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, LW6/a$b;->a:LW6/a;

    invoke-static {v0, p4}, LNc/b;->N(II)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2, p3}, LW6/a;->o(LW6/a;F)F

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LW6/a$b;->a:LW6/a;

    invoke-static {p1}, LW6/a;->p(LW6/a;)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
