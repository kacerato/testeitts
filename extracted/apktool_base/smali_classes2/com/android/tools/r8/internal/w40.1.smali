.class public final Lcom/android/tools/r8/internal/w40;
.super Lcom/android/tools/r8/internal/x40;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/mP;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/mP;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/x40;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/w40;->b:Lcom/android/tools/r8/internal/mP;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/w40;->b:Lcom/android/tools/r8/internal/mP;

    return-object v0
.end method

.method public final a(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/w40;->b:Lcom/android/tools/r8/internal/mP;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/w40;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/w40;

    iget-object v0, p0, Lcom/android/tools/r8/internal/w40;->b:Lcom/android/tools/r8/internal/mP;

    iget-object p1, p1, Lcom/android/tools/r8/internal/w40;->b:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/mP;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/w40;->b:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mP;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/w40;->b:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mP;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
