.class public Ll2/m$a;
.super Ll2/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll2/m;->m(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/Window;

.field public final synthetic b:Ll2/m;


# direct methods
.method public constructor <init>(Ll2/m;Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Ll2/m$a;->b:Ll2/m;

    iput-object p2, p0, Ll2/m$a;->a:Landroid/view/Window;

    invoke-direct {p0}, Ll2/u;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    iget-object p1, p0, Ll2/m$a;->a:Landroid/view/Window;

    invoke-static {p1}, Ll2/m;->b(Landroid/view/Window;)V

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    iget-object p1, p0, Ll2/m$a;->a:Landroid/view/Window;

    invoke-static {p1}, Ll2/m;->a(Landroid/view/Window;)V

    return-void
.end method
