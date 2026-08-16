.class public final LYg/j$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYg/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:LYg/j;


# direct methods
.method public constructor <init>(LYg/j;)V
    .locals 0

    iput-object p1, p0, LYg/j$b;->a:LYg/j;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LYg/j$b;->a:LYg/j;

    invoke-static {p1}, LYg/j;->i(LYg/j;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LYg/j$b;->a:LYg/j;

    invoke-virtual {p1}, LYg/j;->b0()V

    :cond_0
    return-void
.end method
