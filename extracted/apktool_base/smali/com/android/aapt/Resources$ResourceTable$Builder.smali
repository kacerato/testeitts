.class public final Lcom/android/aapt/Resources$ResourceTable$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$ResourceTableOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$ResourceTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$ResourceTable$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$ResourceTableOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dynamicRefTableBuilder_:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$DynamicRefTable;",
            "Lcom/android/aapt/Resources$DynamicRefTable$Builder;",
            "Lcom/android/aapt/Resources$DynamicRefTableOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private dynamicRefTable_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$DynamicRefTable;",
            ">;"
        }
    .end annotation
.end field

.field private overlayableBuilder_:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$Overlayable;",
            "Lcom/android/aapt/Resources$Overlayable$Builder;",
            "Lcom/android/aapt/Resources$OverlayableOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private overlayable_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$Overlayable;",
            ">;"
        }
    .end annotation
.end field

.field private packageBuilder_:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$Package;",
            "Lcom/android/aapt/Resources$Package$Builder;",
            "Lcom/android/aapt/Resources$PackageOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private package_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$Package;",
            ">;"
        }
    .end annotation
.end field

.field private sourcePoolBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$StringPool;",
            "Lcom/android/aapt/Resources$StringPool$Builder;",
            "Lcom/android/aapt/Resources$StringPoolOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sourcePool_:Lcom/android/aapt/Resources$StringPool;

.field private toolFingerprintBuilder_:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$ToolFingerprint;",
            "Lcom/android/aapt/Resources$ToolFingerprint$Builder;",
            "Lcom/android/aapt/Resources$ToolFingerprintOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private toolFingerprint_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$ToolFingerprint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/f0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$ResourceTable$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$ResourceTable;)V
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePoolBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePool_:Lcom/android/aapt/Resources$StringPool;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StringPool;

    :goto_0
    invoke-static {p1, v0}, Lcom/android/aapt/Resources$ResourceTable;->A6(Lcom/android/aapt/Resources$ResourceTable;Lcom/android/aapt/Resources$StringPool;)V

    :cond_1
    return-void
.end method

