.class public final synthetic LN6/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:LN6/H;


# direct methods
.method public synthetic constructor <init>(LN6/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/G;->b:LN6/H;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, LN6/G;->b:LN6/H;

    invoke-static {v0, p1, p2}, LN6/H;->b(LN6/H;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
