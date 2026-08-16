.class public final Lcom/android/tools/r8/internal/NO;
.super Lcom/android/tools/r8/internal/OO;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/internal/NO;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/x40;

.field public final c:Lcom/android/tools/r8/internal/IO;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/NO;

    sget-object v1, Lcom/android/tools/r8/internal/v40;->b:Lcom/android/tools/r8/internal/v40;

    sget-object v2, Lcom/android/tools/r8/internal/IO;->e:Lcom/android/tools/r8/internal/IO;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/NO;-><init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/IO;)V

    sput-object v0, Lcom/android/tools/r8/internal/NO;->d:Lcom/android/tools/r8/internal/NO;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/IO;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/OO;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/NO;->b:Lcom/android/tools/r8/internal/x40;

    iput-object p2, p0, Lcom/android/tools/r8/internal/NO;->c:Lcom/android/tools/r8/internal/IO;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/mP;)Ljava/lang/String;
    .locals 2

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
.method public final d()Lcom/android/tools/r8/internal/IO;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/NO;->c:Lcom/android/tools/r8/internal/IO;

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/x40;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/NO;->b:Lcom/android/tools/r8/internal/x40;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/NO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/NO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/NO;->b:Lcom/android/tools/r8/internal/x40;

    iget-object v3, p1, Lcom/android/tools/r8/internal/NO;->b:Lcom/android/tools/r8/internal/x40;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/NO;->c:Lcom/android/tools/r8/internal/IO;

    iget-object p1, p1, Lcom/android/tools/r8/internal/NO;->c:Lcom/android/tools/r8/internal/IO;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/NO;->b:Lcom/android/tools/r8/internal/x40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/NO;->c:Lcom/android/tools/r8/internal/IO;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternGeneral$Builder;
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternGeneral;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternGeneral$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/NO;->c:Lcom/android/tools/r8/internal/IO;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/ON0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/ON0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternGeneral$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/IO;->a(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/NO;->b:Lcom/android/tools/r8/internal/x40;

    new-instance v2, Lcom/android/tools/r8/internal/PN0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/PN0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternGeneral$Builder;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/sP;->a(Lcom/android/tools/r8/internal/x40;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/NO;->b:Lcom/android/tools/r8/internal/x40;

    new-instance v1, Lcom/android/tools/r8/internal/QN0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/QN0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/x40;->a(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/NO;->c:Lcom/android/tools/r8/internal/IO;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Member{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "access="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
