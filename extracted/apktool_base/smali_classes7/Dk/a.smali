.class public LDk/a;
.super LDk/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDk/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>(LDk/e;Loh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LDk/f;-><init>(LDk/e;Loh/g;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LDk/f;-><init>(Loh/E;)V

    return-void
.end method

.method public static A()LDk/a$a;
    .locals 1

    new-instance v0, LDk/a$a;

    invoke-direct {v0}, LDk/a$a;-><init>()V

    return-object v0
.end method

.method public static D(Ljava/lang/Object;)LDk/a;
    .locals 1

    instance-of v0, p0, LDk/a;

    if-eqz v0, :cond_0

    check-cast p0, LDk/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LDk/a;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LDk/a;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()LDk/b;
    .locals 1

    invoke-virtual {p0}, LDk/f;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LDk/b;->v(Ljava/lang/Object;)LDk/b;

    move-result-object v0

    return-object v0
.end method

.method public C()LDk/d;
    .locals 1

    invoke-virtual {p0}, LDk/f;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LDk/d;->z(Ljava/lang/Object;)LDk/d;

    move-result-object v0

    return-object v0
.end method
