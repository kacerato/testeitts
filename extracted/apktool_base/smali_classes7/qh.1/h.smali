.class public Lqh/h;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Loh/v;",
        "Lorg/bouncycastle/util/l<",
        "Loh/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:[Loh/g;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Loh/g;

    iput-object v0, p0, Lqh/h;->b:[Loh/g;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lqh/h;->b:[Loh/g;

    array-length v2, v1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lqh/g;->z(Ljava/lang/Object;)Lqh/g;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Lqh/g;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Loh/g;

    iput-object v0, p0, Lqh/h;->b:[Loh/g;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lqh/h;
    .locals 1

    instance-of v0, p0, Lqh/h;

    if-eqz v0, :cond_0

    check-cast p0, Lqh/h;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lqh/h;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lqh/h;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Loh/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/util/a$a;

    iget-object v1, p0, Lqh/h;->b:[Loh/g;

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/a$a;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/G0;

    iget-object v1, p0, Lqh/h;->b:[Loh/g;

    invoke-direct {v0, v1}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method
