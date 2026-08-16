.class public final Lcom/android/tools/r8/internal/dN;
.super Lcom/android/tools/r8/internal/rN;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/dN;

.field public static final d:Lcom/android/tools/r8/internal/dN;

.field public static final e:Lcom/android/tools/r8/internal/dN;

.field public static final synthetic f:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/IM;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/dN;

    sget-object v1, Lcom/android/tools/r8/internal/IM;->c:Lcom/android/tools/r8/internal/IM;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dN;-><init>(Lcom/android/tools/r8/internal/IM;)V

    sput-object v0, Lcom/android/tools/r8/internal/dN;->c:Lcom/android/tools/r8/internal/dN;

    new-instance v0, Lcom/android/tools/r8/internal/dN;

    sget-object v1, Lcom/android/tools/r8/internal/IM;->d:Lcom/android/tools/r8/internal/IM;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dN;-><init>(Lcom/android/tools/r8/internal/IM;)V

    sput-object v0, Lcom/android/tools/r8/internal/dN;->d:Lcom/android/tools/r8/internal/dN;

    new-instance v0, Lcom/android/tools/r8/internal/dN;

    sget-object v1, Lcom/android/tools/r8/internal/IM;->e:Lcom/android/tools/r8/internal/IM;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dN;-><init>(Lcom/android/tools/r8/internal/IM;)V

    sput-object v0, Lcom/android/tools/r8/internal/dN;->e:Lcom/android/tools/r8/internal/dN;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/IM;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/rN;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/dN;->f:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/dN;->b:Lcom/android/tools/r8/internal/IM;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Unexpected attempt to build element for annotation constraint"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/aP;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/bP;->f:Lcom/android/tools/r8/internal/bP;

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/aP;->b:Ljava/util/HashSet;

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/tN;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/tN;->a(Lcom/android/tools/r8/internal/dN;)V

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/dN;->b:Lcom/android/tools/r8/internal/IM;

    .line 7
    iget v0, v0, Lcom/android/tools/r8/internal/IM;->b:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/KM;->d:Lcom/android/tools/r8/internal/KM;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/KM;->e:Lcom/android/tools/r8/internal/KM;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/android/tools/r8/internal/KM;->f:Lcom/android/tools/r8/internal/KM;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/dN;->b:Lcom/android/tools/r8/internal/IM;

    .line 12
    iget v0, v0, Lcom/android/tools/r8/internal/IM;->b:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    .line 13
    sget-object v0, Lcom/android/tools/r8/internal/KM;->g:Lcom/android/tools/r8/internal/KM;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/android/tools/r8/internal/KM;->h:Lcom/android/tools/r8/internal/KM;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/android/tools/r8/internal/KM;->i:Lcom/android/tools/r8/internal/KM;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final b()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 2

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/dN;->b:Lcom/android/tools/r8/internal/IM;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IM;->a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->setAnnotation(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/dN;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/dN;

    iget-object v0, p0, Lcom/android/tools/r8/internal/dN;->b:Lcom/android/tools/r8/internal/IM;

    iget-object p1, p1, Lcom/android/tools/r8/internal/dN;->b:Lcom/android/tools/r8/internal/IM;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/IM;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/dN;->b:Lcom/android/tools/r8/internal/IM;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IM;->hashCode()I

    move-result v0

    return v0
.end method
