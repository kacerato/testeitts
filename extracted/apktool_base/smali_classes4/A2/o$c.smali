.class public LA2/o$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/o;->b()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:LA2/o;


# direct methods
.method public constructor <init>(LA2/o;)V
    .locals 0

    iput-object p1, p0, LA2/o$c;->b:LA2/o;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/e3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/o$c;->b:LA2/o;

    invoke-static {v0}, LA2/o;->l(LA2/o;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, LA2/o$c;->b:LA2/o;

    invoke-static {v0}, LA2/o;->m(LA2/o;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, LA2/o$c$a;

    invoke-direct {v1, p0, v0}, LA2/o$c$a;-><init>(LA2/o$c;Ljava/util/Iterator;)V

    return-object v1

    :cond_0
    iget-object v0, p0, LA2/o$c;->b:LA2/o;

    invoke-static {v0}, LA2/o;->l(LA2/o;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, LA2/o$c$b;

    invoke-direct {v1, p0, v0}, LA2/o$c$b;-><init>(LA2/o$c;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, LA2/o$c;->b:LA2/o;

    invoke-static {v0}, LA2/o;->m(LA2/o;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA2/o;->p(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, LA2/o$c;->a()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LA2/o$c;->b:LA2/o;

    invoke-static {v0}, LA2/o;->q(LA2/o;)I

    move-result v0

    return v0
.end method
