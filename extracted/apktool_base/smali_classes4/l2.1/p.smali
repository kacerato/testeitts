.class public final Ll2/p;
.super Ll2/r;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll2/r<",
        "Ll2/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:F = 0.92f

.field public static final f:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field public static final g:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lw1/a$c;->Ja:I

    sput v0, Ll2/p;->f:I

    sget v0, Lw1/a$c;->Ta:I

    sput v0, Ll2/p;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ll2/p;->m()Ll2/e;

    move-result-object v0

    invoke-static {}, Ll2/p;->n()Ll2/w;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ll2/r;-><init>(Ll2/w;Ll2/w;)V

    return-void
.end method

.method public static m()Ll2/e;
    .locals 1

    new-instance v0, Ll2/e;

    invoke-direct {v0}, Ll2/e;-><init>()V

    return-object v0
.end method

.method private static n()Ll2/w;
    .locals 2

    new-instance v0, Ll2/s;

    invoke-direct {v0}, Ll2/s;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ll2/s;->o(Z)V

    const v1, 0x3f6b851f    # 0.92f

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

.method public f(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    sget p1, Ll2/p;->f:I

    return p1
.end method

.method public g(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    sget p1, Ll2/p;->g:I

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
