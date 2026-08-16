.class public final Lk2/n;
.super Lk2/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk2/q<",
        "Lk2/d;",
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

    sput v0, Lk2/n;->g:I

    sget v0, Lw1/a$c;->Na:I

    sput v0, Lk2/n;->h:I

    sget v0, Lw1/a$c;->Sa:I

    sput v0, Lk2/n;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lk2/n;->m()Lk2/d;

    move-result-object v0

    invoke-static {}, Lk2/n;->n()Lk2/v;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lk2/q;-><init>(Lk2/v;Lk2/v;)V

    return-void
.end method

.method public static m()Lk2/d;
    .locals 2

    new-instance v0, Lk2/d;

    invoke-direct {v0}, Lk2/d;-><init>()V

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lk2/d;->e(F)V

    return-object v0
.end method

.method private static n()Lk2/v;
    .locals 2

    new-instance v0, Lk2/r;

    invoke-direct {v0}, Lk2/r;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk2/r;->o(Z)V

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lk2/r;->l(F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lk2/v;)V
    .locals 0
    .param p1    # Lk2/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lk2/q;->a(Lk2/v;)V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Lk2/q;->c()V

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

    sget p1, Lk2/n;->g:I

    goto :goto_0

    :cond_0
    sget p1, Lk2/n;->h:I

    :goto_0
    return p1
.end method

.method public g(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    sget p1, Lk2/n;->i:I

    return p1
.end method

.method public bridge synthetic i()Lk2/v;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lk2/q;->i()Lk2/v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k(Lk2/v;)Z
    .locals 0
    .param p1    # Lk2/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lk2/q;->k(Lk2/v;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic l(Lk2/v;)V
    .locals 0
    .param p1    # Lk2/v;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lk2/q;->l(Lk2/v;)V

    return-void
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lk2/q;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lk2/q;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method
