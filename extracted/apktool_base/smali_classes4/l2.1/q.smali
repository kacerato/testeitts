.class public final Ll2/q;
.super Ll2/r;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll2/r<",
        "Ll2/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field public static final k:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lw1/a$c;->Ja:I

    sput v0, Ll2/q;->j:I

    sget v0, Lw1/a$c;->Ta:I

    sput v0, Ll2/q;->k:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    invoke-static {p1, p2}, Ll2/q;->m(IZ)Ll2/w;

    move-result-object v0

    invoke-static {}, Ll2/q;->n()Ll2/w;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ll2/r;-><init>(Ll2/w;Ll2/w;)V

    iput p1, p0, Ll2/q;->e:I

    iput-boolean p2, p0, Ll2/q;->f:Z

    return-void
.end method

.method public static m(IZ)Ll2/w;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    new-instance p0, Ll2/s;

    invoke-direct {p0, p1}, Ll2/s;-><init>(Z)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid axis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ll2/t;

    if-eqz p1, :cond_2

    const/16 p1, 0x50

    goto :goto_0

    :cond_2
    const/16 p1, 0x30

    :goto_0
    invoke-direct {p0, p1}, Ll2/t;-><init>(I)V

    return-object p0

    :cond_3
    new-instance p0, Ll2/t;

    if-eqz p1, :cond_4

    const p1, 0x800005

    goto :goto_1

    :cond_4
    const p1, 0x800003

    :goto_1
    invoke-direct {p0, p1}, Ll2/t;-><init>(I)V

    return-object p0
.end method

.method private static n()Ll2/w;
    .locals 1

    new-instance v0, Ll2/e;

    invoke-direct {v0}, Ll2/e;-><init>()V

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

    sget p1, Ll2/q;->j:I

    return p1
.end method

.method public g(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    sget p1, Ll2/q;->k:I

    return p1
.end method

.method public bridge synthetic h()Ll2/w;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Ll2/r;->h()Ll2/w;

    move-result-object v0

    return-object v0
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

.method public o()I
    .locals 1

    iget v0, p0, Ll2/q;->e:I

    return v0
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

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Ll2/q;->f:Z

    return v0
.end method
