.class public abstract Lcom/android/tools/r8/internal/rk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetracedMethodReference;


# static fields
.field public static final c:Ljava/util/Comparator;


# instance fields
.field public final b:Ljava/util/OptionalInt;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/cs1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cs1;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ds1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ds1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/es1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/es1;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/fs1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/fs1;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Comparator;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/gs1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/gs1;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/hs1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/hs1;-><init>()V

    invoke-static {v4}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/nf;->b(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/rk0;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/OptionalInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rk0;->b:Ljava/util/OptionalInt;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/internal/pk0;
    .locals 2

    .line 3
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/pk0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/pk0;-><init>(Lcom/android/tools/r8/references/MethodReference;Ljava/util/OptionalInt;)V

    return-object v1
.end method

.method public static synthetic a(Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;->isVoid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "void"

    return-object p0

    :cond_1
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/pk0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOriginalPositionOrDefault(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/rk0;->b:Ljava/util/OptionalInt;

    invoke-virtual {v0, p1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p1

    return p1
.end method

.method public final hasPosition()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/rk0;->b:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    return v0
.end method

.method public final isKnown()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/pk0;

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/pk0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
