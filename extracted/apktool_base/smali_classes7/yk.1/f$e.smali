.class public Lyk/f$e;
.super Lyk/f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public s:Z


# direct methods
.method public constructor <init>(Lyk/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyk/f$e;->s:Z

    return-void
.end method


# virtual methods
.method public varargs D([Lyk/f$b;)Lyk/f$e;
    .locals 8

    iget-boolean v0, p0, Lyk/f$e;->s:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast v2, [Ljava/lang/Object;

    array-length v4, v2

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    iget-object v7, p0, Lyk/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v6}, Lyk/f$b;->C(ZLjava/lang/Object;)Lyk/f$b;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lyk/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v2}, Lyk/f$b;->C(ZLjava/lang/Object;)Lyk/f$b;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lyk/f$e;->s:Z

    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "build cannot be modified and must be copied only"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E(Ljava/lang/String;)Lyk/f$e;
    .locals 0

    iput-object p1, p0, Lyk/f$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic q(Ljava/lang/String;)Lyk/f$b;
    .locals 0

    invoke-virtual {p0, p1}, Lyk/f$e;->E(Ljava/lang/String;)Lyk/f$e;

    move-result-object p1

    return-object p1
.end method
