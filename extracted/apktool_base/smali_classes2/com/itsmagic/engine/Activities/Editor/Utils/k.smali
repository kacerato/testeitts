.class public final synthetic Lcom/itsmagic/engine/Activities/Editor/Utils/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Utils/l;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/widget/ScrollView;

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/l;Landroid/view/View;Landroid/widget/ScrollView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/k;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/l;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/k;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/k;->c:Landroid/widget/ScrollView;

    iput p4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/k;->d:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/k;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/l;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/k;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/k;->c:Landroid/widget/ScrollView;

    iget v3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/k;->d:F

    invoke-static {v0, v1, v2, v3, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->b(Lcom/itsmagic/engine/Activities/Editor/Utils/l;Landroid/view/View;Landroid/widget/ScrollView;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
