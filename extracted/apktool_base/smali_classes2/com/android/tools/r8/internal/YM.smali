.class public final Lcom/android/tools/r8/internal/YM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/YM;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/mP;

.field public final b:Lcom/android/tools/r8/internal/DO;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/YM;

    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/YM;-><init>(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/DO;)V

    sput-object v0, Lcom/android/tools/r8/internal/YM;->c:Lcom/android/tools/r8/internal/YM;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/DO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    iput-object p2, p0, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;)Lcom/android/tools/r8/internal/YM;
    .locals 4

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    .line 10
    sget-boolean v2, Lcom/android/tools/r8/internal/XM;->c:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;->hasClassName()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;->getClassName()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/mP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;)Lcom/android/tools/r8/internal/mP;

    move-result-object v0

    :cond_2
    if-nez v2, :cond_4

    .line 13
    iget-object v2, v1, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 16
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;->hasInstanceOf()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;->getInstanceOf()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$InstanceOfPattern;

    move-result-object p0

    .line 18
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v2

    .line 19
    sget-boolean v3, Lcom/android/tools/r8/internal/BO;->a:Z

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 20
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$InstanceOfPattern;->hasClassName()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$InstanceOfPattern;->getClassName()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/mP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;)Lcom/android/tools/r8/internal/mP;

    move-result-object v2

    .line 22
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$InstanceOfPattern;->hasInclusive()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$InstanceOfPattern;->getInclusive()Z

    move-result p0

    goto :goto_3

    :cond_8
    const/4 p0, 0x1

    .line 24
    :goto_3
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz p0, :cond_9

    goto :goto_4

    .line 25
    :cond_9
    new-instance p0, Lcom/android/tools/r8/internal/FN;

    const-string v0, "Invalid instance-of pattern matching any class exclusive. This pattern matches nothing."

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_a
    new-instance v1, Lcom/android/tools/r8/internal/CO;

    invoke-direct {v1, v2, p0}, Lcom/android/tools/r8/internal/CO;-><init>(Lcom/android/tools/r8/internal/mP;Z)V

    .line 27
    :cond_b
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 28
    iget-object p0, v1, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 30
    sget-object p0, Lcom/android/tools/r8/internal/YM;->c:Lcom/android/tools/r8/internal/YM;

    return-object p0

    .line 31
    :cond_c
    new-instance p0, Lcom/android/tools/r8/internal/YM;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/YM;-><init>(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/DO;)V

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;
    .locals 3

    .line 5
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/o31;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/o31;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/mP;->a(Ljava/util/function/Consumer;)V

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    new-instance v2, Lcom/android/tools/r8/internal/p31;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/p31;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/DO;->a(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    check-cast v0, Lcom/android/tools/r8/internal/CO;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/YM;->a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/mP;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/YM;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/YM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    iget-object v3, p1, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/mP;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    iget-object p1, p1, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    iget-object v1, p0, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
