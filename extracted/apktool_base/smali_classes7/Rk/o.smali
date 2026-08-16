.class public LRk/o;
.super LRk/g;
.source "SourceFile"


# static fields
.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, LRk/o;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LRk/g;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lhi/b;)LBi/S;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    sget-object v0, LBh/a;->e:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lbj/m;

    sget-object v0, LRk/o;->b:[B

    invoke-direct {p1, v0}, Lbj/m;-><init>([B)V

    return-object p1

    :cond_0
    new-instance p1, Lbj/j;

    invoke-direct {p1}, Lbj/j;-><init>()V

    return-object p1
.end method

.method public f(Lhi/h0;)LXi/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/q;->b(Lhi/h0;)LXi/c;

    move-result-object p1

    return-object p1
.end method
