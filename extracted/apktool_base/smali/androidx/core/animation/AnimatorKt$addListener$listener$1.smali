.class public final Landroidx/core/animation/AnimatorKt$addListener$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/animation/AnimatorKt;->addListener(Landroid/animation/Animator;LMf/l;LMf/l;LMf/l;LMf/l;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n*L\n1#1,136:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $onCancel:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "Landroid/animation/Animator;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onEnd:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "Landroid/animation/Animator;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onRepeat:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "Landroid/animation/Animator;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onStart:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "Landroid/animation/Animator;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LMf/l;LMf/l;LMf/l;LMf/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Landroid/animation/Animator;",
            "Lnf/P0;",
            ">;",
            "LMf/l<",
            "-",
            "Landroid/animation/Animator;",
            "Lnf/P0;",
            ">;",
            "LMf/l<",
            "-",
            "Landroid/animation/Animator;",
            "Lnf/P0;",
            ">;",
            "LMf/l<",
            "-",
            "Landroid/animation/Animator;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onRepeat:LMf/l;

    iput-object p2, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onEnd:LMf/l;

    iput-object p3, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onCancel:LMf/l;

    iput-object p4, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onStart:LMf/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onCancel:LMf/l;

    invoke-interface {v0, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onEnd:LMf/l;

    invoke-interface {v0, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onRepeat:LMf/l;

    invoke-interface {v0, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onStart:LMf/l;

    invoke-interface {v0, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
