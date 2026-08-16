.class public abstract Lcom/android/tools/r8/internal/OO;
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

.method public static synthetic a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;Lcom/android/tools/r8/internal/OO;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/android/tools/r8/internal/NO;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/NO;->i()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternGeneral$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;->setGeneralMember(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternGeneral$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;Lcom/android/tools/r8/internal/WO;)V
    .locals 0

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WO;->i()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;->setMethodMember(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;Lcom/android/tools/r8/internal/xO;)V
    .locals 0

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xO;->i()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;->setFieldMember(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/xO;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/android/tools/r8/internal/H4;->a(Ljava/util/function/Consumer;)Ljava/util/function/Function;

    move-result-object p1

    .line 3
    invoke-static {p2}, Lcom/android/tools/r8/internal/H4;->a(Ljava/util/function/Consumer;)Ljava/util/function/Function;

    move-result-object p2

    .line 4
    invoke-static {p3}, Lcom/android/tools/r8/internal/H4;->a(Ljava/util/function/Consumer;)Ljava/util/function/Function;

    move-result-object p3

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->a()Lcom/android/tools/r8/internal/xO;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 9
    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/internal/OO;->a:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->b()Lcom/android/tools/r8/internal/WO;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Lcom/android/tools/r8/internal/WO;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;
    .locals 4

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/FP0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/FP0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;)V

    new-instance v2, Lcom/android/tools/r8/internal/GP0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/GP0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;)V

    new-instance v3, Lcom/android/tools/r8/internal/HP0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/HP0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/tools/r8/internal/OO;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public abstract d()Lcom/android/tools/r8/internal/IO;
.end method

.method public abstract e()Lcom/android/tools/r8/internal/x40;
.end method

.method public final f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->a()Lcom/android/tools/r8/internal/xO;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->b()Lcom/android/tools/r8/internal/WO;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
