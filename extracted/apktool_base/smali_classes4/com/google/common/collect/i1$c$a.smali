.class public Lcom/google/common/collect/i1$c$a;
.super Lcom/google/common/collect/j1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i1$c;->o()Lcom/google/common/collect/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j1<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lcom/google/common/collect/i1$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/i1$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/i1$c$a;->g:Lcom/google/common/collect/i1$c;

    invoke-direct {p0}, Lcom/google/common/collect/j1;-><init>()V

    return-void
.end method


# virtual methods
.method public H()Lcom/google/common/collect/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i1$c$a;->g:Lcom/google/common/collect/i1$c;

    return-object v0
.end method

.method public i()Lcom/google/common/collect/e3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i1$c$a;->g:Lcom/google/common/collect/i1$c;

    invoke-virtual {v0}, Lcom/google/common/collect/i1$c;->N()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i1$c$a;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method
