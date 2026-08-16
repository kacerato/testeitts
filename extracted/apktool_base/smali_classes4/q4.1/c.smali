.class public Lq4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq4/c$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Lq4/c$a;

.field public d:Lq4/d;

.field public e:Z

.field public f:Landroid/view/View;

.field public g:Lq4/b;


# direct methods
.method public constructor <init>(ILq4/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iconResource",
            "rightOptionListener"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lq4/c;->e:Z

    .line 8
    iput p1, p0, Lq4/c;->b:I

    .line 9
    sget-object p1, Lq4/c$a;->Resource:Lq4/c$a;

    iput-object p1, p0, Lq4/c;->c:Lq4/c$a;

    .line 10
    iput-object p2, p0, Lq4/c;->d:Lq4/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lq4/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "icon",
            "rightOptionListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lq4/c;->e:Z

    .line 3
    iput-object p1, p0, Lq4/c;->a:Ljava/lang/String;

    .line 4
    sget-object p1, Lq4/c$a;->Path:Lq4/c$a;

    iput-object p1, p0, Lq4/c;->c:Lq4/c$a;

    .line 5
    iput-object p2, p0, Lq4/c;->d:Lq4/d;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq4/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lq4/c;->b:I

    return v0
.end method

.method public c()Lq4/c$a;
    .locals 1

    iget-object v0, p0, Lq4/c;->c:Lq4/c$a;

    return-object v0
.end method

.method public d()Lq4/d;
    .locals 1

    iget-object v0, p0, Lq4/c;->d:Lq4/d;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lq4/c;->e:Z

    return v0
.end method

.method public f(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    iput p1, p0, Lq4/c;->b:I

    sget-object p1, Lq4/c$a;->Resource:Lq4/c$a;

    iput-object p1, p0, Lq4/c;->c:Lq4/c$a;

    iget-object p1, p0, Lq4/c;->g:Lq4/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lq4/b;->a()V

    :cond_0
    return-void
.end method

.method public g(Lq4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightOptionListener"
        }
    .end annotation

    iput-object p1, p0, Lq4/c;->d:Lq4/d;

    return-void
.end method

.method public h(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    iput-boolean p1, p0, Lq4/c;->e:Z

    iget-object v0, p0, Lq4/c;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
