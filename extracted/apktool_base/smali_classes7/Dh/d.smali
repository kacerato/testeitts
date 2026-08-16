.class public LDh/d;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final e:Lhi/b;


# instance fields
.field public b:Lhi/b;

.field public c:[B

.field public d:Lhi/K;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhi/b;

    sget-object v1, LSh/d;->c:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    sput-object v0, LDh/d;->e:Lhi/b;

    return-void
.end method

.method public constructor <init>(Lhi/b;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, LDh/d;-><init>(Lhi/b;[BLhi/K;)V

    return-void
.end method

.method public constructor <init>(Lhi/b;[BLhi/K;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, LDh/d;->e:Lhi/b;

    :cond_0
    iput-object p1, p0, LDh/d;->b:Lhi/b;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LDh/d;->c:[B

    iput-object p3, p0, LDh/d;->d:Lhi/K;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/y;

    if-eqz v1, :cond_0

    sget-object v1, LDh/d;->e:Lhi/b;

    iput-object v1, p0, LDh/d;->b:Lhi/b;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, LDh/d;->b:Lhi/b;

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    iput-object v0, p0, LDh/d;->c:[B

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/K;->u(Ljava/lang/Object;)Lhi/K;

    move-result-object p1

    iput-object p1, p0, LDh/d;->d:Lhi/K;

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1, v0}, LDh/d;-><init>(Lhi/b;[BLhi/K;)V

    return-void
.end method

.method public constructor <init>([BLhi/K;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1, p2}, LDh/d;-><init>(Lhi/b;[BLhi/K;)V

    return-void
.end method

.method public static w(Ljava/lang/Object;)LDh/d;
    .locals 1

    instance-of v0, p0, LDh/d;

    if-eqz v0, :cond_0

    check-cast p0, LDh/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LDh/d;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LDh/d;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LDh/d;->b:Lhi/b;

    sget-object v2, LDh/d;->e:Lhi/b;

    invoke-virtual {v1, v2}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LDh/d;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/C0;

    iget-object v2, p0, LDh/d;->c:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v1}, Loh/B;->r()Loh/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LDh/d;->d:Lhi/K;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[B
    .locals 1

    iget-object v0, p0, LDh/d;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public v()Lhi/b;
    .locals 1

    iget-object v0, p0, LDh/d;->b:Lhi/b;

    return-object v0
.end method

.method public x()Lhi/K;
    .locals 1

    iget-object v0, p0, LDh/d;->d:Lhi/K;

    return-object v0
.end method
