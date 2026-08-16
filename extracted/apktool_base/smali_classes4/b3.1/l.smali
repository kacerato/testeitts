.class public Lb3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/r;


# instance fields
.field public final a:Lb3/s;

.field public final b:Lv1/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/l<",
            "Lb3/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb3/s;Lv1/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/s;",
            "Lv1/l<",
            "Lb3/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/l;->a:Lb3/s;

    iput-object p2, p0, Lb3/l;->b:Lv1/l;

    return-void
.end method


# virtual methods
.method public a(Lf3/d;)Z
    .locals 4

    invoke-virtual {p1}, Lf3/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb3/l;->a:Lb3/s;

    invoke-virtual {v0, p1}, Lb3/s;->f(Lf3/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb3/l;->b:Lv1/l;

    invoke-static {}, Lb3/n;->a()Lb3/n$a;

    move-result-object v1

    invoke-virtual {p1}, Lf3/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb3/n$a;->b(Ljava/lang/String;)Lb3/n$a;

    move-result-object v1

    invoke-virtual {p1}, Lf3/d;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lb3/n$a;->d(J)Lb3/n$a;

    move-result-object v1

    invoke-virtual {p1}, Lf3/d;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lb3/n$a;->c(J)Lb3/n$a;

    move-result-object p1

    invoke-virtual {p1}, Lb3/n$a;->a()Lb3/n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv1/l;->c(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onException(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lb3/l;->b:Lv1/l;

    invoke-virtual {v0, p1}, Lv1/l;->d(Ljava/lang/Exception;)Z

    const/4 p1, 0x1

    return p1
.end method
