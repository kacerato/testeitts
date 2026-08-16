.class public final Lcom/android/tools/r8/internal/Co0;
.super Lcom/android/tools/r8/internal/F1;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Q30;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Q30;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/F1;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/Co0;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Q30;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Co0;->b:Lcom/android/tools/r8/internal/Q30;

    return-void
.end method


# virtual methods
.method public final Q()Lcom/android/tools/r8/internal/Co0;
    .locals 0

    return-object p0
.end method

.method public final T()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Co0;->b:Lcom/android/tools/r8/internal/Q30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Q30;->c()I

    move-result v0

    return v0
.end method

.method public final U()Lcom/android/tools/r8/internal/Q30;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Co0;->b:Lcom/android/tools/r8/internal/Q30;

    return-object v0
.end method

.method public final W()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Co0;->b:Lcom/android/tools/r8/internal/Q30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Q30;->d()Z

    move-result v0

    return v0
.end method

.method public final X()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/Co0;->b:Lcom/android/tools/r8/internal/Q30;

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/tools/r8/internal/Q30;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Q30;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Q30;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/Co0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Co0;-><init>(Lcom/android/tools/r8/internal/Q30;)V

    return-object p2
.end method

.method public final b0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/Co0;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Co0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Co0;->b:Lcom/android/tools/r8/internal/Q30;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Co0;->b:Lcom/android/tools/r8/internal/Q30;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Q30;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Co0;->b:Lcom/android/tools/r8/internal/Q30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Q30;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Co0;->b:Lcom/android/tools/r8/internal/Q30;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatefulValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
