.class public abstract Lcom/android/tools/r8/internal/Q2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Q2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Q2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Q2;->a:Lcom/android/tools/r8/internal/Q2;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q2;->a:Lcom/android/tools/r8/internal/Q2;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q2;->a:Lcom/android/tools/r8/internal/Q2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q2;->a:Lcom/android/tools/r8/internal/Q2;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Q2;->a()V

    :cond_0
    return-void
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
