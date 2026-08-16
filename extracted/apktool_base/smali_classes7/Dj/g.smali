.class public LDj/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lyk/c;


# instance fields
.field public final a:LEk/E;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LJk/a;->d:Lyk/f$b;

    invoke-virtual {v0}, Lyk/f$b;->f()Lyk/c;

    move-result-object v0

    sput-object v0, LDj/g;->b:Lyk/c;

    return-void
.end method

.method public constructor <init>(LCk/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LEk/q;->v()LEk/p;

    move-result-object v0

    invoke-virtual {v0}, LEk/p;->v()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, LEk/q;->v()LEk/p;

    move-result-object p1

    invoke-static {p1}, LEk/E;->w(Ljava/lang/Object;)LEk/E;

    move-result-object p1

    iput-object p1, p0, LDj/g;->a:LEk/E;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "EtsiTs103097Data-Signed did not have signed data content"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(LEk/E;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDj/g;->a:LEk/E;

    return-void
.end method

.method public constructor <init>(LEk/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, LEk/v;->x()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, LDj/g;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
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
    sget-object v0, LDj/g;->b:Lyk/c;

    invoke-virtual {p1, v0}, Lyk/h;->o(Lyk/c;)Loh/v;

    move-result-object p1

    invoke-static {p1}, LCk/e;->z(Ljava/lang/Object;)LCk/e;

    move-result-object p1

    invoke-virtual {p1}, LEk/q;->v()LEk/p;

    move-result-object p1

    invoke-virtual {p1}, LEk/p;->v()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, LEk/p;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, LEk/E;->w(Ljava/lang/Object;)LEk/E;

    move-result-object p1

    iput-object p1, p0, LDj/g;->a:LEk/E;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "EtsiTs103097Data-Signed did not have signed data content"

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

    .line 5
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, LDj/g;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    new-instance v0, LCk/e;

    iget-object v1, p0, LDj/g;->a:LEk/E;

    invoke-static {v1}, LEk/p;->B(LEk/E;)LEk/p;

    move-result-object v1

    invoke-direct {v0, v1}, LCk/e;-><init>(LEk/p;)V

    sget-object v1, LJk/a;->d:Lyk/f$b;

    invoke-virtual {v1}, Lyk/f$b;->f()Lyk/c;

    move-result-object v1

    invoke-static {v0, v1}, Lyk/g;->a(Loh/g;Lyk/c;)[B

    move-result-object v0

    return-object v0
.end method

.method public b()LEk/E;
    .locals 1

    iget-object v0, p0, LDj/g;->a:LEk/E;

    return-object v0
.end method

.method public c(LGj/e;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, LDj/g;->a:LEk/E;

    invoke-virtual {v0}, LEk/E;->x()LFk/j0;

    move-result-object v0

    invoke-virtual {v0}, LFk/j0;->x()I

    move-result v0

    invoke-interface {p1, v0}, LGj/e;->get(I)LQk/g;

    move-result-object p1

    invoke-interface {p1}, LQk/g;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, LDj/g;->a:LEk/E;

    invoke-virtual {v1}, LEk/E;->z()LEk/L;

    move-result-object v1

    sget-object v2, LLk/a;->M:Lyk/f$b;

    invoke-virtual {v2}, Lyk/f$b;->f()Lyk/c;

    move-result-object v2

    invoke-static {v1, v2}, Lyk/g;->a(Loh/g;Lyk/c;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, LDj/g;->a:LEk/E;

    invoke-virtual {v0}, LEk/E;->x()LFk/j0;

    move-result-object v0

    invoke-static {v0}, LGj/a;->b(LFk/j0;)[B

    move-result-object v0

    invoke-interface {p1, v0}, LQk/g;->verify([B)Z

    move-result p1

    return p1
.end method
