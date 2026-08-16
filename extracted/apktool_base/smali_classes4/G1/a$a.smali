.class public final LG1/a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG1/a;->c(LG1/g;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG1/g;


# direct methods
.method public constructor <init>(LG1/g;)V
    .locals 0

    iput-object p1, p0, LG1/a$a;->a:LG1/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, LG1/a$a;->a:LG1/g;

    invoke-interface {p1}, LG1/g;->a()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, LG1/a$a;->a:LG1/g;

    invoke-interface {p1}, LG1/g;->d()V

    return-void
.end method
