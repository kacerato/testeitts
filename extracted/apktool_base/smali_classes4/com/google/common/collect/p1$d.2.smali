.class public Lcom/google/common/collect/p1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:J


# instance fields
.field public final b:Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i1<",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/i1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/i1<",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/p1$d;->b:Lcom/google/common/collect/i1;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/common/collect/p1$c;

    invoke-direct {v0}, Lcom/google/common/collect/p1$c;-><init>()V

    iget-object v1, p0, Lcom/google/common/collect/p1$d;->b:Lcom/google/common/collect/i1;

    invoke-virtual {v1}, Lcom/google/common/collect/i1;->s()Lcom/google/common/collect/r1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/j2;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/p1$c;->c(Lcom/google/common/collect/j2;Ljava/lang/Object;)Lcom/google/common/collect/p1$c;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/p1$c;->a()Lcom/google/common/collect/p1;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/p1$d;->b:Lcom/google/common/collect/i1;

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/p1;->p()Lcom/google/common/collect/p1;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/p1$d;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
