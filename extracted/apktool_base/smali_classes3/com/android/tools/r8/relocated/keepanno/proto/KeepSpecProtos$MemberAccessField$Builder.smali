.class public final Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessFieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/fz;",
        "Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessFieldOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private generalAccessBuilder_:Lcom/android/tools/r8/internal/Em0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation
.end field

.field private generalAccess_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

.field private transientPatternBuilder_:Lcom/android/tools/r8/internal/Em0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation
.end field

.field private transientPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

.field private volatilePatternBuilder_:Lcom/android/tools/r8/internal/Em0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation
.end field

.field private volatilePattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/internal/gz;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/gz;Lcom/android/tools/r8/relocated/keepanno/proto/O;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;-><init>(Lcom/android/tools/r8/internal/gz;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/relocated/keepanno/proto/O;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->O()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method private getGeneralAccessFieldBuilder()Lcom/android/tools/r8/internal/Em0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->getGeneralAccess()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccessBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccess_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccessBuilder_:Lcom/android/tools/r8/internal/Em0;

    return-object v0
.end method

.method private getTransientPatternFieldBuilder()Lcom/android/tools/r8/internal/Em0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->getTransientPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    return-object v0
.end method

.method private getVolatilePatternFieldBuilder()Lcom/android/tools/r8/internal/Em0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->getVolatilePattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->access$8500()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->getGeneralAccessFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->getVolatilePatternFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->getTransientPatternFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;
    .locals 5

    .line 3
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;-><init>(Lcom/android/tools/r8/internal/fz;Lcom/android/tools/r8/relocated/keepanno/proto/P;)V

    .line 4
    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccess_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    invoke-static {v0, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;)V

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v3, v2, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    .line 9
    check-cast v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    invoke-static {v0, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;)V

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_3

    .line 10
    iget-object v4, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v4, :cond_2

    .line 11
    iget-object v4, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    invoke-static {v0, v4}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->e(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;)V

    goto :goto_2

    .line 12
    :cond_2
    iput-boolean v3, v4, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 13
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v4

    .line 14
    check-cast v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    invoke-static {v0, v4}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->e(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;)V

    :goto_2
    or-int/lit8 v2, v2, 0x2

    :cond_3
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_4

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->d(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;)V

    goto :goto_3

    .line 17
    :cond_4
    iput-boolean v3, v1, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->d(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;)V

    :goto_3
    or-int/lit8 v2, v2, 0x4

    .line 20
    :cond_5
    invoke-static {v0, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->b(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;I)V

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/fz;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/android/tools/r8/internal/fz;->clear()Lcom/android/tools/r8/internal/fz;

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccessBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccess_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    .line 9
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    .line 11
    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    .line 13
    :goto_1
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_2

    .line 15
    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    .line 17
    :goto_2
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    return-object p1
.end method

.method public clearGeneralAccess()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccess_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    :goto_0
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    return-object p1
.end method

.method public clearTransientPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    :goto_0
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearVolatilePattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    :goto_0
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/N0;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/fz;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

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
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->O()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method public getGeneralAccess()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccess_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    return-object v0
.end method

.method public getGeneralAccessBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->getGeneralAccessFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;

    return-object v0
.end method

.method public getGeneralAccessOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneralOrBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :goto_0
    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneralOrBuilder;

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccess_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getTransientPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    return-object v0
.end method

.method public getTransientPatternBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->getTransientPatternFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;

    return-object v0
.end method

.method public getTransientPatternOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPatternOrBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :goto_0
    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPatternOrBuilder;

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getVolatilePattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    return-object v0
.end method

.method public getVolatilePatternBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->getVolatilePatternFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;

    return-object v0
.end method

.method public getVolatilePatternOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPatternOrBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :goto_0
    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPatternOrBuilder;

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public hasGeneralAccess()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasTransientPattern()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasVolatilePattern()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->P()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;

    const-class v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    :try_start_0
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->k()Lcom/android/tools/r8/internal/z50;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/tools/r8/internal/z50;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 22
    check-cast p2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
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

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    .line 25
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->hasGeneralAccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->getGeneralAccess()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeGeneralAccess(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->hasVolatilePattern()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->getVolatilePattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeVolatilePattern(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->hasTransientPattern()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->getTransientPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeTransientPattern(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    .line 17
    :cond_3
    invoke-static {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->access$8600(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;)Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public mergeGeneralAccess(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccess_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccess_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;->newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccess_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccess_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    :goto_1
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeTransientPattern(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    :goto_1
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    return-object p1
.end method

.method public mergeVolatilePattern(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    :goto_1
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    return-object p1
.end method

.method public setGeneralAccess(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccess_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 11
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    return-object p0
.end method

.method public setGeneralAccess(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->generalAccess_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 6
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/fz;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    return-object p1
.end method

.method public setTransientPattern(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 11
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    return-object p0
.end method

.method public setTransientPattern(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->transientPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 6
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    return-object p1
.end method

.method public setVolatilePattern(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 11
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    return-object p0
.end method

.method public setVolatilePattern(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePatternBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->volatilePattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 6
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->bitField0_:I

    return-object p0
.end method
