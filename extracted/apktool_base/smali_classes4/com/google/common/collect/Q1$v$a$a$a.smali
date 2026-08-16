.class public Lcom/google/common/collect/Q1$v$a$a$a;
.super Lcom/google/common/collect/D0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Q1$v$a$a;->b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/D0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/Map$Entry;

.field public final synthetic c:Lcom/google/common/collect/Q1$v$a$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Q1$v$a$a;Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Q1$v$a$a$a;->c:Lcom/google/common/collect/Q1$v$a$a;

    iput-object p2, p0, Lcom/google/common/collect/Q1$v$a$a$a;->b:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/D0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Q1$v$a$a$a;->m0()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public m0()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q1$v$a$a$a;->b:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q1$v$a$a$a;->c:Lcom/google/common/collect/Q1$v$a$a;

    iget-object v0, v0, Lcom/google/common/collect/Q1$v$a$a;->c:Lcom/google/common/collect/Q1$v$a;

    iget-object v0, v0, Lcom/google/common/collect/Q1$v$a;->b:Lcom/google/common/collect/Q1$v;

    invoke-virtual {p0}, Lcom/google/common/collect/D0;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/Q1$n;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-super {p0, p1}, Lcom/google/common/collect/D0;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
