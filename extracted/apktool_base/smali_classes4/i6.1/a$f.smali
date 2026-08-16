.class public Li6/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li6/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Li6/a;


# direct methods
.method public constructor <init>(Li6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Li6/a$f;->b:Li6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Li6/a$f;Landroid/text/Editable;)V
    .locals 0

    invoke-virtual {p0, p1}, Li6/a$f;->b(Landroid/text/Editable;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    iget-object v0, p0, Li6/a$f;->b:Li6/a;

    invoke-static {v0}, Li6/a;->z1(Li6/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Li6/a$f;->b:Li6/a;

    invoke-static {v1}, Li6/a;->x1(Li6/a;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Li6/a$f;->b:Li6/a;

    new-instance v1, Li6/b;

    invoke-direct {v1, p0, p1}, Li6/b;-><init>(Li6/a$f;Landroid/text/Editable;)V

    invoke-static {v0, v1}, Li6/a;->y1(Li6/a;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object p1, p0, Li6/a$f;->b:Li6/a;

    invoke-static {p1}, Li6/a;->z1(Li6/a;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Li6/a$f;->b:Li6/a;

    invoke-static {v0}, Li6/a;->x1(Li6/a;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic b(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Li6/a$f;->b:Li6/a;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Li6/a;->w1(Li6/a;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "count",
            "after"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "before",
            "count"
        }
    .end annotation

    iget-object p1, p0, Li6/a$f;->b:Li6/a;

    invoke-static {p1}, Li6/a;->z1(Li6/a;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Li6/a$f;->b:Li6/a;

    invoke-static {p2}, Li6/a;->x1(Li6/a;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
