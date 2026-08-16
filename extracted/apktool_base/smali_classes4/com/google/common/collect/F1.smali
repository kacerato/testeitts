.class public final synthetic Lcom/google/common/collect/F1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/F1;->b:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/F1;->b:Ljava/util/Comparator;

    check-cast p1, Lcom/google/common/collect/g2;

    check-cast p2, Lcom/google/common/collect/g2;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/E1$o;->a(Ljava/util/Comparator;Lcom/google/common/collect/g2;Lcom/google/common/collect/g2;)I

    move-result p1

    return p1
.end method
