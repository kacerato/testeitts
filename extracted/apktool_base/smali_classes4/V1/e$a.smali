.class public LV1/e$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV1/e;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LV1/e;


# direct methods
.method public constructor <init>(LV1/e;)V
    .locals 0

    iput-object p1, p0, LV1/e$a;->a:LV1/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, LV1/e$a;->a:LV1/e;

    invoke-static {p1}, LV1/e;->i(LV1/e;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, LV1/e$a;->a:LV1/e;

    invoke-static {v1}, LV1/e;->k(LV1/e;)LV1/c;

    move-result-object v1

    iget-object v1, v1, LV1/c;->c:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    invoke-static {p1, v0}, LV1/e;->j(LV1/e;I)I

    return-void
.end method
