.class public final synthetic Lcom/google/common/collect/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/I;


# instance fields
.field public final synthetic b:Lw2/I;


# direct methods
.method public synthetic constructor <init>(Lw2/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/h0;->b:Lw2/I;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/h0;->b:Lw2/I;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/google/common/collect/g0$b$a;->e(Lw2/I;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
