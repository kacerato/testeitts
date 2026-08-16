.class public final Lcom/android/tools/r8/shaking/j4;
.super Lcom/android/tools/r8/shaking/i4;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/shaking/j4;


# instance fields
.field public final b:Lcom/android/tools/r8/shaking/r4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/j4;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/j4;-><init>()V

    sput-object v0, Lcom/android/tools/r8/shaking/j4;->c:Lcom/android/tools/r8/shaking/j4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/shaking/r4$b;

    const-string v1, "***"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/r4$b;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/shaking/i4;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/shaking/j4;->b:Lcom/android/tools/r8/shaking/r4;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/r4;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/shaking/i4;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/shaking/j4;->b:Lcom/android/tools/r8/shaking/r4;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;
    .locals 1

    .line 4
    new-instance p1, Lcom/android/tools/r8/shaking/j4;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/j4;->b:Lcom/android/tools/r8/shaking/r4;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r4;->f()Lcom/android/tools/r8/shaking/r4;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/shaking/j4;-><init>(Lcom/android/tools/r8/shaking/r4;)V

    return-object p1
.end method

.method public final a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/j4;->b:Lcom/android/tools/r8/shaking/r4;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/shaking/j4;->b:Lcom/android/tools/r8/shaking/r4;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/j4;->b:Lcom/android/tools/r8/shaking/r4;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/j4;->b:Lcom/android/tools/r8/shaking/r4;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/r4;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/android/tools/r8/shaking/j4;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const-class v0, Lcom/android/tools/r8/shaking/j4;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "***"

    return-object v0
.end method
