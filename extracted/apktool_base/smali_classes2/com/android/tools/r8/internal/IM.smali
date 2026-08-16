.class public final Lcom/android/tools/r8/internal/IM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/IM;

.field public static final d:Lcom/android/tools/r8/internal/IM;

.field public static final e:Lcom/android/tools/r8/internal/IM;

.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/mP;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/IM;

    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/IM;-><init>(Lcom/android/tools/r8/internal/mP;I)V

    sput-object v0, Lcom/android/tools/r8/internal/IM;->c:Lcom/android/tools/r8/internal/IM;

    new-instance v0, Lcom/android/tools/r8/internal/IM;

    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/IM;-><init>(Lcom/android/tools/r8/internal/mP;I)V

    sput-object v0, Lcom/android/tools/r8/internal/IM;->d:Lcom/android/tools/r8/internal/IM;

    new-instance v0, Lcom/android/tools/r8/internal/IM;

    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/IM;-><init>(Lcom/android/tools/r8/internal/mP;I)V

    sput-object v0, Lcom/android/tools/r8/internal/IM;->e:Lcom/android/tools/r8/internal/IM;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/mP;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/IM;->f:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/IM;->a:Lcom/android/tools/r8/internal/mP;

    iput p2, p0, Lcom/android/tools/r8/internal/IM;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/IM;->a:Lcom/android/tools/r8/internal/mP;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/FI0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/FI0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/mP;->a(Ljava/util/function/Consumer;)V

    iget v1, p0, Lcom/android/tools/r8/internal/IM;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationRetention;->RETENTION_RUNTIME:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationRetention;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;->setRetention(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationRetention;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;

    return-object v0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationRetention;->RETENTION_CLASS:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationRetention;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;->setRetention(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationRetention;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;

    :cond_1
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/IM;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/IM;

    iget v1, p0, Lcom/android/tools/r8/internal/IM;->b:I

    iget v3, p1, Lcom/android/tools/r8/internal/IM;->b:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/IM;->a:Lcom/android/tools/r8/internal/mP;

    iget-object p1, p1, Lcom/android/tools/r8/internal/IM;->a:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/mP;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/IM;->a:Lcom/android/tools/r8/internal/mP;

    iget v1, p0, Lcom/android/tools/r8/internal/IM;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