.method private buildPartialRepeatedFields(Lcom/android/aapt/Resources$ResourceTable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$ResourceTable;->z6(Lcom/android/aapt/Resources$ResourceTable;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$ResourceTable;->z6(Lcom/android/aapt/Resources$ResourceTable;Ljava/util/List;)V

    :goto_0
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    :cond_2
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$ResourceTable;->y6(Lcom/android/aapt/Resources$ResourceTable;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$ResourceTable;->y6(Lcom/android/aapt/Resources$ResourceTable;Ljava/util/List;)V

    :goto_1
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    :cond_4
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$ResourceTable;->B6(Lcom/android/aapt/Resources$ResourceTable;Ljava/util/List;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$ResourceTable;->B6(Lcom/android/aapt/Resources$ResourceTable;Ljava/util/List;)V

    :goto_2
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    :cond_6
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$ResourceTable;->x6(Lcom/android/aapt/Resources$ResourceTable;Ljava/util/List;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$ResourceTable;->x6(Lcom/android/aapt/Resources$ResourceTable;Ljava/util/List;)V

    :goto_3
    return-void
.end method

.method private ensureDynamicRefTableIsMutable()V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureOverlayableIsMutable()V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensurePackageIsMutable()V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureToolFingerprintIsMutable()V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->c0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private getDynamicRefTableFieldBuilder()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$DynamicRefTable;",
            "Lcom/android/aapt/Resources$DynamicRefTable$Builder;",
            "Lcom/android/aapt/Resources$DynamicRefTableOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    iget v2, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/G1;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method private getOverlayableFieldBuilder()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$Overlayable;",
            "Lcom/android/aapt/Resources$Overlayable$Builder;",
            "Lcom/android/aapt/Resources$OverlayableOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    iget v2, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/G1;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method private getPackageFieldBuilder()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$Package;",
            "Lcom/android/aapt/Resources$Package$Builder;",
            "Lcom/android/aapt/Resources$PackageOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    iget v2, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/G1;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method private getSourcePoolFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$StringPool;",
            "Lcom/android/aapt/Resources$StringPool$Builder;",
            "Lcom/android/aapt/Resources$StringPoolOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePoolBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getSourcePool()Lcom/android/aapt/Resources$StringPool;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePoolBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePool_:Lcom/android/aapt/Resources$StringPool;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePoolBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getToolFingerprintFieldBuilder()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$ToolFingerprint;",
            "Lcom/android/aapt/Resources$ToolFingerprint$Builder;",
            "Lcom/android/aapt/Resources$ToolFingerprintOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    iget v2, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/G1;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    return-object v0
.end method


# virtual methods
.method public addAllDynamicRefTable(Ljava/lang/Iterable;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/aapt/Resources$DynamicRefTable;",
            ">;)",
            "Lcom/android/aapt/Resources$ResourceTable$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureDynamicRefTableIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addAllOverlayable(Ljava/lang/Iterable;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/aapt/Resources$Overlayable;",
            ">;)",
            "Lcom/android/aapt/Resources$ResourceTable$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureOverlayableIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addAllPackage(Ljava/lang/Iterable;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/aapt/Resources$Package;",
            ">;)",
            "Lcom/android/aapt/Resources$ResourceTable$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensurePackageIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addAllToolFingerprint(Ljava/lang/Iterable;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/aapt/Resources$ToolFingerprint;",
            ">;)",
            "Lcom/android/aapt/Resources$ResourceTable$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureToolFingerprintIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addDynamicRefTable(ILcom/android/aapt/Resources$DynamicRefTable$Builder;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureDynamicRefTableIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$DynamicRefTable$Builder;->build()Lcom/android/aapt/Resources$DynamicRefTable;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$DynamicRefTable$Builder;->build()Lcom/android/aapt/Resources$DynamicRefTable;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addDynamicRefTable(ILcom/android/aapt/Resources$DynamicRefTable;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureDynamicRefTableIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addDynamicRefTable(Lcom/android/aapt/Resources$DynamicRefTable$Builder;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureDynamicRefTableIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/aapt/Resources$DynamicRefTable$Builder;->build()Lcom/android/aapt/Resources$DynamicRefTable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$DynamicRefTable$Builder;->build()Lcom/android/aapt/Resources$DynamicRefTable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addDynamicRefTable(Lcom/android/aapt/Resources$DynamicRefTable;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureDynamicRefTableIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addDynamicRefTableBuilder()Lcom/android/aapt/Resources$DynamicRefTable$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getDynamicRefTableFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/aapt/Resources$DynamicRefTable;->getDefaultInstance()Lcom/android/aapt/Resources$DynamicRefTable;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$DynamicRefTable$Builder;

    return-object v0
.end method

.method public addDynamicRefTableBuilder(I)Lcom/android/aapt/Resources$DynamicRefTable$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getDynamicRefTableFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/aapt/Resources$DynamicRefTable;->getDefaultInstance()Lcom/android/aapt/Resources$DynamicRefTable;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$DynamicRefTable$Builder;

    return-object p1
.end method

.method public addOverlayable(ILcom/android/aapt/Resources$Overlayable$Builder;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureOverlayableIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$Overlayable$Builder;->build()Lcom/android/aapt/Resources$Overlayable;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$Overlayable$Builder;->build()Lcom/android/aapt/Resources$Overlayable;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addOverlayable(ILcom/android/aapt/Resources$Overlayable;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureOverlayableIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addOverlayable(Lcom/android/aapt/Resources$Overlayable$Builder;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureOverlayableIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Overlayable$Builder;->build()Lcom/android/aapt/Resources$Overlayable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Overlayable$Builder;->build()Lcom/android/aapt/Resources$Overlayable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addOverlayable(Lcom/android/aapt/Resources$Overlayable;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureOverlayableIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addOverlayableBuilder()Lcom/android/aapt/Resources$Overlayable$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getOverlayableFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/aapt/Resources$Overlayable;->getDefaultInstance()Lcom/android/aapt/Resources$Overlayable;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Overlayable$Builder;

    return-object v0
.end method

.method public addOverlayableBuilder(I)Lcom/android/aapt/Resources$Overlayable$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getOverlayableFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/aapt/Resources$Overlayable;->getDefaultInstance()Lcom/android/aapt/Resources$Overlayable;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Overlayable$Builder;

    return-object p1
.end method

.method public addPackage(ILcom/android/aapt/Resources$Package$Builder;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensurePackageIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$Package$Builder;->build()Lcom/android/aapt/Resources$Package;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$Package$Builder;->build()Lcom/android/aapt/Resources$Package;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addPackage(ILcom/android/aapt/Resources$Package;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensurePackageIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addPackage(Lcom/android/aapt/Resources$Package$Builder;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensurePackageIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Package$Builder;->build()Lcom/android/aapt/Resources$Package;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Package$Builder;->build()Lcom/android/aapt/Resources$Package;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addPackage(Lcom/android/aapt/Resources$Package;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensurePackageIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addPackageBuilder()Lcom/android/aapt/Resources$Package$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getPackageFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/aapt/Resources$Package;->getDefaultInstance()Lcom/android/aapt/Resources$Package;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Package$Builder;

    return-object v0
.end method

.method public addPackageBuilder(I)Lcom/android/aapt/Resources$Package$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getPackageFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/aapt/Resources$Package;->getDefaultInstance()Lcom/android/aapt/Resources$Package;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Package$Builder;

    return-object p1
.end method

.method public addToolFingerprint(ILcom/android/aapt/Resources$ToolFingerprint$Builder;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureToolFingerprintIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$ToolFingerprint$Builder;->build()Lcom/android/aapt/Resources$ToolFingerprint;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$ToolFingerprint$Builder;->build()Lcom/android/aapt/Resources$ToolFingerprint;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addToolFingerprint(ILcom/android/aapt/Resources$ToolFingerprint;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureToolFingerprintIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addToolFingerprint(Lcom/android/aapt/Resources$ToolFingerprint$Builder;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureToolFingerprintIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/aapt/Resources$ToolFingerprint$Builder;->build()Lcom/android/aapt/Resources$ToolFingerprint;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$ToolFingerprint$Builder;->build()Lcom/android/aapt/Resources$ToolFingerprint;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addToolFingerprint(Lcom/android/aapt/Resources$ToolFingerprint;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureToolFingerprintIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addToolFingerprintBuilder()Lcom/android/aapt/Resources$ToolFingerprint$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getToolFingerprintFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/aapt/Resources$ToolFingerprint;->getDefaultInstance()Lcom/android/aapt/Resources$ToolFingerprint;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$ToolFingerprint$Builder;

    return-object v0
.end method

.method public addToolFingerprintBuilder(I)Lcom/android/aapt/Resources$ToolFingerprint$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getToolFingerprintFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/aapt/Resources$ToolFingerprint;->getDefaultInstance()Lcom/android/aapt/Resources$ToolFingerprint;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ToolFingerprint$Builder;

    return-object p1
.end method

.method public build()Lcom/android/aapt/Resources$ResourceTable;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->buildPartial()Lcom/android/aapt/Resources$ResourceTable;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$ResourceTable;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->build()Lcom/android/aapt/Resources$ResourceTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->build()Lcom/android/aapt/Resources$ResourceTable;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$ResourceTable;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$ResourceTable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$ResourceTable;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/g0;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->buildPartialRepeatedFields(Lcom/android/aapt/Resources$ResourceTable;)V

    .line 5
    iget v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->buildPartial0(Lcom/android/aapt/Resources$ResourceTable;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->buildPartial()Lcom/android/aapt/Resources$ResourceTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->buildPartial()Lcom/android/aapt/Resources$ResourceTable;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePool_:Lcom/android/aapt/Resources$StringPool;

    .line 8
    iget-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePoolBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    .line 10
    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePoolBuilder_:Lcom/google/protobuf/Q1;

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v1, :cond_1

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    goto :goto_0

    .line 13
    :cond_1
    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    .line 14
    invoke-virtual {v1}, Lcom/google/protobuf/G1;->h()V

    .line 15
    :goto_0
    iget v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    .line 16
    iget-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v1, :cond_2

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    goto :goto_1

    .line 18
    :cond_2
    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    .line 19
    invoke-virtual {v1}, Lcom/google/protobuf/G1;->h()V

    .line 20
    :goto_1
    iget v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    .line 21
    iget-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v1, :cond_3

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    goto :goto_2

    .line 23
    :cond_3
    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    .line 24
    invoke-virtual {v1}, Lcom/google/protobuf/G1;->h()V

    .line 25
    :goto_2
    iget v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    .line 26
    iget-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v1, :cond_4

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    goto :goto_3

    .line 28
    :cond_4
    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    .line 29
    invoke-virtual {v1}, Lcom/google/protobuf/G1;->h()V

    .line 30
    :goto_3
    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->clear()Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->clear()Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->clear()Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->clear()Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDynamicRefTable()Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public clearOverlayable()Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public clearPackage()Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public clearSourcePool()Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePool_:Lcom/android/aapt/Resources$StringPool;

    iget-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePoolBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePoolBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearToolFingerprint()Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$ResourceTable;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$ResourceTable;->getDefaultInstance()Lcom/android/aapt/Resources$ResourceTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$ResourceTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$ResourceTable;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->c0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicRefTable(I)Lcom/android/aapt/Resources$DynamicRefTable;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$DynamicRefTable;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$DynamicRefTable;

    return-object p1
.end method

.method public getDynamicRefTableBuilder(I)Lcom/android/aapt/Resources$DynamicRefTable$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getDynamicRefTableFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$DynamicRefTable$Builder;

    return-object p1
.end method

.method public getDynamicRefTableBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$DynamicRefTable$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getDynamicRefTableFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicRefTableCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public getDynamicRefTableList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$DynamicRefTable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicRefTableOrBuilder(I)Lcom/android/aapt/Resources$DynamicRefTableOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$DynamicRefTableOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$DynamicRefTableOrBuilder;

    return-object p1
.end method

.method public getDynamicRefTableOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$DynamicRefTableOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayable(I)Lcom/android/aapt/Resources$Overlayable;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Overlayable;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Overlayable;

    return-object p1
.end method

.method public getOverlayableBuilder(I)Lcom/android/aapt/Resources$Overlayable$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getOverlayableFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Overlayable$Builder;

    return-object p1
.end method

.method public getOverlayableBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$Overlayable$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getOverlayableFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayableCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public getOverlayableList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$Overlayable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayableOrBuilder(I)Lcom/android/aapt/Resources$OverlayableOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$OverlayableOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$OverlayableOrBuilder;

    return-object p1
.end method

.method public getOverlayableOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$OverlayableOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackage(I)Lcom/android/aapt/Resources$Package;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Package;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Package;

    return-object p1
.end method

.method public getPackageBuilder(I)Lcom/android/aapt/Resources$Package$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getPackageFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Package$Builder;

    return-object p1
.end method

.method public getPackageBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$Package$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getPackageFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public getPackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$Package;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageOrBuilder(I)Lcom/android/aapt/Resources$PackageOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$PackageOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$PackageOrBuilder;

    return-object p1
.end method

.method public getPackageOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$PackageOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourcePool()Lcom/android/aapt/Resources$StringPool;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePoolBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePool_:Lcom/android/aapt/Resources$StringPool;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$StringPool;->getDefaultInstance()Lcom/android/aapt/Resources$StringPool;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StringPool;

    return-object v0
.end method

.method public getSourcePoolBuilder()Lcom/android/aapt/Resources$StringPool$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getSourcePoolFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StringPool$Builder;

    return-object v0
.end method

.method public getSourcePoolOrBuilder()Lcom/android/aapt/Resources$StringPoolOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePoolBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StringPoolOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePool_:Lcom/android/aapt/Resources$StringPool;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$StringPool;->getDefaultInstance()Lcom/android/aapt/Resources$StringPool;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getToolFingerprint(I)Lcom/android/aapt/Resources$ToolFingerprint;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ToolFingerprint;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ToolFingerprint;

    return-object p1
.end method

.method public getToolFingerprintBuilder(I)Lcom/android/aapt/Resources$ToolFingerprint$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getToolFingerprintFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ToolFingerprint$Builder;

    return-object p1
.end method

.method public getToolFingerprintBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$ToolFingerprint$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getToolFingerprintFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToolFingerprintCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public getToolFingerprintList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$ToolFingerprint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToolFingerprintOrBuilder(I)Lcom/android/aapt/Resources$ToolFingerprintOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ToolFingerprintOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ToolFingerprintOrBuilder;

    return-object p1
.end method

.method public getToolFingerprintOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$ToolFingerprintOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasSourcePool()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/android/aapt/Resources;->d0()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$ResourceTable;

    const-class v2, Lcom/android/aapt/Resources$ResourceTable$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$ResourceTable;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 3

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$ResourceTable;->getDefaultInstance()Lcom/android/aapt/Resources$ResourceTable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$ResourceTable;->hasSourcePool()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/android/aapt/Resources$ResourceTable;->getSourcePool()Lcom/android/aapt/Resources$StringPool;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->mergeSourcePool(Lcom/android/aapt/Resources$StringPool;)Lcom/android/aapt/Resources$ResourceTable$Builder;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 14
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->v6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->v6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    .line 17
    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    goto :goto_0

    .line 18
    :cond_2
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensurePackageIsMutable()V

    .line 19
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->v6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_2

    .line 21
    :cond_3
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->v6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 22
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    .line 24
    iput-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    .line 25
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->v6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    .line 26
    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    .line 27
    invoke-static {}, Lcom/android/aapt/Resources$ResourceTable;->access$300()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getPackageFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    goto :goto_2

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->v6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    .line 30
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_8

    .line 31
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->u6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 32
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->u6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    .line 34
    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    goto :goto_3

    .line 35
    :cond_7
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureOverlayableIsMutable()V

    .line 36
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->u6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_5

    .line 38
    :cond_8
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->u6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 39
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    .line 41
    iput-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    .line 42
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->u6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    .line 43
    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    .line 44
    invoke-static {}, Lcom/android/aapt/Resources$ResourceTable;->access$400()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 45
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getOverlayableFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    goto :goto_4

    :cond_9
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    goto :goto_5

    .line 46
    :cond_a
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->u6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    .line 47
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_d

    .line 48
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->w6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 49
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 50
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->w6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    .line 51
    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    goto :goto_6

    .line 52
    :cond_c
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureToolFingerprintIsMutable()V

    .line 53
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->w6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_8

    .line 55
    :cond_d
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->w6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 56
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 57
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    .line 58
    iput-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    .line 59
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->w6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    .line 60
    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    .line 61
    invoke-static {}, Lcom/android/aapt/Resources$ResourceTable;->access$500()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 62
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getToolFingerprintFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    goto :goto_7

    :cond_e
    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    goto :goto_8

    .line 63
    :cond_f
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->w6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    .line 64
    :cond_10
    :goto_8
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_12

    .line 65
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->t6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 66
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 67
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->t6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    .line 68
    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    goto :goto_9

    .line 69
    :cond_11
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureDynamicRefTableIsMutable()V

    .line 70
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->t6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    :goto_9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_a

    .line 72
    :cond_12
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->t6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 73
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 74
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    .line 75
    iput-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    .line 76
    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->t6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    .line 77
    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    .line 78
    invoke-static {}, Lcom/android/aapt/Resources$ResourceTable;->access$600()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 79
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getDynamicRefTableFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v1

    :cond_13
    iput-object v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    goto :goto_a

    .line 80
    :cond_14
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/android/aapt/Resources$ResourceTable;->t6(Lcom/android/aapt/Resources$ResourceTable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    .line 81
    :cond_15
    :goto_a
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ResourceTable$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ResourceTable$Builder;

    .line 82
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_b

    .line 84
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_a

    const/16 v3, 0x12

    if-eq v1, v3, :cond_8

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_6

    const/16 v3, 0x22

    if-eq v1, v3, :cond_4

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_2

    .line 85
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$b;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 86
    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$DynamicRefTable;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    .line 87
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$DynamicRefTable;

    .line 88
    iget-object v2, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v2, :cond_3

    .line 89
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureDynamicRefTableIsMutable()V

    .line 90
    iget-object v2, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    .line 92
    :cond_4
    invoke-static {}, Lcom/android/aapt/Resources$ToolFingerprint;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    .line 93
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$ToolFingerprint;

    .line 94
    iget-object v2, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v2, :cond_5

    .line 95
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureToolFingerprintIsMutable()V

    .line 96
    iget-object v2, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_5
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    .line 98
    :cond_6
    invoke-static {}, Lcom/android/aapt/Resources$Overlayable;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    .line 99
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$Overlayable;

    .line 100
    iget-object v2, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v2, :cond_7

    .line 101
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureOverlayableIsMutable()V

    .line 102
    iget-object v2, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_7
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    .line 104
    :cond_8
    invoke-static {}, Lcom/android/aapt/Resources$Package;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    .line 105
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$Package;

    .line 106
    iget-object v2, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v2, :cond_9

    .line 107
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensurePackageIsMutable()V

    .line 108
    iget-object v2, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 109
    :cond_9
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto/16 :goto_0

    .line 110
    :cond_a
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getSourcePoolFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 111
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 112
    iget v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 113
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 115
    throw p1

    .line 116
    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$ResourceTable;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$ResourceTable;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ResourceTable$Builder;->mergeFrom(Lcom/android/aapt/Resources$ResourceTable;)Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$ResourceTable$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ResourceTable$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$ResourceTable$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ResourceTable$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$ResourceTable$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$ResourceTable$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeSourcePool(Lcom/android/aapt/Resources$StringPool;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePoolBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePool_:Lcom/android/aapt/Resources$StringPool;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$StringPool;->getDefaultInstance()Lcom/android/aapt/Resources$StringPool;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->getSourcePoolBuilder()Lcom/android/aapt/Resources$StringPool$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$StringPool$Builder;->mergeFrom(Lcom/android/aapt/Resources$StringPool;)Lcom/android/aapt/Resources$StringPool$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePool_:Lcom/android/aapt/Resources$StringPool;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ResourceTable$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ResourceTable$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ResourceTable$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ResourceTable$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeDynamicRefTable(I)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureDynamicRefTableIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public removeOverlayable(I)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureOverlayableIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public removePackage(I)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensurePackageIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public removeToolFingerprint(I)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureToolFingerprintIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public setDynamicRefTable(ILcom/android/aapt/Resources$DynamicRefTable$Builder;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureDynamicRefTableIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$DynamicRefTable$Builder;->build()Lcom/android/aapt/Resources$DynamicRefTable;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$DynamicRefTable$Builder;->build()Lcom/android/aapt/Resources$DynamicRefTable;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setDynamicRefTable(ILcom/android/aapt/Resources$DynamicRefTable;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureDynamicRefTableIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->dynamicRefTable_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setOverlayable(ILcom/android/aapt/Resources$Overlayable$Builder;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureOverlayableIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$Overlayable$Builder;->build()Lcom/android/aapt/Resources$Overlayable;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$Overlayable$Builder;->build()Lcom/android/aapt/Resources$Overlayable;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setOverlayable(ILcom/android/aapt/Resources$Overlayable;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayableBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureOverlayableIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->overlayable_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setPackage(ILcom/android/aapt/Resources$Package$Builder;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensurePackageIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$Package$Builder;->build()Lcom/android/aapt/Resources$Package;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$Package$Builder;->build()Lcom/android/aapt/Resources$Package;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setPackage(ILcom/android/aapt/Resources$Package;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->packageBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensurePackageIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->package_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setSourcePool(Lcom/android/aapt/Resources$StringPool$Builder;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePoolBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$StringPool$Builder;->build()Lcom/android/aapt/Resources$StringPool;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePool_:Lcom/android/aapt/Resources$StringPool;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$StringPool$Builder;->build()Lcom/android/aapt/Resources$StringPool;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSourcePool(Lcom/android/aapt/Resources$StringPool;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePoolBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->sourcePool_:Lcom/android/aapt/Resources$StringPool;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setToolFingerprint(ILcom/android/aapt/Resources$ToolFingerprint$Builder;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureToolFingerprintIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$ToolFingerprint$Builder;->build()Lcom/android/aapt/Resources$ToolFingerprint;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$ToolFingerprint$Builder;->build()Lcom/android/aapt/Resources$ToolFingerprint;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setToolFingerprint(ILcom/android/aapt/Resources$ToolFingerprint;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprintBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$ResourceTable$Builder;->ensureToolFingerprintIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$ResourceTable$Builder;->toolFingerprint_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ResourceTable$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ResourceTable$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ResourceTable$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ResourceTable$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ResourceTable$Builder;

    move-result-object p1

    return-object p1
.end method
