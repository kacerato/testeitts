.class public Lcom/android/dex/Code$CatchHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatchHandler"
.end annotation


# instance fields
.field final addresses:[I

.field final catchAllAddress:I

.field final offset:I

.field final typeIndexes:[I


# direct methods
.method public constructor <init>([I[III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dex/Code$CatchHandler;->typeIndexes:[I

    iput-object p2, p0, Lcom/android/dex/Code$CatchHandler;->addresses:[I

    iput p3, p0, Lcom/android/dex/Code$CatchHandler;->catchAllAddress:I

    iput p4, p0, Lcom/android/dex/Code$CatchHandler;->offset:I

    return-void
.end method


# virtual methods
.method public getAddresses()[I
    .locals 1

    iget-object v0, p0, Lcom/android/dex/Code$CatchHandler;->addresses:[I

    return-object v0
.end method

.method public getCatchAllAddress()I
    .locals 1

    iget v0, p0, Lcom/android/dex/Code$CatchHandler;->catchAllAddress:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/android/dex/Code$CatchHandler;->offset:I

    return v0
.end method

.method public getTypeIndexes()[I
    .locals 1

    iget-object v0, p0, Lcom/android/dex/Code$CatchHandler;->typeIndexes:[I

    return-object v0
.end method
