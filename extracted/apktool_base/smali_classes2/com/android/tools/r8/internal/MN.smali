.class public final Lcom/android/tools/r8/internal/MN;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/internal/MN;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/tP;

.field public final b:Lcom/android/tools/r8/internal/IN;

.field public final c:Lcom/android/tools/r8/internal/JN;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/MN;

    sget-object v1, Lcom/android/tools/r8/internal/tP;->c:Lcom/android/tools/r8/internal/tP;

    sget-object v2, Lcom/android/tools/r8/internal/IN;->a:Lcom/android/tools/r8/internal/IN;

    sget-object v3, Lcom/android/tools/r8/internal/JN;->b:Lcom/android/tools/r8/internal/JN;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/MN;-><init>(Lcom/android/tools/r8/internal/tP;Lcom/android/tools/r8/internal/IN;Lcom/android/tools/r8/internal/JN;)V

    sput-object v0, Lcom/android/tools/r8/internal/MN;->d:Lcom/android/tools/r8/internal/MN;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/tP;Lcom/android/tools/r8/internal/IN;Lcom/android/tools/r8/internal/JN;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/MN;->a:Lcom/android/tools/r8/internal/tP;

    iput-object p2, p0, Lcom/android/tools/r8/internal/MN;->b:Lcom/android/tools/r8/internal/IN;

    iput-object p3, p0, Lcom/android/tools/r8/internal/MN;->c:Lcom/android/tools/r8/internal/JN;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;Lcom/android/tools/r8/internal/tP;)Lcom/android/tools/r8/internal/MN;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/GN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/GN;-><init>()V

    iput-object p1, v0, Lcom/android/tools/r8/internal/GN;->a:Lcom/android/tools/r8/internal/tP;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;->hasContext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;->getContext()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context;->hasClassDesc()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/HN;

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context;->getClassDesc()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/HN;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context;->hasMethodDesc()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context;->getMethodDesc()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getParameterTypesCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getParameterTypesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    invoke-virtual {v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/tools/r8/internal/LN;

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getHolder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getReturnType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1, v1}, Lcom/android/tools/r8/internal/LN;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context;->hasFieldDesc()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context;->getFieldDesc()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$FieldDesc;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/KN;

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$FieldDesc;->getHolder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$FieldDesc;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$FieldDesc;->getFieldType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/android/tools/r8/internal/KN;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/tools/r8/internal/IN;->a:Lcom/android/tools/r8/internal/IN;

    :goto_1
    iput-object v1, v0, Lcom/android/tools/r8/internal/GN;->b:Lcom/android/tools/r8/internal/IN;

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/GN;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/GN;->a()Lcom/android/tools/r8/internal/MN;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/MN;->a:Lcom/android/tools/r8/internal/tP;

    sget-object v2, Lcom/android/tools/r8/internal/tP;->c:Lcom/android/tools/r8/internal/tP;

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lcom/android/tools/r8/internal/IN;->a:Lcom/android/tools/r8/internal/IN;

    iget-object v2, p0, Lcom/android/tools/r8/internal/MN;->b:Lcom/android/tools/r8/internal/IN;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/IN;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object v1, Lcom/android/tools/r8/internal/JN;->b:Lcom/android/tools/r8/internal/JN;

    iget-object v2, p0, Lcom/android/tools/r8/internal/MN;->c:Lcom/android/tools/r8/internal/JN;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/JN;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/MN;->c:Lcom/android/tools/r8/internal/JN;

    iget-object v1, v1, Lcom/android/tools/r8/internal/JN;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/tools/r8/internal/Nk0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "description=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, ", "

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetaInfo{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
