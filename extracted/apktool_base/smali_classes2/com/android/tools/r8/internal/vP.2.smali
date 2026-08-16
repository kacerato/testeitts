.class public final Lcom/android/tools/r8/internal/vP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/internal/vP;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/vP;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/tools/r8/internal/vP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/vP;->d:Lcom/android/tools/r8/internal/vP;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vP;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/vP;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/internal/vP;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;)Lcom/android/tools/r8/internal/vP;
    .locals 3

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;->hasExact()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;->getExact()Ljava/lang/String;

    move-result-object p0

    move-object v0, v1

    :goto_0
    move-object v2, v0

    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;->hasInexact()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;->getInexact()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPatternInexact;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPatternInexact;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPatternInexact;->getSuffix()Ljava/lang/String;

    move-result-object p0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_2

    .line 15
    :cond_1
    sget-boolean p0, Lcom/android/tools/r8/internal/uP;->a:Z

    if-nez p0, :cond_3

    .line 16
    sget-object p0, Lcom/android/tools/r8/internal/vP;->d:Lcom/android/tools/r8/internal/vP;

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    move-object p0, v1

    move-object v0, p0

    goto :goto_0

    :goto_2
    if-eqz p0, :cond_4

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/vP;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/tools/r8/internal/vP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-nez v2, :cond_5

    if-nez v0, :cond_5

    .line 19
    sget-object v0, Lcom/android/tools/r8/internal/vP;->d:Lcom/android/tools/r8/internal/vP;

    goto :goto_3

    .line 20
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/vP;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/tools/r8/internal/vP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_3
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/internal/vP;
    .locals 2

    if-eqz p0, :cond_0

    .line 21
    new-instance v0, Lcom/android/tools/r8/internal/vP;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/tools/r8/internal/vP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/vP;->d:Lcom/android/tools/r8/internal/vP;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vP;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/vP;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;->setExact(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPatternInexact;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPatternInexact$Builder;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/internal/vP;->b:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_2

    move-object v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPatternInexact$Builder;->setPrefix(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPatternInexact$Builder;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/internal/vP;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPatternInexact$Builder;->setSuffix(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPatternInexact$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;->setInexact(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPatternInexact$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/vP;->d:Lcom/android/tools/r8/internal/vP;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vP;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/vP;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/vP;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vP;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/internal/vP;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/vP;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/internal/vP;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/vP;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/internal/vP;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/vP;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vP;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vP;->c:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result v0

    const-string v1, "<*>"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vP;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vP;->a:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/vP;->b:Ljava/lang/String;

    const-string v2, ""

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/vP;->c:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v2, v3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
