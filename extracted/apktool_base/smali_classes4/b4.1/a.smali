.class public abstract Lb4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Ljava/lang/String;

.field public volatile b:F

.field public volatile c:Ljava/lang/String;

.field public d:Lb4/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lb4/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lb4/a;->c:Ljava/lang/String;

    invoke-static {p0}, Lb4/b;->e(Lb4/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "subMessage",
            "progress01"
        }
    .end annotation

    iput-object p1, p0, Lb4/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lb4/a;->c:Ljava/lang/String;

    iput p3, p0, Lb4/a;->b:F

    iget-object p1, p0, Lb4/a;->d:Lb4/c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lb4/c;->update()V

    :cond_0
    return-void
.end method

.method public abstract b()V
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb4/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lb4/a;->b:F

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb4/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public abstract f()V
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iput-object p1, p0, Lb4/a;->a:Ljava/lang/String;

    return-void
.end method

.method public h(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress01"
        }
    .end annotation

    iput p1, p0, Lb4/a;->b:F

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subMessage"
        }
    .end annotation

    iput-object p1, p0, Lb4/a;->c:Ljava/lang/String;

    return-void
.end method
