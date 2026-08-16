.class public abstract Lcom/android/tools/r8/internal/FO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;Lcom/android/tools/r8/internal/LO;)V
    .locals 3

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;

    move-result-object v2

    iget-object v1, v1, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/PM;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;->setName(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;->setClassReference(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/LO;->c:Lcom/android/tools/r8/internal/OO;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/OO;->c()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;->setMemberPattern(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->setMemberItem(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;Lcom/android/tools/r8/internal/WM;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WM;->f()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;->setClassItem(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/WM;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lcom/android/tools/r8/internal/LO;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;
    .locals 4

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/oE0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/oE0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;)V

    new-instance v2, Lcom/android/tools/r8/internal/pE0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/pE0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/H4;->a(Ljava/util/function/Consumer;)Ljava/util/function/Function;

    move-result-object v1

    invoke-static {v2}, Lcom/android/tools/r8/internal/H4;->a(Ljava/util/function/Consumer;)Ljava/util/function/Function;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FO;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FO;->a()Lcom/android/tools/r8/internal/WM;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/FO;->a:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FO;->b()Lcom/android/tools/r8/internal/LO;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FO;->b()Lcom/android/tools/r8/internal/LO;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public abstract d()Ljava/util/List;
.end method

.method public final e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FO;->a()Lcom/android/tools/r8/internal/WM;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
