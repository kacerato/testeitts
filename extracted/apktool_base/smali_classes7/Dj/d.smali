.class public LDj/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/r<",
        "LDj/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LFk/x;


# direct methods
.method public constructor <init>(LFk/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDj/d;->b:LFk/x;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    new-instance v0, LFk/x;

    invoke-direct {v0, p1}, LFk/x;-><init>([B)V

    invoke-direct {p0, v0}, LDj/d;-><init>(LFk/x;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic Z2(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, LDj/e;

    invoke-virtual {p0, p1}, LDj/d;->a(LDj/e;)Z

    move-result p1

    return p1
.end method

.method public a(LDj/e;)Z
    .locals 2

    invoke-virtual {p1}, LDj/e;->c()LEk/A;

    move-result-object v0

    invoke-virtual {v0}, LEk/A;->v()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, LDj/e;->c()LEk/A;

    move-result-object p1

    invoke-virtual {p1}, LEk/A;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, LEk/w;->w(Ljava/lang/Object;)LEk/w;

    move-result-object p1

    invoke-virtual {p1}, LEk/w;->x()LFk/y;

    move-result-object p1

    invoke-virtual {p1}, LFk/y;->u()[B

    move-result-object p1

    iget-object v0, p0, LDj/d;->b:LFk/x;

    invoke-virtual {v0}, LFk/y;->u()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, LDj/d;

    iget-object v2, p0, LDj/d;->b:LFk/x;

    iget-object p1, p1, LDj/d;->b:LFk/x;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, LFk/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LDj/d;->b:LFk/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LFk/y;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
