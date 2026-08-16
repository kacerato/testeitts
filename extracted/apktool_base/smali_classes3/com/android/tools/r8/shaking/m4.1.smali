.class public final Lcom/android/tools/r8/shaking/m4;
.super Lcom/android/tools/r8/shaking/i4;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/shaking/m4;

.field public static final e:Lcom/android/tools/r8/shaking/m4;

.field public static final synthetic f:Z = true


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/android/tools/r8/shaking/r4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/shaking/m4;

    new-instance v1, Lcom/android/tools/r8/shaking/r4$b;

    const-string v2, "**"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/r4$b;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/shaking/m4;-><init>(Ljava/lang/String;Lcom/android/tools/r8/shaking/r4;)V

    sput-object v0, Lcom/android/tools/r8/shaking/m4;->d:Lcom/android/tools/r8/shaking/m4;

    new-instance v0, Lcom/android/tools/r8/shaking/m4;

    new-instance v1, Lcom/android/tools/r8/shaking/r4$b;

    const-string v2, "*"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/r4$b;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/shaking/m4;-><init>(Ljava/lang/String;Lcom/android/tools/r8/shaking/r4;)V

    sput-object v0, Lcom/android/tools/r8/shaking/m4;->e:Lcom/android/tools/r8/shaking/m4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/shaking/r4;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/i4;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/shaking/m4;->f:Z

    if-nez v0, :cond_1

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/shaking/m4;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/m4;->c:Lcom/android/tools/r8/shaking/r4;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;
    .locals 2

    .line 4
    new-instance p1, Lcom/android/tools/r8/shaking/m4;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/m4;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/m4;->c:Lcom/android/tools/r8/shaking/r4;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/r4;->f()Lcom/android/tools/r8/shaking/r4;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/shaking/m4;-><init>(Ljava/lang/String;Lcom/android/tools/r8/shaking/r4;)V

    return-object p1
.end method

.method public final a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/m4;->c:Lcom/android/tools/r8/shaking/r4;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/shaking/m4;->c:Lcom/android/tools/r8/shaking/r4;

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
    iget-object v0, p0, Lcom/android/tools/r8/shaking/m4;->c:Lcom/android/tools/r8/shaking/r4;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/m4;->c:Lcom/android/tools/r8/shaking/r4;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/r4;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/shaking/m4;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/m4;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/tools/r8/shaking/m4;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/m4;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/m4;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/m4;->b:Ljava/lang/String;

    return-object v0
.end method
