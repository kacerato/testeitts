.class public final Lcom/google/common/collect/m1$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation build Lv2/c;
.end annotation


# instance fields
.field public final b:Lcom/google/common/collect/m1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/m1<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/m1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m1<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/m1$g;->b:Lcom/google/common/collect/m1;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/m1$g;->b:Lcom/google/common/collect/m1;

    invoke-virtual {v0}, Lcom/google/common/collect/m1;->D()Lcom/google/common/collect/n1;

    move-result-object v0

    return-object v0
.end method
