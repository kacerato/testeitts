.class public LW/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LW/h$b;,
        LW/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LW/g<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:LW/k$a;

.field public b:LW/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LW/f<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 2
    new-instance v0, LW/h$b;

    invoke-direct {v0, p1}, LW/h$b;-><init>(I)V

    invoke-direct {p0, v0}, LW/h;-><init>(LW/k$a;)V

    return-void
.end method

.method public constructor <init>(LW/k$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LW/h;->a:LW/k$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    new-instance v0, LW/h$a;

    invoke-direct {v0, p1}, LW/h$a;-><init>(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v0}, LW/h;-><init>(LW/k$a;)V

    return-void
.end method


# virtual methods
.method public a(LC/a;Z)LW/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/a;",
            "Z)",
            "LW/f<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, LC/a;->MEMORY_CACHE:LC/a;

    if-eq p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LW/h;->b:LW/f;

    if-nez p1, :cond_1

    new-instance p1, LW/k;

    iget-object p2, p0, LW/h;->a:LW/k$a;

    invoke-direct {p1, p2}, LW/k;-><init>(LW/k$a;)V

    iput-object p1, p0, LW/h;->b:LW/f;

    :cond_1
    iget-object p1, p0, LW/h;->b:LW/f;

    return-object p1

    :cond_2
    :goto_0
    invoke-static {}, LW/e;->b()LW/f;

    move-result-object p1

    return-object p1
.end method
