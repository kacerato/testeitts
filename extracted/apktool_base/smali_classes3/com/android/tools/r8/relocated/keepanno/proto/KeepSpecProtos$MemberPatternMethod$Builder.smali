.class public final Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethodOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/fz;",
        "Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethodOrBuilder;"
    }
.end annotation


# instance fields
.field private accessBuilder_:Lcom/android/tools/r8/internal/Em0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation
.end field

.field private access_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

.field private annotatedByBuilder_:Lcom/android/tools/r8/internal/Em0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation
.end field

.field private annotatedBy_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

.field private bitField0_:I

.field private nameBuilder_:Lcom/android/tools/r8/internal/Em0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation
.end field

.field private name_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

.field private parameterTypesBuilder_:Lcom/android/tools/r8/internal/Em0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation
.end field

.field private parameterTypes_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

.field private returnTypeBuilder_:Lcom/android/tools/r8/internal/Em0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation
.end field

.field private returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/internal/gz;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/gz;Lcom/android/tools/r8/relocated/keepanno/proto/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;-><init>(Lcom/android/tools/r8/internal/gz;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/relocated/keepanno/proto/d0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;-><init>()V

    return-void
.end method

.method private getAccessFieldBuilder()Lcom/android/tools/r8/internal/Em0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->accessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getAccess()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->accessBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->access_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->accessBuilder_:Lcom/android/tools/r8/internal/Em0;

    return-object v0
.end method

.method private getAnnotatedByFieldBuilder()Lcom/android/tools/r8/internal/Em0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedByBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getAnnotatedBy()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedByBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedBy_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedByBuilder_:Lcom/android/tools/r8/internal/Em0;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->a0()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method private getNameFieldBuilder()Lcom/android/tools/r8/internal/Em0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->nameBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getName()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->nameBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->name_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->nameBuilder_:Lcom/android/tools/r8/internal/Em0;

    return-object v0
.end method

.method private getParameterTypesFieldBuilder()Lcom/android/tools/r8/internal/Em0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypesBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getParameterTypes()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypesBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypes_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypesBuilder_:Lcom/android/tools/r8/internal/Em0;

    return-object v0
.end method

.method private getReturnTypeFieldBuilder()Lcom/android/tools/r8/internal/Em0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/Em0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getReturnType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->access$9300()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getAccessFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getAnnotatedByFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getNameFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getReturnTypeFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getParameterTypesFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;
    .locals 5

    .line 3
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;-><init>(Lcom/android/tools/r8/internal/fz;Lcom/android/tools/r8/relocated/keepanno/proto/e0;)V

    .line 4
    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->accessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->access_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    invoke-static {v0, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->b(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;)V

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v3, v2, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    .line 9
    check-cast v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    invoke-static {v0, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->b(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;)V

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_3

    .line 10
    iget-object v4, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedByBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v4, :cond_2

    .line 11
    iget-object v4, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedBy_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    invoke-static {v0, v4}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;)V

    goto :goto_2

    .line 12
    :cond_2
    iput-boolean v3, v4, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 13
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v4

    .line 14
    check-cast v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    invoke-static {v0, v4}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;)V

    :goto_2
    or-int/lit8 v2, v2, 0x2

    :cond_3
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_5

    .line 15
    iget-object v4, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->nameBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v4, :cond_4

    .line 16
    iget-object v4, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->name_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    invoke-static {v0, v4}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->e(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;)V

    goto :goto_3

    .line 17
    :cond_4
    iput-boolean v3, v4, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 18
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v4

    .line 19
    check-cast v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    invoke-static {v0, v4}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->e(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;)V

    :goto_3
    or-int/lit8 v2, v2, 0x4

    :cond_5
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_7

    .line 20
    iget-object v4, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v4, :cond_6

    .line 21
    iget-object v4, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    invoke-static {v0, v4}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->g(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;)V

    goto :goto_4

    .line 22
    :cond_6
    iput-boolean v3, v4, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 23
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v4

    .line 24
    check-cast v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    invoke-static {v0, v4}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->g(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;)V

    :goto_4
    or-int/lit8 v2, v2, 0x8

    :cond_7
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    .line 25
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypesBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_8

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypes_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->f(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;)V

    goto :goto_5

    .line 27
    :cond_8
    iput-boolean v3, v1, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 28
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    invoke-static {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->f(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;)V

    :goto_5
    or-int/lit8 v2, v2, 0x10

    .line 30
    :cond_9
    invoke-static {v0, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->d(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/fz;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/android/tools/r8/internal/fz;->clear()Lcom/android/tools/r8/internal/fz;

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->accessBuilder_:Lcom/android/tools/r8/internal/Em0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->access_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    .line 9
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedByBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    .line 11
    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedBy_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    .line 13
    :goto_1
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->nameBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_2

    .line 15
    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->name_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    .line 17
    :goto_2
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_3

    .line 19
    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    goto :goto_3

    .line 20
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    .line 21
    :goto_3
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypesBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_4

    .line 23
    iput-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypes_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    goto :goto_4

    .line 24
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    .line 25
    :goto_4
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAccess()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->accessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->access_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    :goto_0
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAnnotatedBy()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedByBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedBy_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    :goto_0
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    return-object p1
.end method

.method public clearName()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->nameBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->name_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    :goto_0
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    return-object p1
.end method

.method public clearParameterTypes()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypesBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypes_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    :goto_0
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearReturnType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->b()V

    :goto_0
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/N0;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/fz;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

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
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->clone()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccess()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->accessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->access_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    return-object v0
.end method

.method public getAccessBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getAccessFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;

    return-object v0
.end method

.method public getAccessOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethodOrBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->accessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :goto_0
    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethodOrBuilder;

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->access_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getAnnotatedBy()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedByBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedBy_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    return-object v0
.end method

.method public getAnnotatedByBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern$Builder;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getAnnotatedByFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern$Builder;

    return-object v0
.end method

.method public getAnnotatedByOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPatternOrBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedByBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :goto_0
    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPatternOrBuilder;

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedBy_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->a0()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->nameBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->name_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    return-object v0
.end method

.method public getNameBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getNameFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;

    return-object v0
.end method

.method public getNameOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPatternOrBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->nameBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :goto_0
    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPatternOrBuilder;

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->name_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getParameterTypes()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypesBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypes_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    return-object v0
.end method

.method public getParameterTypesBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern$Builder;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getParameterTypesFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern$Builder;

    return-object v0
.end method

.method public getParameterTypesOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPatternOrBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypesBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :goto_0
    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPatternOrBuilder;

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypes_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getReturnType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    return-object v0
.end method

.method public getReturnTypeBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$Builder;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->getReturnTypeFieldBuilder()Lcom/android/tools/r8/internal/Em0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$Builder;

    return-object v0
.end method

.method public getReturnTypeOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePatternOrBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :goto_0
    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePatternOrBuilder;

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public hasAccess()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAnnotatedBy()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasName()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasParameterTypes()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasReturnType()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->b0()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;

    const-class v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeAccess(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->accessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->access_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->access_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->access_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->access_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    :goto_1
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeAnnotatedBy(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedByBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedBy_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedBy_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;->newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedBy_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedBy_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    :goto_1
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->k()Lcom/android/tools/r8/internal/z50;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/tools/r8/internal/z50;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 26
    check-cast p2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
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

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    .line 29
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->hasAccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->getAccess()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeAccess(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->hasAnnotatedBy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->getAnnotatedBy()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeAnnotatedBy(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->hasName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->getName()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeName(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->hasReturnType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->getReturnType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeReturnType(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->hasParameterTypes()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->getParameterTypes()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeParameterTypes(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    .line 21
    :cond_5
    invoke-static {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->access$9400(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;)Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public mergeName(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->nameBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->name_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->name_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;->newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->name_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->name_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    :goto_1
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeParameterTypes(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypesBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypes_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypes_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;->newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypes_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypes_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    :goto_1
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeReturnType(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;->newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    :goto_1
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    return-object p1
.end method

.method public setAccess(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->accessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->access_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 11
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public setAccess(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->accessBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->access_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 6
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public setAnnotatedBy(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedByBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedBy_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 11
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public setAnnotatedBy(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedByBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->annotatedBy_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 6
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    return-object p1
.end method

.method public setName(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->nameBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->name_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 11
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public setName(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->nameBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->name_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 6
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public setParameterTypes(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypesBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypes_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 11
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public setParameterTypes(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypesBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->parameterTypes_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 6
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/fz;->setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    return-object p1
.end method

.method public setReturnType(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 11
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public setReturnType(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnTypeBuilder_:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Em0;->b(Lcom/android/tools/r8/internal/K0;)V

    .line 6
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    return-object p1
.end method
