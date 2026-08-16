.class public Lcom/google/common/collect/Q1$v$a;
.super Lcom/google/common/collect/K0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Q1$v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/K0<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Q1$v;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Q1$v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Q1$v$a;->b:Lcom/google/common/collect/Q1$v;

    invoke-direct {p0}, Lcom/google/common/collect/K0;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/Q1$v;Lcom/google/common/collect/Q1$e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/Q1$v$a;-><init>(Lcom/google/common/collect/Q1$v;)V

    return-void
.end method


# virtual methods
.method public D0()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q1$v$a;->b:Lcom/google/common/collect/Q1$v;

    iget-object v0, v0, Lcom/google/common/collect/Q1$v;->g:Ljava/util/Set;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Q1$v$a$a;

    iget-object v1, p0, Lcom/google/common/collect/Q1$v$a;->b:Lcom/google/common/collect/Q1$v;

    iget-object v1, v1, Lcom/google/common/collect/Q1$v;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Q1$v$a$a;-><init>(Lcom/google/common/collect/Q1$v$a;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Q1$v$a;->D0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Q1$v$a;->D0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
