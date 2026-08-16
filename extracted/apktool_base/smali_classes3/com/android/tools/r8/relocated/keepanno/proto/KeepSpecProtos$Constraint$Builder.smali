.class public final Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/fz;",
        "Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintOrBuilder;"
    }
.end annotation


# instance fields
.field private annotationBuilder_:Lcom/android/tools/r8/internal/Em0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation
.end field

.field private constraintOneofCase_:I

.field private constraintOneof_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/internal/gz;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    .line 8
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/gz;Lcom/android/tools/r8/relocated/keepanno/proto/w;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;-><init>(Lcom/android/tools/r8/internal/gz;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/relocated/keepanno/proto/w;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;-><init>()V

    return-void
.end method

.method private getAnnotationFieldBuilder()Lcom/android/tools/r8/internal/Em0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->annotationBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    check-cast v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->annotationBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->annotationBuilder_:Lcom/android/tools/r8/internal/Em0;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->w()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->access$4700()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;
    .locals 4

    .line 3
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;-><init>(Lcom/android/tools/r8/internal/fz;Lcom/android/tools/r8/relocated/keepanno/proto/x;)V

    .line 4
    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v3, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;Ljava/lang/Object;)V

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->annotationBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;Ljava/lang/Object;)V

    .line 11
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->b(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;I)V

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/fz;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/android/tools/r8/internal/fz;->clear()Lcom/android/tools/r8/internal/fz;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearAnnotation()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->annotationBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    if-ne v0, v3, :cond_0

    iput v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    :cond_0
    return-object p0

    :cond_1
    iget v4, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    if-ne v4, v3, :cond_2

    iput v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    return-object p0
.end method

.method public clearConstraintOneof()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public clearElement()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/N0;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/fz;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

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
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->annotationBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->getAnnotationFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;

    return-object v0
.end method

.method public getAnnotationOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPatternOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->annotationBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :goto_0
    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPatternOrBuilder;

    return-object v0

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;

    move-result-object v0

    return-object v0
.end method

.method public getConstraintOneofCase()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$ConstraintOneofCase;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$ConstraintOneofCase;->forNumber(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$ConstraintOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->w()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method public getElement()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;->valueOf(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;->UNRECOGNIZED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;

    :cond_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;->CONSTRAINT_UNSPECIFIED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;

    return-object v0
.end method

.method public getElementValue()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAnnotation()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasElement()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->x()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;

    const-class v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeAnnotation(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->annotationBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;->newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->annotationBuilder_:Lcom/android/tools/r8/internal/Em0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    :goto_1
    iput v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    :try_start_0
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->k()Lcom/android/tools/r8/internal/z50;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/tools/r8/internal/z50;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

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
    check-cast p2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    .line 22
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$Constraint$ConstraintOneofCase:[I

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->getConstraintOneofCase()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$ConstraintOneofCase;

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
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->getAnnotation()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->mergeAnnotation(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->getElementValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->setElementValue(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    .line 14
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->access$4800(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;)Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    return-object p1
.end method

.method public setAnnotation(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->annotationBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    :goto_0
    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    return-object p0
.end method

.method public setAnnotation(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->annotationBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    :goto_0
    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    return-object p0
.end method

.method public setElement(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public setElementValue(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneofCase_:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->constraintOneof_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/fz;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    return-object p1
.end method
