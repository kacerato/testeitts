.class public LEk/d;
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

    iput p1, p0, LEk/d;->b:I

    iput-object p2, p0, LEk/d;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    iput v0, p0, LEk/d;->b:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, Loh/t;->F(Ljava/lang/Object;)Loh/t;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LEk/d;->c:Loh/g;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid choice value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LFk/z;->v(Ljava/lang/Object;)LFk/z;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LEk/t;->y(Ljava/lang/Object;)LEk/t;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static A(LEk/t;)LEk/d;
    .locals 2

    new-instance v0, LEk/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LEk/d;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static B(LFk/z;)LEk/d;
    .locals 2

    new-instance v0, LEk/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LEk/d;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static C()LEk/d;
    .locals 3

    new-instance v0, LEk/d;

    const/4 v1, 0x3

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, LEk/d;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static u(Loh/y;)LEk/d;
    .locals 2

    new-instance v0, LEk/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LEk/d;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static v([B)LEk/d;
    .locals 2

    new-instance v0, LEk/d;

    new-instance v1, Loh/C0;

    invoke-direct {v1, p0}, Loh/C0;-><init>([B)V

    const/4 p0, 0x2

    invoke-direct {v0, p0, v1}, LEk/d;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static z(Ljava/lang/Object;)LEk/d;
    .locals 2

    instance-of v0, p0, LEk/d;

    if-eqz v0, :cond_0

    check-cast p0, LEk/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/d;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/d;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/K0;

    iget v1, p0, LEk/d;->b:I

    iget-object v2, p0, LEk/d;->c:Loh/g;

    invoke-direct {v0, v1, v2}, Loh/K0;-><init>(ILoh/g;)V

    invoke-virtual {v0}, Loh/B;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, LEk/d;->c:Loh/g;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, LEk/d;->b:I

    return v0
.end method
