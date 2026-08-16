.class public abstract Lcom/android/tools/r8/internal/MM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/PM;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/PM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/UM;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/MM;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/MM;->a()Lcom/android/tools/r8/internal/UM;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/MM;->b:Z

    if-nez p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/MM;->b()Lcom/android/tools/r8/internal/JO;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/MM;->b()Lcom/android/tools/r8/internal/JO;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/android/tools/r8/internal/JO;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/PM;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/MM;->a()Lcom/android/tools/r8/internal/UM;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/MM;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/MM;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/MM;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MM;->d()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    iget-object p1, p1, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/MM;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method
