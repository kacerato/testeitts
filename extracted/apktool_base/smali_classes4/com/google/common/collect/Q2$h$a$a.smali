.class public Lcom/google/common/collect/Q2$h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Q2$h$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/t<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Q2$h$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Q2$h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Q2$h$a$a;->b:Lcom/google/common/collect/Q2$h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q2$h$a$a;->b:Lcom/google/common/collect/Q2$h$a;

    iget-object v0, v0, Lcom/google/common/collect/Q2$h$a;->c:Lcom/google/common/collect/Q2$h;

    iget-object v0, v0, Lcom/google/common/collect/Q2$h;->e:Lcom/google/common/collect/Q2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Q2;->i0(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Q2$h$a$a;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
