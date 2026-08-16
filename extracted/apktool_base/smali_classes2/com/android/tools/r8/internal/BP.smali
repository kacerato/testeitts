.class public final Lcom/android/tools/r8/internal/BP;
.super Lcom/android/tools/r8/internal/DP;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/YM;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/YM;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/DP;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/BP;->a:Lcom/android/tools/r8/internal/YM;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Supplier;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/android/tools/r8/internal/BP;->a:Lcom/android/tools/r8/internal/YM;

    invoke-interface {p4, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/BP;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/BP;

    iget-object v0, p0, Lcom/android/tools/r8/internal/BP;->a:Lcom/android/tools/r8/internal/YM;

    iget-object p1, p1, Lcom/android/tools/r8/internal/BP;->a:Lcom/android/tools/r8/internal/YM;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/BP;->a:Lcom/android/tools/r8/internal/YM;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/BP;->a:Lcom/android/tools/r8/internal/YM;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
