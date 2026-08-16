.class public final Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArrayOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/fz;",
        "Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArrayOrBuilder;"
    }
.end annotation


# instance fields
.field private baseTypeBuilder_:Lcom/android/tools/r8/internal/Em0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation
.end field

.field private baseType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

.field private bitField0_:I

.field private dimensions_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/internal/gz;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/gz;Lcom/android/tools/r8/relocated/keepanno/proto/D0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;-><init>(Lcom/android/tools/r8/internal/gz;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/relocated/keepanno/proto/D0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;-><init>()V

    return-void
.end method

.method private getBaseTypeFieldBuilder()Lcom/android/tools/r8/internal/Em0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->getBaseType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->A0()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->access$10400()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->getBaseTypeFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;
    .locals 4

    .line 3
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;-><init>(Lcom/android/tools/r8/internal/fz;Lcom/android/tools/r8/relocated/keepanno/proto/E0;)V

    .line 4
    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 5
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->dimensions_:I

    invoke-static {v0, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->d(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;I)V

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->b(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)V

    goto :goto_1

    .line 8
    :cond_1
    iput-boolean v3, v1, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->b(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)V

    :goto_1
    or-int/lit8 v2, v2, 0x2

    .line 11
    :cond_2
    invoke-static {v0, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;I)V

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/fz;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/android/tools/r8/internal/fz;->clear()Lcom/android/tools/r8/internal/fz;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->dimensions_:I

    .line 7
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    .line 11
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearBaseType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    :goto_0
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDimensions()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->dimensions_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/N0;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/fz;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    return-object v0
.end method

.method public getBaseTypeBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->getBaseTypeFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    return-object v0
.end method

.method public getBaseTypeOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternOrBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :goto_0
    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternOrBuilder;

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->A0()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method public getDimensions()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->dimensions_:I

    return v0
.end method

.method public hasBaseType()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDimensions()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->B0()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    const-class v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeBaseType(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    :goto_1
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/eW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    :try_start_0
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->k()Lcom/android/tools/r8/internal/z50;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/tools/r8/internal/z50;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 20
    check-cast p2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MJ;->a()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    .line 23
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->hasDimensions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->getDimensions()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->setDimensions(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->hasBaseType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->getBaseType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->mergeBaseType(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    .line 15
    :cond_2
    invoke-static {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->access$10500(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;)Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    return-object p1
.end method

.method public setBaseType(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 11
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    return-object p0
.end method

.method public setBaseType(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->baseType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 6
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDimensions(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->bitField0_:I

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->dimensions_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/fz;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    return-object p1
.end method
