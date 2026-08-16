.class public final Lcom/android/tools/r8/internal/TM;
.super Lcom/android/tools/r8/internal/BN;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/MN;

.field public final b:I

.field public final c:Lcom/android/tools/r8/internal/QM;

.field public final d:Lcom/android/tools/r8/internal/MM;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/MN;ILcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/MM;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/BN;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/TM;->a:Lcom/android/tools/r8/internal/MN;

    iput p2, p0, Lcom/android/tools/r8/internal/TM;->b:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/TM;->c:Lcom/android/tools/r8/internal/QM;

    iput-object p4, p0, Lcom/android/tools/r8/internal/TM;->d:Lcom/android/tools/r8/internal/MM;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/TM;
    .locals 0

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/QM;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/TM;->c:Lcom/android/tools/r8/internal/QM;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/TM;->a:Lcom/android/tools/r8/internal/MN;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/tools/r8/internal/MN;->b:Lcom/android/tools/r8/internal/IN;

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/IN;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo$Builder;->setContext(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo$Builder;

    iget-object v3, v1, Lcom/android/tools/r8/internal/MN;->c:Lcom/android/tools/r8/internal/JN;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/JN;->a()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, v1, Lcom/android/tools/r8/internal/MN;->c:Lcom/android/tools/r8/internal/JN;

    iget-object v1, v1, Lcom/android/tools/r8/internal/JN;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo$Builder;->setDescription(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo$Builder;

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;->setMetaInfo(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/TM;->c:Lcom/android/tools/r8/internal/QM;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/QM;->a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;->setBindings(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/TM;->d:Lcom/android/tools/r8/internal/MM;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;

    move-result-object v2

    iget-object v1, v1, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/PM;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;->setName(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;->setItem(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/TM;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;->CHECK_REMOVED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;->CHECK_OPTIMIZED_OUT:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;->setKind(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/I0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
