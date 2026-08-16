.class public final Lcom/google/common/cache/k$I;
.super Lcom/google/common/cache/k$x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "I"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/k$x<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/cache/k$x;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/common/cache/k$I;->c:I

    return-void
.end method


# virtual methods
.method public getWeight()I
    .locals 1

    iget v0, p0, Lcom/google/common/cache/k$I;->c:I

    return v0
.end method
