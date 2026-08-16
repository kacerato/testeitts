.class public Lzh/j;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public final b:Loh/n;

.field public final c:Luh/o;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 1
    new-instance v0, Loh/n;

    invoke-direct {v0, p1}, Loh/n;-><init>(Ljava/util/Date;)V

    invoke-direct {p0, v0}, Lzh/j;-><init>(Loh/n;)V

    return-void
.end method

.method public constructor <init>(Loh/n;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lzh/j;->b:Loh/n;

    const/4 p1, 0x0

    iput-object p1, p0, Lzh/j;->c:Luh/o;

    return-void
.end method

.method public constructor <init>(Luh/o;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzh/j;->b:Loh/n;

    iput-object p1, p0, Lzh/j;->c:Luh/o;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lzh/j;
    .locals 1

    instance-of v0, p0, Lzh/j;

    if-eqz v0, :cond_0

    check-cast p0, Lzh/j;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/n;

    if-eqz v0, :cond_1

    new-instance v0, Lzh/j;

    invoke-static {p0}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object p0

    invoke-direct {v0, p0}, Lzh/j;-><init>(Loh/n;)V

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Lzh/j;

    invoke-static {p0}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object p0

    invoke-direct {v0, p0}, Lzh/j;-><init>(Luh/o;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Lzh/j;
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x80

    invoke-static {p0, p1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    invoke-static {p0}, Lzh/j;->v(Ljava/lang/Object;)Lzh/j;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lzh/j;->b:Loh/n;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lzh/j;->c:Luh/o;

    invoke-virtual {v0}, Luh/o;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzh/j;->b:Loh/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lzh/j;->c:Luh/o;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Loh/n;
    .locals 1

    iget-object v0, p0, Lzh/j;->b:Loh/n;

    return-object v0
.end method

.method public x()Luh/o;
    .locals 1

    iget-object v0, p0, Lzh/j;->c:Luh/o;

    return-object v0
.end method
