.class public LE5/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/e;->c(LC5/b;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[F

.field public final synthetic c:[F

.field public final synthetic d:Landroid/os/Handler;

.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final synthetic g:I

.field public final synthetic h:LC5/b;

.field public final synthetic i:Landroid/view/View;

.field public final synthetic j:LE5/e;


# direct methods
.method public constructor <init>(LE5/e;[F[FLandroid/os/Handler;Ljava/lang/Runnable;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;ILC5/b;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$px",
            "val$py",
            "val$longClickHandler",
            "val$mLongPressed",
            "val$diffV",
            "val$slidingFrictionDeadZone",
            "val$entry",
            "val$inputField"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LE5/e$b;->j:LE5/e;

    iput-object p2, p0, LE5/e$b;->b:[F

    iput-object p3, p0, LE5/e$b;->c:[F

    iput-object p4, p0, LE5/e$b;->d:Landroid/os/Handler;

    iput-object p5, p0, LE5/e$b;->e:Ljava/lang/Runnable;

    iput-object p6, p0, LE5/e$b;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput p7, p0, LE5/e$b;->g:I

    iput-object p8, p0, LE5/e$b;->h:LC5/b;

    iput-object p9, p0, LE5/e$b;->i:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_0

    const/4 v3, 0x5

    if-eq p1, v3, :cond_5

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-object v4, p0, LE5/e$b;->b:[F

    aget v4, v4, v2

    sub-float v4, p1, v4

    iget-object v5, p0, LE5/e$b;->c:[F

    aget v5, v5, v2

    sub-float/2addr v3, v5

    iget-object v5, p0, LE5/e$b;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v5, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    iget-object v3, p0, LE5/e$b;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->S()F

    move-result v3

    iget v4, p0, LE5/e$b;->g:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    :try_start_0
    iget-object v3, p0, LE5/e$b;->d:Landroid/os/Handler;

    iget-object v4, p0, LE5/e$b;->e:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v3, p0, LE5/e$b;->b:[F

    aget v3, v3, v2

    sub-float/2addr p1, v3

    invoke-static {}, LK8/c;->b()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    mul-float/2addr p1, p1

    if-eqz v3, :cond_3

    neg-float p1, p1

    :cond_3
    iget-object v3, p0, LE5/e$b;->h:LC5/b;

    iget v3, v3, LC5/b;->u:F

    mul-float/2addr p1, v3

    const/high16 v3, 0x43fa0000    # 500.0f

    mul-float/2addr p1, v3

    iget-object v3, p0, LE5/e$b;->i:Landroid/view/View;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v3

    float-to-double v5, p1

    add-double/2addr v3, v5

    :try_start_1
    iget-object p1, p0, LE5/e$b;->h:LC5/b;

    iget-object p1, p1, LC5/b;->b:LD5/h;

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v6, "temp"

    invoke-direct {v5, v6, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;D)V

    invoke-interface {p1, v5}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object p1, p0, LE5/e$b;->i:Landroid/view/View;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p1, p0, LE5/e$b;->b:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, p1, v2

    iget-object p1, p0, LE5/e$b;->c:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, p1, v2

    goto :goto_3

    :cond_5
    iget-object p1, p0, LE5/e$b;->b:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, p1, v2

    iget-object p1, p0, LE5/e$b;->c:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, p1, v2

    :try_start_2
    iget-object p1, p0, LE5/e$b;->d:Landroid/os/Handler;

    iget-object v2, p0, LE5/e$b;->e:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    :cond_6
    return v0
.end method
