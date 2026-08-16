.class public final synthetic LN6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:LN6/p;


# direct methods
.method public synthetic constructor <init>(LN6/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/j;->b:LN6/p;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, LN6/j;->b:LN6/p;

    invoke-static {v0, p1, p2}, LN6/p;->e(LN6/p;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
