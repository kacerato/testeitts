.class public final synthetic Lx7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lx7/j;

.field public final synthetic c:Lx7/j$a;


# direct methods
.method public synthetic constructor <init>(Lx7/j;Lx7/j$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx7/i;->b:Lx7/j;

    iput-object p2, p0, Lx7/i;->c:Lx7/j$a;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lx7/i;->b:Lx7/j;

    iget-object v1, p0, Lx7/i;->c:Lx7/j$a;

    invoke-static {v0, v1, p1, p2}, Lx7/j;->a(Lx7/j;Lx7/j$a;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
