.class public Lcom/google/common/reflect/p$k;
.super Lcom/google/common/collect/K0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/K0<",
        "Lcom/google/common/reflect/p<",
        "-TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final d:J


# instance fields
.field public transient b:Lcom/google/common/collect/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/reflect/p<",
            "-TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final synthetic c:Lcom/google/common/reflect/p;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/reflect/p$k;->c:Lcom/google/common/reflect/p;

    invoke-direct {p0}, Lcom/google/common/collect/K0;-><init>()V

    return-void
.end method


# virtual methods
.method public D0()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/reflect/p<",
            "-TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/p$k;->b:Lcom/google/common/collect/r1;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/reflect/p$i;->a:Lcom/google/common/reflect/p$i;

    iget-object v1, p0, Lcom/google/common/reflect/p$k;->c:Lcom/google/common/reflect/p;

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/p$i;->d(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/p0;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/p0;

    move-result-object v0

    sget-object v1, Lcom/google/common/reflect/p$j;->IGNORE_TYPE_VARIABLE_OR_WILDCARD:Lcom/google/common/reflect/p$j;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/p0;->n(Lw2/I;)Lcom/google/common/collect/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/p0;->G()Lcom/google/common/collect/r1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/p$k;->b:Lcom/google/common/collect/r1;

    :cond_0
    return-object v0
.end method

.method public G0()Lcom/google/common/reflect/p$k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/p<",
            "TT;>.k;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/reflect/p$f;

    iget-object v1, p0, Lcom/google/common/reflect/p$k;->c:Lcom/google/common/reflect/p;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/p$f;-><init>(Lcom/google/common/reflect/p;Lcom/google/common/reflect/p$a;)V

    return-object v0
.end method

.method public H0()Lcom/google/common/reflect/p$k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/p<",
            "TT;>.k;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/reflect/p$g;

    iget-object v1, p0, Lcom/google/common/reflect/p$k;->c:Lcom/google/common/reflect/p;

    invoke-direct {v0, v1, p0}, Lcom/google/common/reflect/p$g;-><init>(Lcom/google/common/reflect/p;Lcom/google/common/reflect/p$k;)V

    return-object v0
.end method

.method public I0()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/reflect/p$i;->b:Lcom/google/common/reflect/p$i;

    iget-object v1, p0, Lcom/google/common/reflect/p$k;->c:Lcom/google/common/reflect/p;

    invoke-static {v1}, Lcom/google/common/reflect/p;->d(Lcom/google/common/reflect/p;)Lcom/google/common/collect/r1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/p$i;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/r1;->s(Ljava/util/Collection;)Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/reflect/p$k;->D0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/reflect/p$k;->D0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
