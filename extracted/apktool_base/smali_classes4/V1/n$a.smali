.class public LV1/n$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV1/n;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LV1/n;


# direct methods
.method public constructor <init>(LV1/n;)V
    .locals 0

    iput-object p1, p0, LV1/n$a;->a:LV1/n;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, LV1/n$a;->a:LV1/n;

    invoke-static {p1}, LV1/n;->i(LV1/n;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, LV1/n$a;->a:LV1/n;

    invoke-static {v2}, LV1/n;->k(LV1/n;)LV1/c;

    move-result-object v2

    iget-object v2, v2, LV1/c;->c:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    invoke-static {p1, v0}, LV1/n;->j(LV1/n;I)I

    iget-object p1, p0, LV1/n$a;->a:LV1/n;

    invoke-static {p1, v1}, LV1/n;->l(LV1/n;Z)Z

    return-void
.end method
