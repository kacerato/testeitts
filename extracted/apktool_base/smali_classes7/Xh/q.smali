.class public LXh/q;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final f:Lhi/b;


# instance fields
.field public final b:Loh/y;

.field public final c:Loh/s;

.field public final d:Loh/s;

.field public final e:Lhi/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->w1:Loh/x;

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, LXh/q;->f:Lhi/b;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/y;

    iput-object v0, p0, LXh/q;->b:Loh/y;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    iput-object v0, p0, LXh/q;->c:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Loh/s;

    if-eqz v2, :cond_1

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, LXh/q;->d:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-object v1, p0, LXh/q;->d:Loh/s;

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object p1

    iput-object p1, p0, LXh/q;->e:Lhi/b;

    goto :goto_1

    :cond_2
    iput-object v1, p0, LXh/q;->d:Loh/s;

    :cond_3
    iput-object v1, p0, LXh/q;->e:Lhi/b;

    :goto_1
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, LXh/q;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, LXh/q;-><init>([BIILhi/b;)V

    return-void
.end method

.method public constructor <init>([BIILhi/b;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/C0;

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LXh/q;->b:Loh/y;

    new-instance p1, Loh/s;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Loh/s;-><init>(J)V

    iput-object p1, p0, LXh/q;->c:Loh/s;

    if-lez p3, :cond_0

    new-instance p1, Loh/s;

    int-to-long p2, p3

    invoke-direct {p1, p2, p3}, Loh/s;-><init>(J)V

    :goto_0
    iput-object p1, p0, LXh/q;->d:Loh/s;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iput-object p4, p0, LXh/q;->e:Lhi/b;

    return-void
.end method

.method public constructor <init>([BILhi/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0, p3}, LXh/q;-><init>([BIILhi/b;)V

    return-void
.end method

.method public static u(Ljava/lang/Object;)LXh/q;
    .locals 1

    instance-of v0, p0, LXh/q;

    if-eqz v0, :cond_0

    check-cast p0, LXh/q;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/q;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/q;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 2

    iget-object v0, p0, LXh/q;->e:Lhi/b;

    if-eqz v0, :cond_1

    sget-object v1, LXh/q;->f:Lhi/b;

    invoke-virtual {v0, v1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LXh/q;->b:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/q;->c:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/q;->d:Loh/s;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LXh/q;->e:Lhi/b;

    if-eqz v1, :cond_1

    sget-object v2, LXh/q;->f:Lhi/b;

    invoke-virtual {v1, v2}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, LXh/q;->e:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/q;->c:Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/q;->d:Loh/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, LXh/q;->e:Lhi/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, LXh/q;->f:Lhi/b;

    return-object v0
.end method

.method public z()[B
    .locals 1

    iget-object v0, p0, LXh/q;->b:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
