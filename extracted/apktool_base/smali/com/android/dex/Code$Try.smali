.class public Lcom/android/dex/Code$Try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Try"
.end annotation


# instance fields
.field final catchHandlerIndex:I

.field final instructionCount:I

.field final startAddress:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/dex/Code$Try;->startAddress:I

    iput p2, p0, Lcom/android/dex/Code$Try;->instructionCount:I

    iput p3, p0, Lcom/android/dex/Code$Try;->catchHandlerIndex:I

    return-void
.end method


# virtual methods
.method public getCatchHandlerIndex()I
    .locals 1

    iget v0, p0, Lcom/android/dex/Code$Try;->catchHandlerIndex:I

    return v0
.end method

.method public getInstructionCount()I
    .locals 1

    iget v0, p0, Lcom/android/dex/Code$Try;->instructionCount:I

    return v0
.end method

.method public getStartAddress()I
    .locals 1

    iget v0, p0, Lcom/android/dex/Code$Try;->startAddress:I

    return v0
.end method
