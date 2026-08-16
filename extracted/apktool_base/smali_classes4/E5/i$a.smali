.class public LE5/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/i;->c(LC5/b;Landroid/view/View;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[F

.field public final synthetic c:[F

.field public final synthetic d:LC5/b;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:LE5/i;


# direct methods
.method public constructor <init>(LE5/i;[F[FLC5/b;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$px",
            "val$py",
            "val$entry",
            "val$inputField"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LE5/i$a;->f:LE5/i;

    iput-object p2, p0, LE5/i$a;->b:[F

    iput-object p3, p0, LE5/i$a;->c:[F

    iput-object p4, p0, LE5/i$a;->d:LC5/b;

    iput-object p5, p0, LE5/i$a;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
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

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_5

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    iget-object v2, p0, LE5/i$a;->b:[F

    aget v2, v2, v1

    sub-float/2addr p1, v2

    invoke-static {}, LK8/c;->b()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    if-gez v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    mul-float/2addr p1, p1

    if-eqz v3, :cond_2

    neg-float p1, p1

    :cond_2
    iget-object v3, p0, LE5/i$a;->d:LC5/b;

    iget v3, v3, LC5/b;->u:F

    mul-float/2addr p1, v3

    const/high16 v3, 0x43fa0000    # 500.0f

    mul-float/2addr p1, v3

    iget-object v3, p0, LE5/i$a;->e:Landroid/view/View;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    long-to-float v2, v3

    :goto_1
    add-float/2addr v2, p1

    float-to-long v2, v2

    goto :goto_2

    :cond_3
    long-to-float v2, v3

    invoke-static {p1}, LNc/b;->j1(F)F

    move-result p1

    goto :goto_1

    :goto_2
    iget-object p1, p0, LE5/i$a;->d:LC5/b;

    iget-object p1, p1, LC5/b;->b:LD5/h;

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v5, "temp"

    invoke-direct {v4, v5, v2, v3}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;J)V

    invoke-interface {p1, v4}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    iget-object p1, p0, LE5/i$a;->e:Landroid/view/View;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p1, p0, LE5/i$a;->b:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    aput v2, p1, v1

    iget-object p1, p0, LE5/i$a;->c:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, p1, v1

    goto :goto_3

    :cond_5
    iget-object p1, p0, LE5/i$a;->b:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    aput v2, p1, v1

    iget-object p1, p0, LE5/i$a;->c:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, p1, v1

    :goto_3
    return v0
.end method
