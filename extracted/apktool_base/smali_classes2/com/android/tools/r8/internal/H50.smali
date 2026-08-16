.class public final Lcom/android/tools/r8/internal/H50;
.super Lcom/android/tools/r8/internal/I50;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/I50;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/I50;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/I50;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/I50;->c()Lcom/android/tools/r8/internal/I50;

    move-result-object p1

    sget-boolean v0, Lcom/android/tools/r8/internal/I50;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/I50;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/H50;->b:Lcom/android/tools/r8/internal/I50;

    iput-object p2, p0, Lcom/android/tools/r8/internal/H50;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/H50;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "property"

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/I50;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/H50;->b:Lcom/android/tools/r8/internal/I50;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/H50;->c:Ljava/lang/String;

    const-string v1, "value"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
