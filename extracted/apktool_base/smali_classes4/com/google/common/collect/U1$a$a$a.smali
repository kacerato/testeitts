.class public Lcom/google/common/collect/U1$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/U1$a$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/t<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/U1$a$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/U1$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/U1$a$a$a;->b:Lcom/google/common/collect/U1$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U1$a$a$a;->b:Lcom/google/common/collect/U1$a$a;

    iget-object v0, v0, Lcom/google/common/collect/U1$a$a;->b:Lcom/google/common/collect/U1$a;

    invoke-static {v0}, Lcom/google/common/collect/U1$a;->k(Lcom/google/common/collect/U1$a;)Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/S1;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/common/collect/U1$a$a$a;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
