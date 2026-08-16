.class public LDk/f;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final d:LDk/e;

.field public static final e:LDk/e;


# instance fields
.field public final b:LDk/e;

.field public final c:Loh/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LDk/e;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, LDk/e;-><init>(J)V

    sput-object v0, LDk/f;->d:LDk/e;

    new-instance v0, LDk/e;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, LDk/e;-><init>(J)V

    sput-object v0, LDk/f;->e:LDk/e;

    return-void
.end method

.method public constructor <init>(LDk/e;Loh/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LDk/f;->b:LDk/e;

    invoke-virtual {p1}, LDk/e;->u()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, LDk/e;->u()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id not 1 (EtsiTs102941CrlRequest) or 2 (EtsiTs102941DeltaCtlRequest)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, LDk/f;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LDk/e;->v(Ljava/lang/Object;)LDk/e;

    move-result-object v0

    iput-object v0, p0, LDk/f;->b:LDk/e;

    sget-object v1, LDk/f;->d:LDk/e;

    invoke-virtual {v0, v1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LDk/b;->v(Ljava/lang/Object;)LDk/b;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LDk/f;->c:Loh/g;

    goto :goto_1

    :cond_0
    sget-object v1, LDk/f;->e:LDk/e;

    invoke-virtual {v0, v1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LDk/d;->z(Ljava/lang/Object;)LDk/d;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "id not 1 (EtsiTs102941CrlRequest) or 2 (EtsiTs102941DeltaCtlRequest)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(LDk/b;)LDk/f;
    .locals 2

    new-instance v0, LDk/f;

    sget-object v1, LDk/f;->d:LDk/e;

    invoke-direct {v0, v1, p0}, LDk/f;-><init>(LDk/e;Loh/g;)V

    return-object v0
.end method

.method public static v(LDk/d;)LDk/f;
    .locals 2

    new-instance v0, LDk/f;

    sget-object v1, LDk/f;->e:LDk/e;

    invoke-direct {v0, v1, p0}, LDk/f;-><init>(LDk/e;Loh/g;)V

    return-object v0
.end method

.method public static z(Ljava/lang/Object;)LDk/f;
    .locals 1

    instance-of v0, p0, LDk/f;

    if-eqz v0, :cond_0

    check-cast p0, LDk/f;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LDk/f;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LDk/f;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/G0;

    iget-object v1, p0, LDk/f;->b:LDk/e;

    iget-object v2, p0, LDk/f;->c:Loh/g;

    const/4 v3, 0x2

    new-array v3, v3, [Loh/g;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, LDk/f;->c:Loh/g;

    return-object v0
.end method

.method public y()LDk/e;
    .locals 1

    iget-object v0, p0, LDk/f;->b:LDk/e;

    return-object v0
.end method
