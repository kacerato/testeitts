.class public LZ5/f$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/f;->u2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LZ5/f;


# direct methods
.method public constructor <init>(LZ5/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LZ5/f$l;->b:LZ5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LZ5/f$l;Landroid/text/Editable;)V
    .locals 0

    invoke-virtual {p0, p1}, LZ5/f$l;->b(Landroid/text/Editable;)V

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

    iget-object v0, p0, LZ5/f$l;->b:LZ5/f;

    invoke-static {v0}, LZ5/f;->S1(LZ5/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, LZ5/f$l;->b:LZ5/f;

    invoke-static {v1}, LZ5/f;->Q1(LZ5/f;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, LZ5/f$l;->b:LZ5/f;

    new-instance v1, LZ5/g;

    invoke-direct {v1, p0, p1}, LZ5/g;-><init>(LZ5/f$l;Landroid/text/Editable;)V

    invoke-static {v0, v1}, LZ5/f;->R1(LZ5/f;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object p1, p0, LZ5/f$l;->b:LZ5/f;

    invoke-static {p1}, LZ5/f;->S1(LZ5/f;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, LZ5/f$l;->b:LZ5/f;

    invoke-static {v0}, LZ5/f;->Q1(LZ5/f;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic b(Landroid/text/Editable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LZ5/f$l;->b:LZ5/f;

    invoke-static {v0, p1}, LZ5/f;->P1(LZ5/f;Ljava/lang/String;)V

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

    iget-object p1, p0, LZ5/f$l;->b:LZ5/f;

    invoke-static {p1}, LZ5/f;->S1(LZ5/f;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, LZ5/f$l;->b:LZ5/f;

    invoke-static {p2}, LZ5/f;->Q1(LZ5/f;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
