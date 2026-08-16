.class public final Lcom/android/tools/r8/internal/L2;
.super Lcom/android/tools/r8/internal/pj;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Ad;

.field public final b:Lcom/android/tools/r8/internal/S3;

.field public final c:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/pj;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Ad;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ad;-><init>(Lcom/android/tools/r8/internal/I50;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/L2;->a:Lcom/android/tools/r8/internal/Ad;

    sget-object v1, Lcom/android/tools/r8/internal/zd;->c:Lcom/android/tools/r8/internal/zd;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/tools/r8/internal/zd;->d:Lcom/android/tools/r8/internal/zd;

    const-string v2, "constant"

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/tools/r8/internal/zd;->b:Lcom/android/tools/r8/internal/zd;

    const-string v2, "namePattern"

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/tools/r8/internal/S3;

    new-instance v2, Lcom/android/tools/r8/internal/CL0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/CL0;-><init>()V

    invoke-direct {v1, p1, v2}, Lcom/android/tools/r8/internal/S3;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/util/function/Function;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/L2;->b:Lcom/android/tools/r8/internal/S3;

    sget-object p1, Lcom/android/tools/r8/internal/O2;->b:Lcom/android/tools/r8/internal/O2;

    const-string v2, "retention"

    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/android/tools/r8/internal/DL0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/DL0;-><init>()V

    iput-object p1, v1, Lcom/android/tools/r8/internal/y80;->e:Ljava/util/function/BiConsumer;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/L2;->c:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/internal/I50;)V
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/tools/r8/internal/FM;

    const-string v0, "Expected non-empty array of retention policies"

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/internal/FM;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/hC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/L2;->c:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/IM;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pj;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/IM;->c:Lcom/android/tools/r8/internal/IM;

    new-instance v0, Lcom/android/tools/r8/internal/HM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/HM;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/L2;->b:Lcom/android/tools/r8/internal/S3;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/L2;->b:Lcom/android/tools/r8/internal/S3;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/y80;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lcom/android/tools/r8/internal/BL0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/BL0;-><init>(Lcom/android/tools/r8/internal/HM;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/HM;->a(Ljava/lang/annotation/RetentionPolicy;)Lcom/android/tools/r8/internal/HM;

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/L2;->a:Lcom/android/tools/r8/internal/Ad;

    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/mP;

    iput-object v1, v0, Lcom/android/tools/r8/internal/HM;->a:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/HM;->a()Lcom/android/tools/r8/internal/IM;

    move-result-object v0

    return-object v0
.end method
