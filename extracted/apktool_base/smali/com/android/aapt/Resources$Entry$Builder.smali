.class public final Lcom/android/aapt/Resources$Entry$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$EntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$Entry$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$EntryOrBuilder;"
    }
.end annotation


# instance fields
.field private allowNewBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$AllowNew;",
            "Lcom/android/aapt/Resources$AllowNew$Builder;",
            "Lcom/android/aapt/Resources$AllowNewOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private allowNew_:Lcom/android/aapt/Resources$AllowNew;

.field private bitField0_:I

.field private configValueBuilder_:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$ConfigValue;",
            "Lcom/android/aapt/Resources$ConfigValue$Builder;",
            "Lcom/android/aapt/Resources$ConfigValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private configValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$ConfigValue;",
            ">;"
        }
    .end annotation
.end field

.field private entryIdBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$EntryId;",
            "Lcom/android/aapt/Resources$EntryId$Builder;",
            "Lcom/android/aapt/Resources$EntryIdOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private entryId_:Lcom/android/aapt/Resources$EntryId;

.field private name_:Ljava/lang/Object;

.field private overlayableItemBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$OverlayableItem;",
            "Lcom/android/aapt/Resources$OverlayableItem$Builder;",
            "Lcom/android/aapt/Resources$OverlayableItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private overlayableItem_:Lcom/android/aapt/Resources$OverlayableItem;

.field private stagedIdBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$StagedId;",
            "Lcom/android/aapt/Resources$StagedId$Builder;",
            "Lcom/android/aapt/Resources$StagedIdOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private stagedId_:Lcom/android/aapt/Resources$StagedId;

.field private visibilityBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Visibility;",
            "Lcom/android/aapt/Resources$Visibility$Builder;",
            "Lcom/android/aapt/Resources$VisibilityOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private visibility_:Lcom/android/aapt/Resources$Visibility;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->name_:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->name_:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/u;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$Entry$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$Entry;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryIdBuilder_:Lcom/google/protobuf/Q1;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryId_:Lcom/android/aapt/Resources$EntryId;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$EntryId;

    :goto_0
    invoke-static {p1, v1}, Lcom/android/aapt/Resources$Entry;->x6(Lcom/android/aapt/Resources$Entry;Lcom/android/aapt/Resources$EntryId;)V

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->name_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/aapt/Resources$Entry;->y6(Lcom/android/aapt/Resources$Entry;Ljava/lang/Object;)V

    :cond_2
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibilityBuilder_:Lcom/google/protobuf/Q1;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibility_:Lcom/android/aapt/Resources$Visibility;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$Visibility;

    :goto_1
    invoke-static {p1, v1}, Lcom/android/aapt/Resources$Entry;->B6(Lcom/android/aapt/Resources$Entry;Lcom/android/aapt/Resources$Visibility;)V

    :cond_4
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNewBuilder_:Lcom/google/protobuf/Q1;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNew_:Lcom/android/aapt/Resources$AllowNew;

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$AllowNew;

    :goto_2
    invoke-static {p1, v1}, Lcom/android/aapt/Resources$Entry;->v6(Lcom/android/aapt/Resources$Entry;Lcom/android/aapt/Resources$AllowNew;)V

    :cond_6
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItemBuilder_:Lcom/google/protobuf/Q1;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItem_:Lcom/android/aapt/Resources$OverlayableItem;

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$OverlayableItem;

    :goto_3
    invoke-static {p1, v1}, Lcom/android/aapt/Resources$Entry;->z6(Lcom/android/aapt/Resources$Entry;Lcom/android/aapt/Resources$OverlayableItem;)V

    :cond_8
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedIdBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedId_:Lcom/android/aapt/Resources$StagedId;

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StagedId;

    :goto_4
    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Entry;->A6(Lcom/android/aapt/Resources$Entry;Lcom/android/aapt/Resources$StagedId;)V

    :cond_a
    return-void
.end method

