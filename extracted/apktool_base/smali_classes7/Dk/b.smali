.class public LDk/b;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDk/b$a;
    }
.end annotation


# instance fields
.field public final b:LFk/x;

.field public final c:LFk/p0;


# direct methods
.method public constructor <init>(LFk/x;LFk/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LDk/b;->b:LFk/x;

    iput-object p2, p0, LDk/b;->c:LFk/p0;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LFk/x;->v(Ljava/lang/Object;)LFk/x;

    move-result-object v0

    iput-object v0, p0, LDk/b;->b:LFk/x;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-class v0, LFk/p0;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {v0, p1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFk/p0;

    :goto_0
    iput-object p1, p0, LDk/b;->c:LFk/p0;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LDk/b$a;
    .locals 1

    new-instance v0, LDk/b$a;

    invoke-direct {v0}, LDk/b$a;-><init>()V

    return-object v0
.end method

.method public static v(Ljava/lang/Object;)LDk/b;
    .locals 1

    instance-of v0, p0, LDk/b;

    if-eqz v0, :cond_0

    check-cast p0, LDk/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LDk/b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LDk/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/G0;

    iget-object v1, p0, LDk/b;->b:LFk/x;

    iget-object v2, p0, LDk/b;->c:LFk/p0;

    invoke-static {v2}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Loh/g;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public x()LFk/x;
    .locals 1

    iget-object v0, p0, LDk/b;->b:LFk/x;

    return-object v0
.end method

.method public y()LFk/p0;
    .locals 1

    iget-object v0, p0, LDk/b;->c:LFk/p0;

    return-object v0
.end method
