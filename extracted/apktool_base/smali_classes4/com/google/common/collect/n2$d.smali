.class public final Lcom/google/common/collect/n2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# instance fields
.field public final b:Lcom/google/common/collect/j2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/common/collect/W;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/W<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;",
            "Lcom/google/common/collect/W<",
            "TC;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/n2$d;->b:Lcom/google/common/collect/j2;

    .line 4
    iput-object p2, p0, Lcom/google/common/collect/n2$d;->c:Lcom/google/common/collect/W;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;Lcom/google/common/collect/n2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/n2$d;-><init>(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/google/common/collect/n2;

    iget-object v1, p0, Lcom/google/common/collect/n2$d;->b:Lcom/google/common/collect/j2;

    iget-object v2, p0, Lcom/google/common/collect/n2$d;->c:Lcom/google/common/collect/W;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/n2;-><init>(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)V

    return-object v0
.end method
