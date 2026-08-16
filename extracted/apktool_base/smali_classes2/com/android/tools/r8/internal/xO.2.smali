.class public final Lcom/android/tools/r8/internal/xO;
.super Lcom/android/tools/r8/internal/OO;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/x40;

.field public final c:Lcom/android/tools/r8/internal/uO;

.field public final d:Lcom/android/tools/r8/internal/vO;

.field public final e:Lcom/android/tools/r8/internal/zO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/uO;Lcom/android/tools/r8/internal/vO;Lcom/android/tools/r8/internal/zO;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/OO;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/xO;->f:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/internal/xO;->b:Lcom/android/tools/r8/internal/x40;

    iput-object p2, p0, Lcom/android/tools/r8/internal/xO;->c:Lcom/android/tools/r8/internal/uO;

    iput-object p3, p0, Lcom/android/tools/r8/internal/xO;->d:Lcom/android/tools/r8/internal/vO;

    iput-object p4, p0, Lcom/android/tools/r8/internal/xO;->e:Lcom/android/tools/r8/internal/zO;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/mP;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/xO;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d()Lcom/android/tools/r8/internal/IO;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xO;->c:Lcom/android/tools/r8/internal/uO;

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/x40;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xO;->b:Lcom/android/tools/r8/internal/x40;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/xO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/xO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xO;->b:Lcom/android/tools/r8/internal/x40;

    iget-object v3, p1, Lcom/android/tools/r8/internal/xO;->b:Lcom/android/tools/r8/internal/x40;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/xO;->c:Lcom/android/tools/r8/internal/uO;

    iget-object v3, p1, Lcom/android/tools/r8/internal/xO;->c:Lcom/android/tools/r8/internal/uO;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/xO;->d:Lcom/android/tools/r8/internal/vO;

    iget-object v3, p1, Lcom/android/tools/r8/internal/xO;->d:Lcom/android/tools/r8/internal/vO;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/xO;->e:Lcom/android/tools/r8/internal/zO;

    iget-object p1, p1, Lcom/android/tools/r8/internal/xO;->e:Lcom/android/tools/r8/internal/zO;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/xO;->b:Lcom/android/tools/r8/internal/x40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xO;->c:Lcom/android/tools/r8/internal/uO;

    iget-object v2, p0, Lcom/android/tools/r8/internal/xO;->d:Lcom/android/tools/r8/internal/vO;

    iget-object v3, p0, Lcom/android/tools/r8/internal/xO;->e:Lcom/android/tools/r8/internal/zO;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField$Builder;
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/xO;->d:Lcom/android/tools/r8/internal/vO;

    iget-object v1, v1, Lcom/android/tools/r8/internal/vO;->a:Lcom/android/tools/r8/internal/vP;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/vP;->a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField$Builder;->setName(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/xO;->e:Lcom/android/tools/r8/internal/zO;

    check-cast v1, Lcom/android/tools/r8/internal/yO;

    iget-object v1, v1, Lcom/android/tools/r8/internal/yO;->a:Lcom/android/tools/r8/internal/DP;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/DP;->a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField$Builder;->setFieldType(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/xO;->c:Lcom/android/tools/r8/internal/uO;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/Ay1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Ay1;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/uO;->b(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/xO;->b:Lcom/android/tools/r8/internal/x40;

    new-instance v2, Lcom/android/tools/r8/internal/By1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/By1;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField$Builder;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/sP;->a(Lcom/android/tools/r8/internal/x40;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/xO;->b:Lcom/android/tools/r8/internal/x40;

    new-instance v1, Lcom/android/tools/r8/internal/zy1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/zy1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/x40;->a(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xO;->c:Lcom/android/tools/r8/internal/uO;

    iget-object v2, p0, Lcom/android/tools/r8/internal/xO;->d:Lcom/android/tools/r8/internal/vO;

    iget-object v3, p0, Lcom/android/tools/r8/internal/xO;->e:Lcom/android/tools/r8/internal/zO;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeepFieldPattern{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "access="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
