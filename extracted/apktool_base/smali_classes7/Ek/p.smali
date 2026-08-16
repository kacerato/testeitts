.class public LEk/p;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3


# instance fields
.field public final b:I

.field public final c:Loh/g;


# direct methods
.method public constructor <init>(ILoh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LEk/p;->b:I

    iput-object p2, p0, LEk/p;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    iput v0, p0, LEk/p;->b:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid choice value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LEk/i;->w(Ljava/lang/Object;)LEk/i;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LEk/p;->c:Loh/g;

    return-void

    :cond_2
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LEk/E;->w(Ljava/lang/Object;)LEk/E;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LEk/v;->y(Ljava/lang/Object;)LEk/v;

    move-result-object p1

    goto :goto_0
.end method

.method public static A([B)LEk/p;
    .locals 2

    new-instance v0, LEk/p;

    new-instance v1, Loh/C0;

    invoke-static {p0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Loh/C0;-><init>([B)V

    const/4 p0, 0x3

    invoke-direct {v0, p0, v1}, LEk/p;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static B(LEk/E;)LEk/p;
    .locals 2

    new-instance v0, LEk/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LEk/p;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static C(LEk/v;)LEk/p;
    .locals 2

    new-instance v0, LEk/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LEk/p;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static D([B)LEk/p;
    .locals 2

    new-instance v0, LEk/p;

    new-instance v1, Loh/C0;

    invoke-static {p0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Loh/C0;-><init>([B)V

    const/4 p0, 0x0

    invoke-direct {v0, p0, v1}, LEk/p;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static u(LEk/i;)LEk/p;
    .locals 2

    new-instance v0, LEk/p;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LEk/p;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static y(Ljava/lang/Object;)LEk/p;
    .locals 2

    instance-of v0, p0, LEk/p;

    if-eqz v0, :cond_0

    check-cast p0, LEk/p;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/p;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/p;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(LEk/v;)LEk/p;
    .locals 2

    new-instance v0, LEk/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, LEk/p;-><init>(ILoh/g;)V

    return-object v0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/K0;

    iget v1, p0, LEk/p;->b:I

    iget-object v2, p0, LEk/p;->c:Loh/g;

    invoke-direct {v0, v1, v2}, Loh/K0;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, LEk/p;->b:I

    return v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, LEk/p;->c:Loh/g;

    return-object v0
.end method
