.class public LK7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LK7/b$c;,
        LK7/b$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:LK7/b$c;

.field public final c:LK7/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LK7/b;->a:Landroid/content/Context;

    .line 3
    new-instance v0, LK7/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LK7/c;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, LK7/b;->c:LK7/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "enableFreePackageFilter",
            "listenerFreePackageFilter"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, LK7/b;->a:Landroid/content/Context;

    .line 6
    new-instance v0, LK7/c;

    invoke-direct {v0, p1, p2}, LK7/c;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, LK7/b;->c:LK7/c;

    .line 7
    invoke-virtual {v0, p3}, LK7/c;->m(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public static synthetic a(LK7/b;)LK7/c;
    .locals 0

    iget-object p0, p0, LK7/b;->c:LK7/c;

    return-object p0
.end method

.method public static synthetic b(LK7/b;)LK7/b$c;
    .locals 0

    iget-object p0, p0, LK7/b;->b:LK7/b$c;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 4

    new-instance v0, LK7/c$a;

    invoke-direct {v0}, LK7/c$a;-><init>()V

    sget-object v1, LK7/c$a$a;->RIGHT:LK7/c$a$a;

    iput-object v1, v0, LK7/c$a;->c:LK7/c$a$a;

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, LK7/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, LK7/b$b;

    invoke-direct {v2, p0}, LK7/b$b;-><init>(LK7/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f070218

    iget-object v3, p0, LK7/b;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iput-object v1, v0, LK7/c$a;->e:Landroid/widget/ImageView;

    iget-object v1, p0, LK7/b;->c:LK7/c;

    sget-object v2, LK7/c$b;->RIGHT:LK7/c$b;

    invoke-virtual {v1, v0, v2}, LK7/c;->a(LK7/c$a;LK7/c$b;)Landroid/view/View;

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, LK7/b;->c:LK7/c;

    invoke-virtual {v0}, LK7/c;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LK7/b;->c:LK7/c;

    invoke-virtual {v0}, LK7/c;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(LK7/b$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    iput-object p1, p0, LK7/b;->b:LK7/b$c;

    iget-object p1, p0, LK7/b;->c:LK7/c;

    new-instance v0, LK7/b$a;

    invoke-direct {v0, p0}, LK7/b$a;-><init>(LK7/b;)V

    invoke-virtual {p1, v0}, LK7/c;->l(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0}, LK7/b;->c()V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    iget-object v0, p0, LK7/b;->c:LK7/c;

    invoke-virtual {v0, p1}, LK7/c;->n(Ljava/lang/String;)V

    return-void
.end method
