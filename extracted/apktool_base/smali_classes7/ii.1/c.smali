.class public Lii/c;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public e:Loh/g;

.field public f:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lii/c;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lii/c;->c:I

    const/16 v1, 0x3e7

    iput v1, p0, Lii/c;->d:I

    if-gt p1, v1, :cond_0

    if-lt p1, v0, :cond_0

    new-instance v0, Loh/s;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Lii/c;->e:Loh/g;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong size in numeric code : not in (1..999)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lii/c;->b:I

    const/4 v1, 0x1

    iput v1, p0, Lii/c;->c:I

    const/16 v1, 0x3e7

    iput v1, p0, Lii/c;->d:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    new-instance v0, Loh/F0;

    invoke-direct {v0, p1}, Loh/F0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lii/c;->e:Loh/g;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong size in alphabetic code : max size is 3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Ljava/lang/Object;)Lii/c;
    .locals 1

    if-eqz p0, :cond_3

    instance-of v0, p0, Lii/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/s;

    if-eqz v0, :cond_1

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-virtual {p0}, Loh/s;->O()I

    move-result p0

    new-instance v0, Lii/c;

    invoke-direct {v0, p0}, Lii/c;-><init>(I)V

    return-object v0

    :cond_1
    instance-of v0, p0, Loh/C;

    if-eqz v0, :cond_2

    invoke-static {p0}, Loh/C;->F(Ljava/lang/Object;)Loh/C;

    move-result-object p0

    new-instance v0, Lii/c;

    invoke-virtual {p0}, Loh/C;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lii/c;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    check-cast p0, Lii/c;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lii/c;->e:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lii/c;->e:Loh/g;

    check-cast v0, Loh/C;

    invoke-virtual {v0}, Loh/C;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, Lii/c;->e:Loh/g;

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lii/c;->e:Loh/g;

    instance-of v0, v0, Loh/C;

    return v0
.end method
