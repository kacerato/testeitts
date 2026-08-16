.class public final synthetic Lcom/itsmagic/engine/Activities/Editor/Utils/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Utils/l;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/l;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/j;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/l;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/j;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/j;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/l;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/j;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/l;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
