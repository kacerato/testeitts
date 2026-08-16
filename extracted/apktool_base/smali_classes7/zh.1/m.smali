.class public Lzh/m;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final c:Lzh/m;

.field public static final d:Lzh/m;

.field public static final e:Lzh/m;

.field public static final f:Lzh/m;


# instance fields
.field public b:Loh/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzh/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lzh/m;-><init>(I)V

    sput-object v0, Lzh/m;->c:Lzh/m;

    new-instance v0, Lzh/m;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lzh/m;-><init>(I)V

    sput-object v0, Lzh/m;->d:Lzh/m;

    new-instance v0, Lzh/m;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lzh/m;-><init>(I)V

    sput-object v0, Lzh/m;->e:Lzh/m;

    new-instance v0, Lzh/m;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lzh/m;-><init>(I)V

    sput-object v0, Lzh/m;->f:Lzh/m;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/j;

    invoke-direct {v0, p1}, Loh/j;-><init>(I)V

    iput-object v0, p0, Lzh/m;->b:Loh/j;

    return-void
.end method

.method public constructor <init>(Loh/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lzh/m;->b:Loh/j;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lzh/m;
    .locals 1

    instance-of v0, p0, Lzh/m;

    if-eqz v0, :cond_0

    check-cast p0, Lzh/m;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lzh/m;

    invoke-static {p0}, Loh/j;->F(Ljava/lang/Object;)Loh/j;

    move-result-object p0

    invoke-direct {v0, p0}, Lzh/m;-><init>(Loh/j;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Loh/M;Z)Lzh/m;
    .locals 0

    invoke-static {p0, p1}, Loh/j;->G(Loh/M;Z)Loh/j;

    move-result-object p0

    invoke-static {p0}, Lzh/m;->u(Ljava/lang/Object;)Lzh/m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lzh/m;->b:Loh/j;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lzh/m;->b:Loh/j;

    invoke-virtual {v0}, Loh/j;->L()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Lzh/m;->c:Lzh/m;

    iget-object v2, v2, Lzh/m;->b:Loh/j;

    invoke-virtual {v2}, Loh/j;->L()I

    move-result v2

    if-ne v0, v2, :cond_0

    const-string v0, "(CPD)"

    goto :goto_0

    :cond_0
    sget-object v2, Lzh/m;->d:Lzh/m;

    iget-object v2, v2, Lzh/m;->b:Loh/j;

    invoke-virtual {v2}, Loh/j;->L()I

    move-result v2

    if-ne v0, v2, :cond_1

    const-string v0, "(VSD)"

    goto :goto_0

    :cond_1
    sget-object v2, Lzh/m;->e:Lzh/m;

    iget-object v2, v2, Lzh/m;->b:Loh/j;

    invoke-virtual {v2}, Loh/j;->L()I

    move-result v2

    if-ne v0, v2, :cond_2

    const-string v0, "(VPKC)"

    goto :goto_0

    :cond_2
    sget-object v2, Lzh/m;->f:Lzh/m;

    iget-object v2, v2, Lzh/m;->b:Loh/j;

    invoke-virtual {v2}, Loh/j;->L()I

    move-result v2

    if-ne v0, v2, :cond_3

    const-string v0, "(CCPD)"

    goto :goto_0

    :cond_3
    const-string v0, "?"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lzh/m;->b:Loh/j;

    invoke-virtual {v0}, Loh/j;->H()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
