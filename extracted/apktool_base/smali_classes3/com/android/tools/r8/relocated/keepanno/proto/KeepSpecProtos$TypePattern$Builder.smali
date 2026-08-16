.class public final Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/fz;",
        "Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternOrBuilder;"
    }
.end annotation


# instance fields
.field private arrayBuilder_:Lcom/android/tools/r8/internal/Em0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation
.end field

.field private classPatternBuilder_:Lcom/android/tools/r8/internal/Em0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation
.end field

.field private typeOneofCase_:I

.field private typeOneof_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/internal/gz;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    .line 8
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/gz;Lcom/android/tools/r8/relocated/keepanno/proto/B0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;-><init>(Lcom/android/tools/r8/internal/gz;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/relocated/keepanno/proto/B0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;-><init>()V

    return-void
.end method

.method private getArrayFieldBuilder()Lcom/android/tools/r8/internal/Em0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->arrayBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    check-cast v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->arrayBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->arrayBuilder_:Lcom/android/tools/r8/internal/Em0;

    return-object v0
.end method

.method private getClassPatternFieldBuilder()Lcom/android/tools/r8/internal/Em0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->classPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    check-cast v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->classPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->classPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->C0()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->access$10200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;
    .locals 4

    .line 3
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;-><init>(Lcom/android/tools/r8/internal/fz;Lcom/android/tools/r8/relocated/keepanno/proto/C0;)V

    .line 4
    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v3, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;Ljava/lang/Object;)V

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->arrayBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;Ljava/lang/Object;)V

    .line 11
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->classPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_3
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;Ljava/lang/Object;)V

    .line 17
    :cond_4
    :goto_1
    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->b(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;I)V

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/fz;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/android/tools/r8/internal/fz;->clear()Lcom/android/tools/r8/internal/fz;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearArray()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->arrayBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    if-ne v0, v3, :cond_0

    iput v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    :cond_0
    return-object p0

    :cond_1
    iget v4, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    if-ne v4, v3, :cond_2

    iput v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    return-object p0
.end method

.method public clearClassPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->classPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    if-ne v0, v3, :cond_0

    iput v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    :cond_0
    return-object p0

    :cond_1
    iget v4, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    if-ne v4, v3, :cond_2

    iput v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    return-object p1
.end method

.method public clearPrimitive()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public clearTypeOneof()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/N0;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/fz;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

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
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getArray()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->arrayBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object v0

    return-object v0
.end method

.method public getArrayBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->getArrayFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    return-object v0
.end method

.method public getArrayOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArrayOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->arrayBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :goto_0
    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArrayOrBuilder;

    return-object v0

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object v0

    return-object v0
.end method

.method public getClassPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->classPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    move-result-object v0

    return-object v0
.end method

.method public getClassPatternBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->getClassPatternFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;

    return-object v0
.end method

.method public getClassPatternOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPatternOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->classPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :goto_0
    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPatternOrBuilder;

    return-object v0

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->C0()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method public getPrimitive()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;->valueOf(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;->UNRECOGNIZED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;

    :cond_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;->PRIMITIVE_UNSPECIFIED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;

    return-object v0
.end method

.method public getPrimitiveValue()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTypeOneofCase()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->forNumber(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public hasArray()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasClassPattern()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrimitive()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->D0()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    const-class v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeArray(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->arrayBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->arrayBuilder_:Lcom/android/tools/r8/internal/Em0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    :goto_1
    iput v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    return-object p0
.end method

.method public mergeClassPattern(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->classPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;->newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->classPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    :goto_1
    iput v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    :try_start_0
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->k()Lcom/android/tools/r8/internal/z50;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/tools/r8/internal/z50;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

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
    check-cast p2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    .line 23
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$TypePattern$TypeOneofCase:[I

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->getTypeOneofCase()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->getClassPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeClassPattern(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->getArray()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeArray(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->getPrimitiveValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->setPrimitiveValue(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    .line 15
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->access$10300(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    return-object p1
.end method

.method public setArray(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->arrayBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    :goto_0
    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    return-object p0
.end method

.method public setArray(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->arrayBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    :goto_0
    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    return-object p0
.end method

.method public setClassPattern(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->classPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    :goto_0
    const/4 p1, 0x3

    .line 11
    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    return-object p0
.end method

.method public setClassPattern(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->classPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    :goto_0
    const/4 p1, 0x3

    .line 6
    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    return-object p1
.end method

.method public setPrimitive(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public setPrimitiveValue(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneofCase_:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->typeOneof_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/fz;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    return-object p1
.end method
