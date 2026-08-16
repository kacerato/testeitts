.class public LFk/c;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFk/c$a;
    }
.end annotation


# instance fields
.field public final b:Loh/y;

.field public final c:Loh/y;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Loh/E;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    iput-object v0, p0, LFk/c;->b:Loh/y;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    iput-object p1, p0, LFk/c;->c:Loh/y;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/y;Loh/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LFk/c;->b:Loh/y;

    iput-object p2, p0, LFk/c;->c:Loh/y;

    return-void
.end method

.method public static u()LFk/c$a;
    .locals 1

    new-instance v0, LFk/c$a;

    invoke-direct {v0}, LFk/c$a;-><init>()V

    return-object v0
.end method

.method public static v(Ljava/lang/Object;)LFk/c;
    .locals 1

    instance-of v0, p0, LFk/c;

    if-eqz v0, :cond_0

    check-cast p0, LFk/c;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/c;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/c;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, LFk/c;->b:Loh/y;

    iget-object v1, p0, LFk/c;->c:Loh/y;

    const/4 v2, 0x2

    new-array v2, v2, [Loh/g;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lzk/a;->e([Loh/g;)Loh/E;

    move-result-object v0

    return-object v0
.end method

.method public x()Loh/y;
    .locals 1

    iget-object v0, p0, LFk/c;->c:Loh/y;

    return-object v0
.end method

.method public y()Loh/y;
    .locals 1

    iget-object v0, p0, LFk/c;->b:Loh/y;

    return-object v0
.end method
