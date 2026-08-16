.class public final Lcom/skydoves/powerspinner/PowerSpinnerView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPowerSpinnerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PowerSpinnerView.kt\ncom/skydoves/powerspinner/PowerSpinnerView\n+ 2 WhatIfExtension.kt\ncom/skydoves/powerspinner/WhatIfExtensionKt\n*L\n1#1,855:1\n32#2,2:856\n47#2,4:858\n34#2:862\n51#2,2:863\n36#2:865\n32#2,2:866\n47#2,4:868\n34#2:872\n51#2,2:873\n36#2:875\n*E\n*S KotlinDebug\n*F\n+ 1 PowerSpinnerView.kt\ncom/skydoves/powerspinner/PowerSpinnerView\n*L\n528#1,2:856\n528#1,4:858\n528#1:862\n528#1,2:863\n528#1:865\n725#1,2:866\n725#1,4:868\n725#1:872\n725#1,2:873\n725#1:875\n*E\n"
.end annotation


# instance fields
.field public A:LOd/h;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public B:LOd/f;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public C:LOd/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public D:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public E:Landroidx/lifecycle/LifecycleOwner;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:LPd/b;

.field public final c:Landroid/widget/PopupWindow;

.field public d:Z

.field public e:I

.field public f:LOd/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOd/k<",
            "*>;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:J

.field public i:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:J

.field public k:Z

.field public l:J

.field public m:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public n:Z

.field public o:LOd/p;

.field public p:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field public q:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public r:Z

