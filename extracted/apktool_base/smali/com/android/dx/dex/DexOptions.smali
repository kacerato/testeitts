.class public Lcom/android/dx/dex/DexOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALIGN_64BIT_REGS_SUPPORT:Z = true


# instance fields
.field public ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER:Z

.field public forceJumbo:Z

.field public minSdkVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dx/dex/DexOptions;->ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER:Z

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dx/dex/DexOptions;->forceJumbo:Z

    return-void
.end method


# virtual methods
.method public canUseDefaultInterfaceMethods()Z
    .locals 2

    iget v0, p0, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canUseInvokePolymorphic()Z
    .locals 2

    iget v0, p0, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMagic()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-static {v0}, Lcom/android/dex/DexFormat;->apiToMagic(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
