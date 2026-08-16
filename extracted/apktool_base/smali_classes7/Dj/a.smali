.class public LDj/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lyk/c;


# instance fields
.field public final a:LEk/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LJk/a;->f:Lyk/f$b;

    invoke-virtual {v0}, Lyk/f$b;->f()Lyk/c;

    move-result-object v0

    sput-object v0, LDj/a;->b:Lyk/c;

    return-void
.end method

.method public constructor <init>(LEk/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDj/a;->a:LEk/i;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lyk/h;

    if-eqz v0, :cond_0

    check-cast p1, Lyk/h;

    goto :goto_0

    :cond_0
    new-instance v0, Lyk/h;

    invoke-direct {v0, p1}, Lyk/h;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :goto_0
    sget-object v0, LDj/a;->b:Lyk/c;

    invoke-virtual {p1, v0}, Lyk/h;->o(Lyk/c;)Loh/v;

    move-result-object p1

    invoke-static {p1}, LCk/c;->z(Ljava/lang/Object;)LCk/c;

    move-result-object p1

    invoke-virtual {p1}, LEk/q;->v()LEk/p;

    move-result-object p1

    invoke-virtual {p1}, LEk/p;->v()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, LEk/p;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, LEk/i;->w(Ljava/lang/Object;)LEk/i;

    move-result-object p1

    iput-object p1, p0, LDj/a;->a:LEk/i;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "EtsiTs103097Data-Encrypted did not have encrypted data content"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, LDj/a;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    new-instance v0, LCk/c;

    iget-object v1, p0, LDj/a;->a:LEk/i;

    invoke-static {v1}, LEk/p;->u(LEk/i;)LEk/p;

    move-result-object v1

    invoke-direct {v0, v1}, LCk/c;-><init>(LEk/p;)V

    sget-object v1, LDj/a;->b:Lyk/c;

    invoke-static {v0, v1}, Lyk/g;->a(Loh/g;Lyk/c;)[B

    move-result-object v0

    return-object v0
.end method

.method public b()LEk/i;
    .locals 1

    iget-object v0, p0, LDj/a;->a:LEk/i;

    return-object v0
.end method

.method public c()Lorg/bouncycastle/util/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/t<",
            "LDj/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LDj/a;->a:LEk/i;

    invoke-virtual {v1}, LEk/i;->x()LEk/D;

    move-result-object v1

    invoke-virtual {v1}, LEk/D;->x()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LEk/A;

    new-instance v3, LDj/e;

    iget-object v4, p0, LDj/a;->a:LEk/i;

    invoke-direct {v3, v4, v2}, LDj/e;-><init>(LEk/i;LEk/A;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/util/e;

    invoke-direct {v1, v0}, Lorg/bouncycastle/util/e;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method
