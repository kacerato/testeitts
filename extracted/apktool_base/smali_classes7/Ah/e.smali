.class public LAh/e;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final d:Loh/x;

.field public static final e:I = 0xc0

.field public static final f:I = 0x80

.field public static final g:I = 0x40

.field public static final h:I = 0x0

.field public static final i:I = 0x2

.field public static final j:I = 0x1

.field public static k:Ljava/util/Map;

.field public static l:LAh/a;


# instance fields
.field public b:Loh/x;

.field public c:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, LAh/h;->a:Loh/x;

    const-string v1, "3.1.2.1"

    invoke-virtual {v0, v1}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v0

    sput-object v0, LAh/e;->d:Loh/x;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LAh/e;->k:Ljava/util/Map;

    new-instance v0, LAh/a;

    invoke-direct {v0}, LAh/a;-><init>()V

    sput-object v0, LAh/e;->l:LAh/a;

    sget-object v0, LAh/e;->k:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RADG4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LAh/e;->k:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RADG3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LAh/e;->l:LAh/a;

    const/16 v1, 0xc0

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CVCA"

    invoke-virtual {v0, v1, v2}, LAh/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LAh/e;->l:LAh/a;

    const/16 v1, 0x80

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DV_DOMESTIC"

    invoke-virtual {v0, v1, v2}, LAh/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LAh/e;->l:LAh/a;

    const/16 v1, 0x40

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DV_FOREIGN"

    invoke-virtual {v0, v1, v2}, LAh/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LAh/e;->l:LAh/a;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IS"

    invoke-virtual {v0, v1, v2}, LAh/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/16 v0, 0x40

    const/16 v1, 0x4c

    invoke-virtual {p1, v0, v1}, Loh/M;->m(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Loh/M;->M(ZI)Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p0, p1}, LAh/e;->B(Loh/E;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized object in CerticateHolderAuthorization"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/x;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p0, p1}, LAh/e;->A(Loh/x;)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, LAh/e;->z(B)V

    return-void
.end method

.method public static v(Ljava/lang/String;)I
    .locals 3

    sget-object v0, LAh/e;->l:LAh/a;

    invoke-virtual {v0, p0}, LAh/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static y(I)Ljava/lang/String;
    .locals 1

    sget-object v0, LAh/e;->l:LAh/a;

    invoke-static {p0}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A(Loh/x;)V
    .locals 0

    iput-object p1, p0, LAh/e;->b:Loh/x;

    return-void
.end method

.method public final B(Loh/E;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/B;

    instance-of v2, v1, Loh/x;

    if-eqz v2, :cond_1

    check-cast v1, Loh/x;

    iput-object v1, p0, LAh/e;->b:Loh/x;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/B;

    instance-of v1, p1, Loh/M;

    if-eqz v1, :cond_0

    const/16 v1, 0x40

    const/16 v2, 0x13

    invoke-static {p1, v1, v2}, Loh/M;->T(Ljava/lang/Object;II)Loh/M;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Loh/M;->M(ZI)Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    aget-byte p1, p1, v0

    iput-byte p1, p0, LAh/e;->c:B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No access rights in CerticateHolderAuthorization"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no Oid in CerticateHolderAuthorization"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LAh/e;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-byte v1, p0, LAh/e;->c:B

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/16 v1, 0x13

    invoke-static {v1, v2}, LAh/i;->c(I[B)Loh/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    const/16 v0, 0x4c

    invoke-static {v0, v1}, LAh/i;->b(ILoh/E;)Loh/M;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    iget-byte v0, p0, LAh/e;->c:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public x()Loh/x;
    .locals 1

    iget-object v0, p0, LAh/e;->b:Loh/x;

    return-object v0
.end method

.method public final z(B)V
    .locals 0

    iput-byte p1, p0, LAh/e;->c:B

    return-void
.end method