.method private buildPartialRepeatedFields(Lcom/android/aapt/Resources$Entry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Entry;->w6(Lcom/android/aapt/Resources$Entry;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Entry;->w6(Lcom/android/aapt/Resources$Entry;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private ensureConfigValueIsMutable()V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getAllowNewFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$AllowNew;",
            "Lcom/android/aapt/Resources$AllowNew$Builder;",
            "Lcom/android/aapt/Resources$AllowNewOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNewBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getAllowNew()Lcom/android/aapt/Resources$AllowNew;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNewBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNew_:Lcom/android/aapt/Resources$AllowNew;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNewBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getConfigValueFieldBuilder()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$ConfigValue;",
            "Lcom/android/aapt/Resources$ConfigValue$Builder;",
            "Lcom/android/aapt/Resources$ConfigValueOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    iget v2, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

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

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->u()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private getEntryIdFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$EntryId;",
            "Lcom/android/aapt/Resources$EntryId$Builder;",
            "Lcom/android/aapt/Resources$EntryIdOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryIdBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getEntryId()Lcom/android/aapt/Resources$EntryId;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryIdBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryId_:Lcom/android/aapt/Resources$EntryId;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryIdBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getOverlayableItemFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$OverlayableItem;",
            "Lcom/android/aapt/Resources$OverlayableItem$Builder;",
            "Lcom/android/aapt/Resources$OverlayableItemOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItemBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getOverlayableItem()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItemBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItem_:Lcom/android/aapt/Resources$OverlayableItem;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItemBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getStagedIdFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$StagedId;",
            "Lcom/android/aapt/Resources$StagedId$Builder;",
            "Lcom/android/aapt/Resources$StagedIdOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedIdBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getStagedId()Lcom/android/aapt/Resources$StagedId;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedIdBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedId_:Lcom/android/aapt/Resources$StagedId;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedIdBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getVisibilityFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Visibility;",
            "Lcom/android/aapt/Resources$Visibility$Builder;",
            "Lcom/android/aapt/Resources$VisibilityOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibilityBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getVisibility()Lcom/android/aapt/Resources$Visibility;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibilityBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibility_:Lcom/android/aapt/Resources$Visibility;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibilityBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method


# virtual methods
.method public addAllConfigValue(Ljava/lang/Iterable;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/aapt/Resources$ConfigValue;",
            ">;)",
            "Lcom/android/aapt/Resources$Entry$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->ensureConfigValueIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addConfigValue(ILcom/android/aapt/Resources$ConfigValue$Builder;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->ensureConfigValueIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$ConfigValue$Builder;->build()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$ConfigValue$Builder;->build()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addConfigValue(ILcom/android/aapt/Resources$ConfigValue;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->ensureConfigValueIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

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

.method public addConfigValue(Lcom/android/aapt/Resources$ConfigValue$Builder;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->ensureConfigValueIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/aapt/Resources$ConfigValue$Builder;->build()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$ConfigValue$Builder;->build()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addConfigValue(Lcom/android/aapt/Resources$ConfigValue;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->ensureConfigValueIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

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

.method public addConfigValueBuilder()Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getConfigValueFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/aapt/Resources$ConfigValue;->getDefaultInstance()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$ConfigValue$Builder;

    return-object v0
.end method

.method public addConfigValueBuilder(I)Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getConfigValueFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/aapt/Resources$ConfigValue;->getDefaultInstance()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ConfigValue$Builder;

    return-object p1
.end method

.method public build()Lcom/android/aapt/Resources$Entry;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->buildPartial()Lcom/android/aapt/Resources$Entry;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$Entry;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->build()Lcom/android/aapt/Resources$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->build()Lcom/android/aapt/Resources$Entry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$Entry;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$Entry;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/v;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$Entry$Builder;->buildPartialRepeatedFields(Lcom/android/aapt/Resources$Entry;)V

    .line 5
    iget v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$Entry$Builder;->buildPartial0(Lcom/android/aapt/Resources$Entry;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->buildPartial()Lcom/android/aapt/Resources$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->buildPartial()Lcom/android/aapt/Resources$Entry;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$Entry$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryId_:Lcom/android/aapt/Resources$EntryId;

    .line 8
    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryIdBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    .line 10
    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryIdBuilder_:Lcom/google/protobuf/Q1;

    .line 11
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->name_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibility_:Lcom/android/aapt/Resources$Visibility;

    .line 13
    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibilityBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    .line 15
    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibilityBuilder_:Lcom/google/protobuf/Q1;

    .line 16
    :cond_1
    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNew_:Lcom/android/aapt/Resources$AllowNew;

    .line 17
    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNewBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    .line 19
    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNewBuilder_:Lcom/google/protobuf/Q1;

    .line 20
    :cond_2
    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItem_:Lcom/android/aapt/Resources$OverlayableItem;

    .line 21
    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItemBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_3

    .line 22
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    .line 23
    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItemBuilder_:Lcom/google/protobuf/Q1;

    .line 24
    :cond_3
    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v1, :cond_4

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    goto :goto_0

    .line 26
    :cond_4
    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    .line 27
    invoke-virtual {v1}, Lcom/google/protobuf/G1;->h()V

    .line 28
    :goto_0
    iget v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    .line 29
    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedId_:Lcom/android/aapt/Resources$StagedId;

    .line 30
    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedIdBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_5

    .line 31
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    .line 32
    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedIdBuilder_:Lcom/google/protobuf/Q1;

    :cond_5
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->clear()Lcom/android/aapt/Resources$Entry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->clear()Lcom/android/aapt/Resources$Entry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->clear()Lcom/android/aapt/Resources$Entry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->clear()Lcom/android/aapt/Resources$Entry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAllowNew()Lcom/android/aapt/Resources$Entry$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNew_:Lcom/android/aapt/Resources$AllowNew;

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNewBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNewBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearConfigValue()Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public clearEntryId()Lcom/android/aapt/Resources$Entry$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryId_:Lcom/android/aapt/Resources$EntryId;

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryIdBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryIdBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearName()Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources$Entry;->getDefaultInstance()Lcom/android/aapt/Resources$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Entry;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->name_:Ljava/lang/Object;

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearOverlayableItem()Lcom/android/aapt/Resources$Entry$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItem_:Lcom/android/aapt/Resources$OverlayableItem;

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItemBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItemBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearStagedId()Lcom/android/aapt/Resources$Entry$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedId_:Lcom/android/aapt/Resources$StagedId;

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedIdBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedIdBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearVisibility()Lcom/android/aapt/Resources$Entry$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibility_:Lcom/android/aapt/Resources$Visibility;

    iget-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibilityBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibilityBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public getAllowNew()Lcom/android/aapt/Resources$AllowNew;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNewBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNew_:Lcom/android/aapt/Resources$AllowNew;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$AllowNew;->getDefaultInstance()Lcom/android/aapt/Resources$AllowNew;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$AllowNew;

    return-object v0
.end method

.method public getAllowNewBuilder()Lcom/android/aapt/Resources$AllowNew$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getAllowNewFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$AllowNew$Builder;

    return-object v0
.end method

.method public getAllowNewOrBuilder()Lcom/android/aapt/Resources$AllowNewOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNewBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$AllowNewOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNew_:Lcom/android/aapt/Resources$AllowNew;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$AllowNew;->getDefaultInstance()Lcom/android/aapt/Resources$AllowNew;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getConfigValue(I)Lcom/android/aapt/Resources$ConfigValue;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ConfigValue;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ConfigValue;

    return-object p1
.end method

.method public getConfigValueBuilder(I)Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getConfigValueFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ConfigValue$Builder;

    return-object p1
.end method

.method public getConfigValueBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$ConfigValue$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getConfigValueFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfigValueCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public getConfigValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$ConfigValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfigValueOrBuilder(I)Lcom/android/aapt/Resources$ConfigValueOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ConfigValueOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ConfigValueOrBuilder;

    return-object p1
.end method

.method public getConfigValueOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$ConfigValueOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$Entry;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$Entry;->getDefaultInstance()Lcom/android/aapt/Resources$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->u()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getEntryId()Lcom/android/aapt/Resources$EntryId;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryIdBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryId_:Lcom/android/aapt/Resources$EntryId;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$EntryId;->getDefaultInstance()Lcom/android/aapt/Resources$EntryId;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$EntryId;

    return-object v0
.end method

.method public getEntryIdBuilder()Lcom/android/aapt/Resources$EntryId$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getEntryIdFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$EntryId$Builder;

    return-object v0
.end method

.method public getEntryIdOrBuilder()Lcom/android/aapt/Resources$EntryIdOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryIdBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$EntryIdOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryId_:Lcom/android/aapt/Resources$EntryId;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$EntryId;->getDefaultInstance()Lcom/android/aapt/Resources$EntryId;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->name_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/aapt/Resources$String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getOverlayableItem()Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItemBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItem_:Lcom/android/aapt/Resources$OverlayableItem;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem;->getDefaultInstance()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$OverlayableItem;

    return-object v0
.end method

.method public getOverlayableItemBuilder()Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getOverlayableItemFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$OverlayableItem$Builder;

    return-object v0
.end method

.method public getOverlayableItemOrBuilder()Lcom/android/aapt/Resources$OverlayableItemOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItemBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$OverlayableItemOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItem_:Lcom/android/aapt/Resources$OverlayableItem;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem;->getDefaultInstance()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getStagedId()Lcom/android/aapt/Resources$StagedId;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedIdBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedId_:Lcom/android/aapt/Resources$StagedId;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$StagedId;->getDefaultInstance()Lcom/android/aapt/Resources$StagedId;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StagedId;

    return-object v0
.end method

.method public getStagedIdBuilder()Lcom/android/aapt/Resources$StagedId$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getStagedIdFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StagedId$Builder;

    return-object v0
.end method

.method public getStagedIdOrBuilder()Lcom/android/aapt/Resources$StagedIdOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedIdBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StagedIdOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedId_:Lcom/android/aapt/Resources$StagedId;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$StagedId;->getDefaultInstance()Lcom/android/aapt/Resources$StagedId;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getVisibility()Lcom/android/aapt/Resources$Visibility;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibilityBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibility_:Lcom/android/aapt/Resources$Visibility;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Visibility;->getDefaultInstance()Lcom/android/aapt/Resources$Visibility;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Visibility;

    return-object v0
.end method

.method public getVisibilityBuilder()Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getVisibilityFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Visibility$Builder;

    return-object v0
.end method

.method public getVisibilityOrBuilder()Lcom/android/aapt/Resources$VisibilityOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibilityBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$VisibilityOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibility_:Lcom/android/aapt/Resources$Visibility;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$Visibility;->getDefaultInstance()Lcom/android/aapt/Resources$Visibility;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasAllowNew()Z
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEntryId()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasOverlayableItem()Z
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStagedId()Z
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVisibility()Z
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/android/aapt/Resources;->v()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$Entry;

    const-class v2, Lcom/android/aapt/Resources$Entry$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeAllowNew(Lcom/android/aapt/Resources$AllowNew;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNewBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNew_:Lcom/android/aapt/Resources$AllowNew;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$AllowNew;->getDefaultInstance()Lcom/android/aapt/Resources$AllowNew;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getAllowNewBuilder()Lcom/android/aapt/Resources$AllowNew$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$AllowNew$Builder;->mergeFrom(Lcom/android/aapt/Resources$AllowNew;)Lcom/android/aapt/Resources$AllowNew$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNew_:Lcom/android/aapt/Resources$AllowNew;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeEntryId(Lcom/android/aapt/Resources$EntryId;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryIdBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryId_:Lcom/android/aapt/Resources$EntryId;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$EntryId;->getDefaultInstance()Lcom/android/aapt/Resources$EntryId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getEntryIdBuilder()Lcom/android/aapt/Resources$EntryId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$EntryId$Builder;->mergeFrom(Lcom/android/aapt/Resources$EntryId;)Lcom/android/aapt/Resources$EntryId$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryId_:Lcom/android/aapt/Resources$EntryId;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$Entry;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$Entry;->getDefaultInstance()Lcom/android/aapt/Resources$Entry;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Entry;->hasEntryId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Entry;->getEntryId()Lcom/android/aapt/Resources$EntryId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Entry$Builder;->mergeEntryId(Lcom/android/aapt/Resources$EntryId;)Lcom/android/aapt/Resources$Entry$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Entry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-static {p1}, Lcom/android/aapt/Resources$Entry;->u6(Lcom/android/aapt/Resources$Entry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->name_:Ljava/lang/Object;

    .line 15
    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Entry;->hasVisibility()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Entry;->getVisibility()Lcom/android/aapt/Resources$Visibility;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Entry$Builder;->mergeVisibility(Lcom/android/aapt/Resources$Visibility;)Lcom/android/aapt/Resources$Entry$Builder;

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Entry;->hasAllowNew()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Entry;->getAllowNew()Lcom/android/aapt/Resources$AllowNew;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Entry$Builder;->mergeAllowNew(Lcom/android/aapt/Resources$AllowNew;)Lcom/android/aapt/Resources$Entry$Builder;

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Entry;->hasOverlayableItem()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Entry;->getOverlayableItem()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Entry$Builder;->mergeOverlayableItem(Lcom/android/aapt/Resources$OverlayableItem;)Lcom/android/aapt/Resources$Entry$Builder;

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_7

    .line 24
    invoke-static {p1}, Lcom/android/aapt/Resources$Entry;->t6(Lcom/android/aapt/Resources$Entry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 25
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    invoke-static {p1}, Lcom/android/aapt/Resources$Entry;->t6(Lcom/android/aapt/Resources$Entry;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    .line 27
    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    goto :goto_0

    .line 28
    :cond_6
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->ensureConfigValueIsMutable()V

    .line 29
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/aapt/Resources$Entry;->t6(Lcom/android/aapt/Resources$Entry;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    .line 31
    :cond_7
    invoke-static {p1}, Lcom/android/aapt/Resources$Entry;->t6(Lcom/android/aapt/Resources$Entry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 32
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    .line 35
    invoke-static {p1}, Lcom/android/aapt/Resources$Entry;->t6(Lcom/android/aapt/Resources$Entry;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    .line 36
    iget v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    .line 37
    invoke-static {}, Lcom/android/aapt/Resources$Entry;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 38
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getConfigValueFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    :cond_8
    iput-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    goto :goto_1

    .line 39
    :cond_9
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/android/aapt/Resources$Entry;->t6(Lcom/android/aapt/Resources$Entry;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    .line 40
    :cond_a
    :goto_1
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Entry;->hasStagedId()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Entry;->getStagedId()Lcom/android/aapt/Resources$StagedId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Entry$Builder;->mergeStagedId(Lcom/android/aapt/Resources$StagedId;)Lcom/android/aapt/Resources$Entry$Builder;

    .line 42
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Entry$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Entry$Builder;

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_a

    .line 45
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_9

    const/16 v3, 0x12

    if-eq v1, v3, :cond_8

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_7

    const/16 v3, 0x22

    if-eq v1, v3, :cond_6

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_5

    const/16 v3, 0x32

    if-eq v1, v3, :cond_3

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_2

    .line 46
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

    .line 47
    :cond_2
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getStagedIdFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 48
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 49
    iget v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    goto :goto_0

    .line 50
    :cond_3
    invoke-static {}, Lcom/android/aapt/Resources$ConfigValue;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    .line 51
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$ConfigValue;

    .line 52
    iget-object v2, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v2, :cond_4

    .line 53
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->ensureConfigValueIsMutable()V

    .line 54
    iget-object v2, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    .line 56
    :cond_5
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getOverlayableItemFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 57
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 58
    iget v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    goto :goto_0

    .line 59
    :cond_6
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getAllowNewFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 60
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 61
    iget v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 62
    :cond_7
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getVisibilityFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 63
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 64
    iget v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 65
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->name_:Ljava/lang/Object;

    .line 66
    iget v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 67
    :cond_9
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getEntryIdFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 68
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 69
    iget v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 70
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 72
    throw p1

    .line 73
    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$Entry;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$Entry;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Entry$Builder;->mergeFrom(Lcom/android/aapt/Resources$Entry;)Lcom/android/aapt/Resources$Entry$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Entry$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Entry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Entry$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Entry$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Entry$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Entry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Entry$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Entry$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Entry$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Entry$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Entry$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Entry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeOverlayableItem(Lcom/android/aapt/Resources$OverlayableItem;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItemBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItem_:Lcom/android/aapt/Resources$OverlayableItem;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem;->getDefaultInstance()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getOverlayableItemBuilder()Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->mergeFrom(Lcom/android/aapt/Resources$OverlayableItem;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItem_:Lcom/android/aapt/Resources$OverlayableItem;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeStagedId(Lcom/android/aapt/Resources$StagedId;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedIdBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedId_:Lcom/android/aapt/Resources$StagedId;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$StagedId;->getDefaultInstance()Lcom/android/aapt/Resources$StagedId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getStagedIdBuilder()Lcom/android/aapt/Resources$StagedId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$StagedId$Builder;->mergeFrom(Lcom/android/aapt/Resources$StagedId;)Lcom/android/aapt/Resources$StagedId$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedId_:Lcom/android/aapt/Resources$StagedId;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Entry$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Entry$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Entry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Entry$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Entry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Entry$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Entry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeVisibility(Lcom/android/aapt/Resources$Visibility;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibilityBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibility_:Lcom/android/aapt/Resources$Visibility;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Visibility;->getDefaultInstance()Lcom/android/aapt/Resources$Visibility;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Entry$Builder;->getVisibilityBuilder()Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Visibility$Builder;->mergeFrom(Lcom/android/aapt/Resources$Visibility;)Lcom/android/aapt/Resources$Visibility$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibility_:Lcom/android/aapt/Resources$Visibility;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public removeConfigValue(I)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->ensureConfigValueIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public setAllowNew(Lcom/android/aapt/Resources$AllowNew$Builder;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNewBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$AllowNew$Builder;->build()Lcom/android/aapt/Resources$AllowNew;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNew_:Lcom/android/aapt/Resources$AllowNew;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$AllowNew$Builder;->build()Lcom/android/aapt/Resources$AllowNew;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setAllowNew(Lcom/android/aapt/Resources$AllowNew;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNewBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->allowNew_:Lcom/android/aapt/Resources$AllowNew;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setConfigValue(ILcom/android/aapt/Resources$ConfigValue$Builder;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->ensureConfigValueIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$ConfigValue$Builder;->build()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$ConfigValue$Builder;->build()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setConfigValue(ILcom/android/aapt/Resources$ConfigValue;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValueBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$Entry$Builder;->ensureConfigValueIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->configValue_:Ljava/util/List;

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

.method public setEntryId(Lcom/android/aapt/Resources$EntryId$Builder;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryIdBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$EntryId$Builder;->build()Lcom/android/aapt/Resources$EntryId;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryId_:Lcom/android/aapt/Resources$EntryId;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$EntryId$Builder;->build()Lcom/android/aapt/Resources$EntryId;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setEntryId(Lcom/android/aapt/Resources$EntryId;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryIdBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->entryId_:Lcom/android/aapt/Resources$EntryId;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->name_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/aapt/Resources$Entry;->access$1700(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->name_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setOverlayableItem(Lcom/android/aapt/Resources$OverlayableItem$Builder;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItemBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->build()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItem_:Lcom/android/aapt/Resources$OverlayableItem;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->build()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setOverlayableItem(Lcom/android/aapt/Resources$OverlayableItem;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItemBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->overlayableItem_:Lcom/android/aapt/Resources$OverlayableItem;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setStagedId(Lcom/android/aapt/Resources$StagedId$Builder;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedIdBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$StagedId$Builder;->build()Lcom/android/aapt/Resources$StagedId;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedId_:Lcom/android/aapt/Resources$StagedId;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$StagedId$Builder;->build()Lcom/android/aapt/Resources$StagedId;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setStagedId(Lcom/android/aapt/Resources$StagedId;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedIdBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->stagedId_:Lcom/android/aapt/Resources$StagedId;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Entry$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Entry$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Entry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Entry$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Entry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVisibility(Lcom/android/aapt/Resources$Visibility$Builder;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibilityBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Visibility$Builder;->build()Lcom/android/aapt/Resources$Visibility;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibility_:Lcom/android/aapt/Resources$Visibility;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Visibility$Builder;->build()Lcom/android/aapt/Resources$Visibility;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setVisibility(Lcom/android/aapt/Resources$Visibility;)Lcom/android/aapt/Resources$Entry$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibilityBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->visibility_:Lcom/android/aapt/Resources$Visibility;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$Entry$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
