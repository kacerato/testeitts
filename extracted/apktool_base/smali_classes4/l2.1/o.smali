.class public final Ll2/o;
.super Ll2/r;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll2/r<",
        "Ll2/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:F = 0.8f

.field public static final f:F = 0.3f

.field public static final g:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field public static final h:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field public static final i:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lw1/a$c;->Oa:I

    sput v0, Ll2/o;->g:I

    sget v0, Lw1/a$c;->Na:I

    sput v0, Ll2/o;->h:I

    sget v0, Lw1/a$c;->Sa:I

    sput v0, Ll2/o;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ll2/o;->m()Ll2/d;

    move-result-object v0

    invoke-static {}, Ll2/o;->n()Ll2/w;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ll2/r;-><init>(Ll2/w;Ll2/w;)V

    return-void
.end method

.method public static m()Ll2/d;
    .locals 2

    new-instance v0, Ll2/d;

    invoke-direct {v0}, Ll2/d;-><init>()V

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Ll2/d;->e(F)V

    return-object v0
.end method

.method private static n()Ll2/w;
    .locals 2

    new-instance v0, Ll2/s;

    invoke-direct {v0}, Ll2/s;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ll2/s;->o(Z)V

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ll2/s;->l(F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ll2/w;)V
    .locals 0
    .param p1    # Ll2/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Ll2/r;->a(Ll2/w;)V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Ll2/r;->c()V

    return-void
.end method

.method public e(Z)Landroid/animation/TimeInterpolator;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p1, Lx1/a;->a:Landroid/animation/TimeInterpolator;

    return-object p1
.end method

.method public f(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    if-eqz p1, :cond_0

    sget p1, Ll2/o;->g:I

    goto :goto_0

    :cond_0
    sget p1, Ll2/o;->h:I

    :goto_0
    return p1
.end method

.method public g(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    sget p1, Ll2/o;->i:I

    return p1
.end method

.method public bridge synthetic i()Ll2/w;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Ll2/r;->i()Ll2/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k(Ll2/w;)Z
    .locals 0
    .param p1    # Ll2/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Ll2/r;->k(Ll2/w;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic l(Ll2/w;)V
    .locals 0
    .param p1    # Ll2/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Ll2/r;->l(Ll2/w;)V

    return-void
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Ll2/r;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Ll2/r;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method
