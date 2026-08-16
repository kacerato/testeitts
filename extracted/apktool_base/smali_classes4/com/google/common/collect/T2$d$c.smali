.class public Lcom/google/common/collect/T2$d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/T2$d;->A()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/t<",
        "Ljava/util/Map<",
        "TR;TV1;>;",
        "Ljava/util/Map<",
        "TR;TV2;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/T2$d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/T2$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/T2$d$c;->b:Lcom/google/common/collect/T2$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TR;TV1;>;)",
            "Ljava/util/Map<",
            "TR;TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$d$c;->b:Lcom/google/common/collect/T2$d;

    iget-object v0, v0, Lcom/google/common/collect/T2$d;->e:Lw2/t;

    invoke-static {p1, v0}, Lcom/google/common/collect/Q1;->B0(Ljava/util/Map;Lw2/t;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/T2$d$c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
