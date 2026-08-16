.class public final Lcom/android/tools/r8/internal/DN;
.super Lcom/android/tools/r8/internal/BN;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/MN;

.field public final b:Lcom/android/tools/r8/internal/QM;

.field public final c:Lcom/android/tools/r8/internal/jP;

.field public final d:Lcom/android/tools/r8/internal/cN;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/jP;Lcom/android/tools/r8/internal/cN;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/BN;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/DN;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/tools/r8/internal/DN;->a:Lcom/android/tools/r8/internal/MN;

    iput-object p2, p0, Lcom/android/tools/r8/internal/DN;->b:Lcom/android/tools/r8/internal/QM;

    iput-object p3, p0, Lcom/android/tools/r8/internal/DN;->c:Lcom/android/tools/r8/internal/jP;

    iput-object p4, p0, Lcom/android/tools/r8/internal/DN;->d:Lcom/android/tools/r8/internal/cN;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge$Builder;Lcom/android/tools/r8/internal/ZM;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Condition;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Condition$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/ZM;->a:Lcom/android/tools/r8/internal/MM;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/PM;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;->setName(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Condition$Builder;->setItem(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Condition$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge$Builder;->addPreconditions(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Condition$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge$Builder;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge$Builder;Lcom/android/tools/r8/internal/xP;)V
    .locals 0

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xP;->a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Target$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge$Builder;->addConsequences(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Target$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge$Builder;

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/DN;
    .locals 0

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge$Builder;
    .locals 5

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/DN;->a:Lcom/android/tools/r8/internal/MN;

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
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge$Builder;->setMetaInfo(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge$Builder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/DN;->b:Lcom/android/tools/r8/internal/QM;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/QM;->a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge$Builder;->setBindings(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge$Builder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/DN;->c:Lcom/android/tools/r8/internal/jP;

    new-instance v2, Lcom/android/tools/r8/internal/FC0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/FC0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/jP;->a(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/DN;->d:Lcom/android/tools/r8/internal/cN;

    new-instance v2, Lcom/android/tools/r8/internal/GC0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/GC0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/cN;->a(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/QM;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DN;->b:Lcom/android/tools/r8/internal/QM;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/DN;->c()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/I0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
