.class public final Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPatternOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/fz;",
        "Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPatternOrBuilder;"
    }
.end annotation


# instance fields
.field private classItemBuilder_:Lcom/android/tools/r8/internal/Em0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation
.end field

.field private itemOneofCase_:I

.field private itemOneof_:Ljava/lang/Object;

.field private memberItemBuilder_:Lcom/android/tools/r8/internal/Em0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/internal/gz;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    .line 8
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/gz;Lcom/android/tools/r8/relocated/keepanno/proto/K;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;-><init>(Lcom/android/tools/r8/internal/gz;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/relocated/keepanno/proto/K;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;-><init>()V

    return-void
.end method

.method private getClassItemFieldBuilder()Lcom/android/tools/r8/internal/Em0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->classItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    check-cast v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->classItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->classItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->K()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method private getMemberItemFieldBuilder()Lcom/android/tools/r8/internal/Em0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->memberItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    check-cast v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->memberItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->memberItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->access$4900()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;
    .locals 4

    .line 3
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;-><init>(Lcom/android/tools/r8/internal/fz;Lcom/android/tools/r8/relocated/keepanno/proto/L;)V

    .line 4
    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->classItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;Ljava/lang/Object;)V

    .line 10
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->memberItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_2
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;Ljava/lang/Object;)V

    .line 16
    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->b(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;I)V

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/fz;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/android/tools/r8/internal/fz;->clear()Lcom/android/tools/r8/internal/fz;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearClassItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->classItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    if-ne v0, v3, :cond_0

    iput v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    :cond_0
    return-object p0

    :cond_1
    iget v4, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    if-ne v4, v3, :cond_2

    iput v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    return-object p1
.end method

.method public clearItemOneof()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public clearMemberItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->memberItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    if-ne v0, v3, :cond_0

    iput v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    :cond_0
    return-object p0

    :cond_1
    iget v4, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    if-ne v4, v3, :cond_2

    iput v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/N0;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/fz;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

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
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClassItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->classItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;

    move-result-object v0

    return-object v0
.end method

.method public getClassItemBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->getClassItemFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;

    return-object v0
.end method

.method public getClassItemOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPatternOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->classItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :goto_0
    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPatternOrBuilder;

    return-object v0

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->K()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method public getItemOneofCase()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$ItemOneofCase;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$ItemOneofCase;->forNumber(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$ItemOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getMemberItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->memberItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    move-result-object v0

    return-object v0
.end method

.method public getMemberItemBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->getMemberItemFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    return-object v0
.end method

.method public getMemberItemOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPatternOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->memberItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :goto_0
    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPatternOrBuilder;

    return-object v0

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    move-result-object v0

    return-object v0
.end method

.method public hasClassItem()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMemberItem()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->L()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;

    const-class v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeClassItem(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->classItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;->newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->classItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    :goto_1
    iput v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    :try_start_0
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->k()Lcom/android/tools/r8/internal/z50;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/tools/r8/internal/z50;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 19
    check-cast p2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
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

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    .line 22
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$ItemPattern$ItemOneofCase:[I

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->getItemOneofCase()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$ItemOneofCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->getMemberItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->mergeMemberItem(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->getClassItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->mergeClassItem(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    .line 14
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->access$5000(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;)Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public mergeMemberItem(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->memberItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->memberItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    :goto_1
    iput v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    return-object p1
.end method

.method public setClassItem(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->classItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    :goto_0
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    return-object p0
.end method

.method public setClassItem(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->classItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    :goto_0
    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    return-object p1
.end method

.method public setMemberItem(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->memberItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    :goto_0
    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    return-object p0
.end method

.method public setMemberItem(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->memberItemBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneof_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    :goto_0
    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->itemOneofCase_:I

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/fz;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    return-object p1
.end method
