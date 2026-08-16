.class public final Lcom/android/tools/r8/internal/RN;
.super Lcom/android/tools/r8/internal/pj;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Fh;

.field public final b:Lcom/android/tools/r8/internal/S3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/B50;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/pj;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Fh;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Fh;-><init>(Lcom/android/tools/r8/internal/B50;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/RN;->a:Lcom/android/tools/r8/internal/Fh;

    sget-object v1, Lcom/android/tools/r8/internal/Eh;->b:Lcom/android/tools/r8/internal/Eh;

    const-string v2, "constraints"

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/tools/r8/internal/Eh;->c:Lcom/android/tools/r8/internal/Eh;

    const-string v2, "constraintAdditions"

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/tools/r8/internal/S3;

    new-instance v1, Lcom/android/tools/r8/internal/lV0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/lV0;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/S3;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/util/function/Function;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/RN;->b:Lcom/android/tools/r8/internal/S3;

    sget-object p1, Lcom/android/tools/r8/internal/M2;->b:Lcom/android/tools/r8/internal/M2;

    const-string v1, "constrainAnnotations"

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/android/tools/r8/internal/mV0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/mV0;-><init>(Lcom/android/tools/r8/internal/RN;)V

    iput-object p1, v0, Lcom/android/tools/r8/internal/y80;->e:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/wN;Lcom/android/tools/r8/internal/IM;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/IM;->c:Lcom/android/tools/r8/internal/IM;

    if-ne p1, v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/dN;->c:Lcom/android/tools/r8/internal/dN;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/IM;->d:Lcom/android/tools/r8/internal/IM;

    if-ne p1, v0, :cond_1

    .line 5
    sget-object p1, Lcom/android/tools/r8/internal/dN;->d:Lcom/android/tools/r8/internal/dN;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/IM;->e:Lcom/android/tools/r8/internal/IM;

    if-ne p1, v0, :cond_2

    .line 7
    sget-object p1, Lcom/android/tools/r8/internal/dN;->e:Lcom/android/tools/r8/internal/dN;

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/dN;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/dN;-><init>(Lcom/android/tools/r8/internal/IM;)V

    move-object p1, v0

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 10
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/I50;)V
    .locals 1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance p1, Lcom/android/tools/r8/internal/FM;

    const-string v0, "Expected non-empty array of annotation patterns"

    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/internal/FM;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Lcom/android/tools/r8/internal/hC;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/RN;->a:Lcom/android/tools/r8/internal/Fh;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RN;->b:Lcom/android/tools/r8/internal/S3;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/zN;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pj;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/RN;->b:Lcom/android/tools/r8/internal/S3;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/tools/r8/internal/RN;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/RN;->a:Lcom/android/tools/r8/internal/Fh;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/RN;->a:Lcom/android/tools/r8/internal/Fh;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y80;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zN;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/RN;->a:Lcom/android/tools/r8/internal/Fh;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/tools/r8/internal/wN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wN;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/RN;->a:Lcom/android/tools/r8/internal/Fh;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/y80;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zN;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/wN;->a(Lcom/android/tools/r8/internal/zN;)Lcom/android/tools/r8/internal/wN;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/internal/RN;->c:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wN;->a()V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/wN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wN;-><init>()V

    sget-object v1, Lcom/android/tools/r8/internal/yN;->c:Lcom/android/tools/r8/internal/yN;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/wN;->a(Lcom/android/tools/r8/internal/zN;)Lcom/android/tools/r8/internal/wN;

    move-result-object v0

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/RN;->b:Lcom/android/tools/r8/internal/S3;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/y80;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lcom/android/tools/r8/internal/kV0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/kV0;-><init>(Lcom/android/tools/r8/internal/wN;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/android/tools/r8/internal/xN;

    iget-object v2, v0, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/xN;-><init>(Ljava/util/HashSet;)V

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/wN;->a:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/tools/r8/internal/uN;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/uN;-><init>(Lcom/android/tools/r8/internal/xN;)V

    return-object v0

    :cond_6
    return-object v1
.end method
