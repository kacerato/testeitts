.class public Lcom/google/common/collect/T2$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/T2$d;->f()Lw2/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/t<",
        "Lcom/google/common/collect/S2$a<",
        "TR;TC;TV1;>;",
        "Lcom/google/common/collect/S2$a<",
        "TR;TC;TV2;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/T2$d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/T2$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/T2$d$a;->b:Lcom/google/common/collect/T2$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/S2$a;)Lcom/google/common/collect/S2$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV1;>;)",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV2;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/T2$d$a;->b:Lcom/google/common/collect/T2$d;

    iget-object v2, v2, Lcom/google/common/collect/T2$d;->e:Lw2/t;

    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, p1}, Lw2/t;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/T2;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/S2$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/S2$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/T2$d$a;->a(Lcom/google/common/collect/S2$a;)Lcom/google/common/collect/S2$a;

    move-result-object p1

    return-object p1
.end method