.field public s:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field public t:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public u:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public v:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field public w:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, LPd/b;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)LPd/b;

    move-result-object p1

    const-string v1, "LayoutBodyPowerSpinnerLi\u2026om(context), null, false)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->b:LPd/b;

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->e:I

    .line 4
    new-instance v3, LOd/b;

    invoke-direct {v3, p0}, LOd/b;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    iput-object v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    const/4 v3, 0x1

    .line 5
    iput-boolean v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->g:Z

    const-wide/16 v4, 0xfa

    .line 6
    iput-wide v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->h:J

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LOd/n$f;->w0:I

    invoke-static {v4, v0}, LOd/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->i:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0x96

    .line 8
    iput-wide v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->j:J

    const/high16 v0, -0x80000000

    .line 9
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->m:I

    .line 10
    iput-boolean v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->n:Z

    .line 11
    sget-object v2, LOd/p;->END:LOd/p;

    iput-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->o:LOd/p;

    .line 12
    iput v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->q:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 13
    invoke-static {p0, v2}, LOd/a;->d(Landroid/view/View;F)I

    move-result v2

    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:I

    .line 14
    iput v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:I

    const v2, 0x10013

    .line 15
    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:I

    const/4 v2, 0x4

    .line 16
    invoke-static {p0, v2}, LOd/a;->e(Landroid/view/View;I)I

    move-result v2

    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->v:I

    .line 17
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->w:I

    .line 18
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->x:I

    .line 19
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->y:I

    .line 20
    iput-boolean v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->z:Z

    .line 21
    sget-object v0, LOd/o;->NORMAL:LOd/o;

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->C:LOd/o;

    .line 22
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    if-eqz v2, :cond_1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Adapter<*>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_2
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow;

    .line 25
    iget-object p1, p1, LPd/b;->b:Landroid/widget/FrameLayout;

    const/4 v2, -0x2

    .line 26
    invoke-direct {v0, p1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->c:Landroid/widget/PopupWindow;

    .line 27
    new-instance p1, Lcom/skydoves/powerspinner/PowerSpinnerView$a;

    invoke-direct {p1, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$a;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x10

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 30
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 31
    instance-of v0, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_4

    .line 32
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attributeSet"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, LPd/b;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)LPd/b;

    move-result-object p1

    const-string v1, "LayoutBodyPowerSpinnerLi\u2026om(context), null, false)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->b:LPd/b;

    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->e:I

    .line 36
    new-instance v3, LOd/b;

    invoke-direct {v3, p0}, LOd/b;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    iput-object v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    const/4 v3, 0x1

    .line 37
    iput-boolean v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->g:Z

    const-wide/16 v4, 0xfa

    .line 38
    iput-wide v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->h:J

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LOd/n$f;->w0:I

    invoke-static {v4, v0}, LOd/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->i:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0x96

    .line 40
    iput-wide v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->j:J

    const/high16 v0, -0x80000000

    .line 41
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->m:I

    .line 42
    iput-boolean v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->n:Z

    .line 43
    sget-object v2, LOd/p;->END:LOd/p;

    iput-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->o:LOd/p;

    .line 44
    iput v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->q:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 45
    invoke-static {p0, v2}, LOd/a;->d(Landroid/view/View;F)I

    move-result v2

    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:I

    .line 46
    iput v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:I

    const v2, 0x10013

    .line 47
    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:I

    const/4 v2, 0x4

    .line 48
    invoke-static {p0, v2}, LOd/a;->e(Landroid/view/View;I)I

    move-result v2

    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->v:I

    .line 49
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->w:I

    .line 50
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->x:I

    .line 51
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->y:I

    .line 52
    iput-boolean v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->z:Z

    .line 53
    sget-object v0, LOd/o;->NORMAL:LOd/o;

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->C:LOd/o;

    .line 54
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    if-eqz v2, :cond_1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Adapter<*>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_2
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow;

    .line 57
    iget-object p1, p1, LPd/b;->b:Landroid/widget/FrameLayout;

    const/4 v2, -0x2

    .line 58
    invoke-direct {v0, p1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->c:Landroid/widget/PopupWindow;

    .line 59
    new-instance p1, Lcom/skydoves/powerspinner/PowerSpinnerView$a;

    invoke-direct {p1, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$a;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x10

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 63
    instance-of v0, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_4

    .line 64
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 65
    :cond_4
    invoke-virtual {p0, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->n(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attributeSet"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, LPd/b;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)LPd/b;

    move-result-object p1

    const-string v1, "LayoutBodyPowerSpinnerLi\u2026om(context), null, false)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->b:LPd/b;

    const/4 v1, -0x1

    .line 68
    iput v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->e:I

    .line 69
    new-instance v3, LOd/b;

    invoke-direct {v3, p0}, LOd/b;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    iput-object v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    const/4 v3, 0x1

    .line 70
    iput-boolean v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->g:Z

    const-wide/16 v4, 0xfa

    .line 71
    iput-wide v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->h:J

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LOd/n$f;->w0:I

    invoke-static {v4, v0}, LOd/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->i:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0x96

    .line 73
    iput-wide v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->j:J

    const/high16 v0, -0x80000000

    .line 74
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->m:I

    .line 75
    iput-boolean v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->n:Z

    .line 76
    sget-object v2, LOd/p;->END:LOd/p;

    iput-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->o:LOd/p;

    .line 77
    iput v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->q:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 78
    invoke-static {p0, v2}, LOd/a;->d(Landroid/view/View;F)I

    move-result v2

    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:I

    .line 79
    iput v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:I

    const v2, 0x10013

    .line 80
    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:I

    const/4 v2, 0x4

    .line 81
    invoke-static {p0, v2}, LOd/a;->e(Landroid/view/View;I)I

    move-result v2

    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->v:I

    .line 82
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->w:I

    .line 83
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->x:I

    .line 84
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->y:I

    .line 85
    iput-boolean v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->z:Z

    .line 86
    sget-object v0, LOd/o;->NORMAL:LOd/o;

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->C:LOd/o;

    .line 87
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    if-eqz v2, :cond_1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Adapter<*>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_2
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow;

    .line 90
    iget-object p1, p1, LPd/b;->b:Landroid/widget/FrameLayout;

    const/4 v2, -0x2

    .line 91
    invoke-direct {v0, p1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->c:Landroid/widget/PopupWindow;

    .line 92
    new-instance p1, Lcom/skydoves/powerspinner/PowerSpinnerView$a;

    invoke-direct {p1, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$a;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x10

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 96
    instance-of v0, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_4

    .line 97
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 98
    :cond_4
    invoke-virtual {p0, p2, p3}, Lcom/skydoves/powerspinner/PowerSpinnerView;->o(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic A(Lcom/skydoves/powerspinner/PowerSpinnerView;IIILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->z(II)V

    return-void
.end method

.method public static final synthetic a(Lcom/skydoves/powerspinner/PowerSpinnerView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->i(Z)V

    return-void
.end method

.method public static final synthetic b(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->j()V

    return-void
.end method

.method public static final synthetic c(Lcom/skydoves/powerspinner/PowerSpinnerView;)LOd/k;
    .locals 0

    iget-object p0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    return-object p0
.end method

.method public static final synthetic d(Lcom/skydoves/powerspinner/PowerSpinnerView;)LPd/b;
    .locals 0

    iget-object p0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->b:LPd/b;

    return-object p0
.end method

.method public static final synthetic e(Lcom/skydoves/powerspinner/PowerSpinnerView;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->c:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static final synthetic f(Lcom/skydoves/powerspinner/PowerSpinnerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->d:Z

    return p0
.end method

.method public static final synthetic g(Lcom/skydoves/powerspinner/PowerSpinnerView;LOd/k;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    return-void
.end method

.method public static final synthetic h(Lcom/skydoves/powerspinner/PowerSpinnerView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->d:Z

    return-void
.end method

.method private final setTypeArray(Landroid/content/res/TypedArray;)V
    .locals 3

    sget v0, LOd/n$m;->b7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->m:I

    :cond_0
    sget v0, LOd/n$m;->e7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->n:Z

    :cond_1
    sget v0, LOd/n$m;->c7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->o:LOd/p;

    invoke-virtual {v1}, LOd/p;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    sget-object v1, LOd/p;->START:LOd/p;

    invoke-virtual {v1}, LOd/p;->a()I

    move-result v2

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, LOd/p;->TOP:LOd/p;

    invoke-virtual {v1}, LOd/p;->a()I

    move-result v2

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object v1, LOd/p;->END:LOd/p;

    invoke-virtual {v1}, LOd/p;->a()I

    move-result v2

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    sget-object v1, LOd/p;->BOTTOM:LOd/p;

    invoke-virtual {v1}, LOd/p;->a()I

    move-result v2

    if-ne v0, v2, :cond_5

    :goto_0
    iput-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->o:LOd/p;

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown argument: spinner_arrow_gravity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    sget v0, LOd/n$m;->d7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->p:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->p:I

    :cond_7
    sget v0, LOd/n$m;->f7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->q:I

    :cond_8
    sget v0, LOd/n$m;->Z6:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->g:Z

    :cond_9
    sget v0, LOd/n$m;->a7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-wide v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->h:J

    long-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->h:J

    :cond_a
    sget v0, LOd/n$m;->j7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->r:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->r:Z

    :cond_b
    sget v0, LOd/n$m;->k7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:I

    :cond_c
    sget v0, LOd/n$m;->i7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:I

    :cond_d
    sget v0, LOd/n$m;->o7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:I

    :cond_e
    sget v0, LOd/n$m;->m7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->C:LOd/o;

    invoke-virtual {v1}, LOd/o;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    sget-object v1, LOd/o;->DROPDOWN:LOd/o;

    invoke-virtual {v1}, LOd/o;->a()I

    move-result v2

    if-ne v0, v2, :cond_f

    goto :goto_2

    :cond_f
    sget-object v1, LOd/o;->FADE:LOd/o;

    invoke-virtual {v1}, LOd/o;->a()I

    move-result v2

    if-ne v0, v2, :cond_10

    goto :goto_2

    :cond_10
    sget-object v1, LOd/o;->BOUNCE:LOd/o;

    invoke-virtual {v1}, LOd/o;->a()I

    move-result v2

    if-ne v0, v2, :cond_11

    goto :goto_2

    :cond_11
    sget-object v1, LOd/o;->NORMAL:LOd/o;

    invoke-virtual {v1}, LOd/o;->a()I

    move-result v2

    if-ne v0, v2, :cond_12

    :goto_2
    iput-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->C:LOd/o;

    goto :goto_3

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown argument: spinner_popup_animation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_3
    sget v0, LOd/n$m;->n7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->w:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->w:I

    :cond_14
    sget v0, LOd/n$m;->r7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->x:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->x:I

    :cond_15
    sget v0, LOd/n$m;->q7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->y:I

    :cond_16
    sget v0, LOd/n$m;->p7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->v:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->v:I

    :cond_17
    sget v0, LOd/n$m;->l7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_18

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v1, :cond_18

    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setItems(I)V

    :cond_18
    sget v0, LOd/n$m;->h7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->z:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->z:Z

    :cond_19
    sget v0, LOd/n$m;->g7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-wide v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->j:J

    long-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->j:J

    :cond_1a
    sget v0, LOd/n$m;->s7:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setPreferenceName(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public static synthetic w(Lcom/skydoves/powerspinner/PowerSpinnerView;IIILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->v(II)V

    return-void
.end method


# virtual methods
.method public final B(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getShowArrow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v2, "DrawableCompat.wrap(it).mutate()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowTint()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowGravity()LOd/p;

    move-result-object v0

    sget-object v2, LOd/m;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v1, v1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, v1, p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, p1, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, v1, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1, v1, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final C()V
    .locals 2

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowResource()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowResource()I

    move-result v1

    invoke-static {v0, v1}, LOd/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->i:Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowPadding()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->B(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final D()V
    .locals 5

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    invoke-interface {v0}, LOd/k;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->D:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, LOd/l;->d:LOd/l$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, LOd/l$a;->a(Landroid/content/Context;)LOd/l;

    move-result-object v2

    invoke-virtual {v2, v0}, LOd/l;->g(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, LOd/l$a;->a(Landroid/content/Context;)LOd/l;

    move-result-object v1

    invoke-virtual {v1, v0}, LOd/l;->g(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, LOd/k;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final E()V
    .locals 1

    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;

    invoke-direct {v0, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$i;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getArrowAnimate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->g:Z

    return v0
.end method

.method public final getArrowAnimationDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->h:J

    return-wide v0
.end method

.method public final getArrowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getArrowGravity()LOd/p;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->o:LOd/p;

    return-object v0
.end method

.method public final getArrowPadding()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->p:I

    return v0
.end method

.method public final getArrowResource()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->m:I

    return v0
.end method

.method public final getArrowTint()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->q:I

    return v0
.end method

.method public final getDebounceDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->j:J

    return-wide v0
.end method

.method public final getDisableChangeTextWhenNotified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->k:Z

    return v0
.end method

.method public final getDismissWhenNotifiedItemSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->z:Z

    return v0
.end method

.method public final getDividerColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:I

    return v0
.end method

.method public final getDividerSize()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:I

    return v0
.end method

.method public final getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->E:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public final getOnSpinnerDismissListener()LOd/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->B:LOd/f;

    return-object v0
.end method

.method public final getPreferenceName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedIndex()I
    .locals 1

    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->e:I

    return v0
.end method

.method public final getShowArrow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->n:Z

    return v0
.end method

.method public final getShowDivider()Z
    .locals 1

    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->r:Z

    return v0
.end method

.method public final getSpinnerAdapter()LOd/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LOd/k<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSpinnerBodyView()Landroid/widget/FrameLayout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->b:LPd/b;

    iget-object v0, v0, LPd/b;->b:Landroid/widget/FrameLayout;

    const-string v1, "binding.body"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSpinnerOutsideTouchListener()LOd/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->A:LOd/h;

    return-object v0
.end method

.method public final getSpinnerPopupAnimation()LOd/o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->C:LOd/o;

    return-object v0
.end method

.method public final getSpinnerPopupAnimationStyle()I
    .locals 1

    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->w:I

    return v0
.end method

.method public final getSpinnerPopupBackgroundColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:I

    return v0
.end method

.method public final getSpinnerPopupElevation()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->v:I

    return v0
.end method

.method public final getSpinnerPopupHeight()I
    .locals 1

    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->y:I

    return v0
.end method

.method public final getSpinnerPopupWidth()I
    .locals 1

    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->x:I

    return v0
.end method

.method public final getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->b:LPd/b;

    iget-object v0, v0, LPd/b;->c:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final i(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->g:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x2710

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->i:Landroid/graphics/drawable/Drawable;

    const-string v1, "level"

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-wide v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method

.method public final j()V
    .locals 2

    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->w:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->C:LOd/o;

    sget-object v1, LOd/m;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->c:Landroid/widget/PopupWindow;

    sget v1, LOd/n$l;->g2:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->c:Landroid/widget/PopupWindow;

    sget v1, LOd/n$l;->h2:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->c:Landroid/widget/PopupWindow;

    sget v1, LOd/n$l;->f2:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_0
    return-void
.end method

.method public final k()V
    .locals 2

    const/4 v0, -0x1

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->q(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public final l(LMf/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/a<",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->l:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->j:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->l:J

    invoke-interface {p1}, LMf/a;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$c;

    invoke-direct {v0, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$c;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->l(LMf/a;)V

    return-void
.end method

.method public final n(Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, LOd/n$m;->Y6:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "context.obtainStyledAttr\u2026yleable.PowerSpinnerView)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setTypeArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public final o(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, LOd/n$m;->Y6:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026fStyleAttr,\n      0\n    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setTypeArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public final onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->m()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->E()V

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->C()V

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->D()V

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->d:Z

    return v0
.end method

.method public final q(ILjava/lang/CharSequence;)V
    .locals 2
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "changedText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->e:I

    iget-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->k:Z

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->z:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->m()V

    :cond_1
    iget-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->D:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    sget-object p2, LOd/l;->d:LOd/l$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, LOd/l$a;->a(Landroid/content/Context;)LOd/l;

    move-result-object p2

    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->e:I

    invoke-virtual {p2, p1, v0}, LOd/l;->h(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final r(I)V
    .locals 1

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    invoke-interface {v0, p1}, LOd/k;->b(I)V

    return-void
.end method

.method public final s(Z)Lcom/skydoves/powerspinner/PowerSpinnerView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->k:Z

    return-object p0
.end method

.method public final setArrowAnimate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->g:Z

    return-void
.end method

.method public final setArrowAnimationDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->h:J

    return-void
.end method

.method public final setArrowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->i:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setArrowGravity(LOd/p;)V
    .locals 1
    .param p1    # LOd/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->o:LOd/p;

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->C()V

    return-void
.end method

.method public final setArrowPadding(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->p:I

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->C()V

    return-void
.end method

.method public final setArrowResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->m:I

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->C()V

    return-void
.end method

.method public final setArrowTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->q:I

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->C()V

    return-void
.end method

.method public final setDisableChangeTextWhenNotified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->k:Z

    return-void
.end method

.method public final setDismissWhenNotifiedItemSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->z:Z

    return-void
.end method

.method public final setDividerColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:I

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->E()V

    return-void
.end method

.method public final setDividerSize(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:I

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->E()V

    return-void
.end method

.method public final setIsFocusable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance p1, Lcom/skydoves/powerspinner/PowerSpinnerView$d;

    invoke-direct {p1, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$d;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->B:LOd/f;

    return-void
.end method

.method public final setItems(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    instance-of v0, v0, LOd/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.resources.getStringArray(resource)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lpf/A;->cz([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setItems(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "itemList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LOd/k;->f(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->E:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public final synthetic setOnSpinnerDismissListener(LMf/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/a<",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$e;

    invoke-direct {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView$e;-><init>(LMf/a;)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->B:LOd/f;

    return-void
.end method

.method public final setOnSpinnerDismissListener(LOd/f;)V
    .locals 0
    .param p1    # LOd/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->B:LOd/f;

    return-void
.end method

.method public final synthetic setOnSpinnerItemSelectedListener(LMf/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/r<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lcom/skydoves/powerspinner/PowerSpinnerView$f;

    invoke-direct {v1, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView$f;-><init>(LMf/r;)V

    invoke-interface {v0, v1}, LOd/k;->c(LOd/g;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setOnSpinnerItemSelectedListener(LOd/g;)V
    .locals 1
    .param p1    # LOd/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOd/g<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "onSpinnerItemSelectedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, LOd/k;->c(LOd/g;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic setOnSpinnerOutsideTouchListener(LMf/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/p<",
            "-",
            "Landroid/view/View;",
            "-",
            "Landroid/view/MotionEvent;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$g;

    invoke-direct {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView$g;-><init>(LMf/p;)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->A:LOd/h;

    return-void
.end method

.method public final setPreferenceName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->D:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->D()V

    return-void
.end method

.method public final setShowArrow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->n:Z

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->C()V

    return-void
.end method

.method public final setShowDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->r:Z

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->E()V

    return-void
.end method

.method public final setSpinnerAdapter(LOd/k;)V
    .locals 1
    .param p1    # LOd/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOd/k<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "powerSpinnerInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->f:LOd/k;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Adapter<*>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final setSpinnerOutsideTouchListener(LOd/h;)V
    .locals 0
    .param p1    # LOd/h;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->A:LOd/h;

    return-void
.end method

.method public final setSpinnerPopupAnimation(LOd/o;)V
    .locals 1
    .param p1    # LOd/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->C:LOd/o;

    return-void
.end method

.method public final setSpinnerPopupAnimationStyle(I)V
    .locals 0

    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->w:I

    return-void
.end method

.method public final setSpinnerPopupBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:I

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->E()V

    return-void
.end method

.method public final setSpinnerPopupElevation(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->v:I

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->E()V

    return-void
.end method

.method public final setSpinnerPopupHeight(I)V
    .locals 0

    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->y:I

    return-void
.end method

.method public final setSpinnerPopupWidth(I)V
    .locals 0

    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->x:I

    return-void
.end method

.method public final t()V
    .locals 3
    .annotation build LLf/k;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->w(Lcom/skydoves/powerspinner/PowerSpinnerView;IIILjava/lang/Object;)V

    return-void
.end method

.method public final u(I)V
    .locals 3
    .annotation build LLf/k;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->w(Lcom/skydoves/powerspinner/PowerSpinnerView;IIILjava/lang/Object;)V

    return-void
.end method

.method public final v(II)V
    .locals 1
    .annotation build LLf/k;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$h;

    invoke-direct {v0, p0, p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView$h;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;II)V

    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->l(LMf/a;)V

    return-void
.end method

.method public final x()V
    .locals 3
    .annotation build LLf/k;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->A(Lcom/skydoves/powerspinner/PowerSpinnerView;IIILjava/lang/Object;)V

    return-void
.end method

.method public final y(I)V
    .locals 3
    .annotation build LLf/k;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->A(Lcom/skydoves/powerspinner/PowerSpinnerView;IIILjava/lang/Object;)V

    return-void
.end method

.method public final z(II)V
    .locals 2
    .annotation build LLf/k;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "getSpinnerRecyclerView().adapter ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->d:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->v(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->m()V

    :cond_1
    :goto_0
    return-void
.end method
