.class public Lqh/k;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1


# instance fields
.field public final b:I

.field public final c:Loh/v;


# direct methods
.method public constructor <init>(Loh/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    instance-of v0, p1, Loh/E;

    if-nez v0, :cond_2

    instance-of v0, p1, Lqh/l;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Loh/M;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lqh/k;->b:I

    check-cast p1, Loh/M;

    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, Lqh/n;->v(Ljava/lang/Object;)Lqh/n;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lqh/k;->c:Loh/v;

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown check object in integrity check."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lqh/k;->b:I

    invoke-static {p1}, Lqh/l;->u(Ljava/lang/Object;)Lqh/l;

    move-result-object p1

    goto :goto_0

    :goto_2
    return-void
.end method

.method public constructor <init>(Lqh/l;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lqh/k;-><init>(Loh/g;)V

    return-void
.end method

.method public constructor <init>(Lqh/n;)V
    .locals 2

    .line 3
    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Loh/K0;-><init>(ILoh/g;)V

    invoke-direct {p0, v0}, Lqh/k;-><init>(Loh/g;)V

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lqh/k;
    .locals 1

    instance-of v0, p0, Lqh/k;

    if-eqz v0, :cond_0

    check-cast p0, Lqh/k;

    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lqh/k;

    check-cast p0, [B

    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0

    invoke-direct {v0, p0}, Lqh/k;-><init>(Loh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse integrity check details."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Lqh/k;

    check-cast p0, Loh/g;

    invoke-direct {v0, p0}, Lqh/k;-><init>(Loh/g;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    iget-object v0, p0, Lqh/k;->c:Loh/v;

    instance-of v1, v0, Lqh/n;

    if-eqz v1, :cond_0

    new-instance v1, Loh/K0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Loh/K0;-><init>(ILoh/g;)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Loh/v;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public v()Loh/v;
    .locals 1

    iget-object v0, p0, Lqh/k;->c:Loh/v;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lqh/k;->b:I

    return v0
.end method
