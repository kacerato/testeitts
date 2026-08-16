.class public Ln3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/h$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ln3/h$a;LT2/h;)Ln3/f;
    .locals 0

    invoke-static {p0, p1, p2}, Ln3/h;->d(Ljava/lang/String;Ln3/h$a;LT2/h;)Ln3/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)LT2/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LT2/g<",
            "*>;"
        }
    .end annotation

    invoke-static {p0, p1}, Ln3/f;->a(Ljava/lang/String;Ljava/lang/String;)Ln3/f;

    move-result-object p0

    const-class p1, Ln3/f;

    invoke-static {p0, p1}, LT2/g;->p(Ljava/lang/Object;Ljava/lang/Class;)LT2/g;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ln3/h$a;)LT2/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ln3/h$a<",
            "Landroid/content/Context;",
            ">;)",
            "LT2/g<",
            "*>;"
        }
    .end annotation

    const-class v0, Ln3/f;

    invoke-static {v0}, LT2/g;->r(Ljava/lang/Class;)LT2/g$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, LT2/v;->m(Ljava/lang/Class;)LT2/v;

    move-result-object v1

    invoke-virtual {v0, v1}, LT2/g$b;->b(LT2/v;)LT2/g$b;

    move-result-object v0

    new-instance v1, Ln3/g;

    invoke-direct {v1, p0, p1}, Ln3/g;-><init>(Ljava/lang/String;Ln3/h$a;)V

    invoke-virtual {v0, v1}, LT2/g$b;->f(LT2/k;)LT2/g$b;

    move-result-object p0

    invoke-virtual {p0}, LT2/g$b;->d()LT2/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Ln3/h$a;LT2/h;)Ln3/f;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p2, v0}, LT2/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-interface {p1, p2}, Ln3/h$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ln3/f;->a(Ljava/lang/String;Ljava/lang/String;)Ln3/f;

    move-result-object p0

    return-object p0
.end method
