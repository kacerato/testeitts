.class public final Lvd/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvd/b;->u(FLjava/lang/Long;Landroid/animation/TimeInterpolator;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCircularProgressBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircularProgressBar.kt\ncom/mikhaellopez/circularprogressbar/CircularProgressBar$setProgressWithAnimation$4\n*L\n1#1,382:1\n*E\n"
.end annotation


# instance fields
.field public final synthetic a:Lvd/b;


# direct methods
.method public constructor <init>(Lvd/b;)V
    .locals 0

    iput-object p1, p0, Lvd/b$e;->a:Lvd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v0, p0, Lvd/b$e;->a:Lvd/b;

    invoke-virtual {v0}, Lvd/b;->getIndeterminateMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvd/b$e;->a:Lvd/b;

    invoke-static {v0, p1}, Lvd/b;->h(Lvd/b;F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lvd/b$e;->a:Lvd/b;

    invoke-virtual {v0, p1}, Lvd/b;->setProgress(F)V

    :goto_0
    iget-object v0, p0, Lvd/b$e;->a:Lvd/b;

    invoke-virtual {v0}, Lvd/b;->getIndeterminateMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x168

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/16 v0, 0x64

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lvd/b$e;->a:Lvd/b;

    invoke-static {v0}, Lvd/b;->a(Lvd/b;)Lvd/b$c;

    move-result-object v1

    invoke-static {v0, v1}, Lvd/b;->d(Lvd/b;Lvd/b$c;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    neg-float p1, p1

    :goto_1
    const/high16 v1, 0x43870000    # 270.0f

    add-float/2addr p1, v1

    invoke-static {v0, p1}, Lvd/b;->i(Lvd/b;F)V

    :cond_3
    return-void
.end method
