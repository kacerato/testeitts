.class public Lb3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/r;


# instance fields
.field public final a:Lv1/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/l<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv1/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/l<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/m;->a:Lv1/l;

    return-void
.end method


# virtual methods
.method public a(Lf3/d;)Z
    .locals 1

    invoke-virtual {p1}, Lf3/d;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lf3/d;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lf3/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lb3/m;->a:Lv1/l;

    invoke-virtual {p1}, Lf3/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv1/l;->e(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onException(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
