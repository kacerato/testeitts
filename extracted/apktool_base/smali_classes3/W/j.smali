.class public LW/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LW/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LW/f<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:LW/j$a;


# direct methods
.method public constructor <init>(LW/j$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW/j;->a:LW/j$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;LW/f$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "LW/f$a;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, LW/f$a;->d()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LW/j;->a:LW/j$a;

    invoke-interface {p2}, LW/f$a;->d()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, LW/j$a;->a(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
