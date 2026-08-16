.class public final Lcom/android/tools/r8/internal/GN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/tP;

.field public b:Lcom/android/tools/r8/internal/IN;

.field public c:Lcom/android/tools/r8/internal/JN;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/tP;->c:Lcom/android/tools/r8/internal/tP;

    iput-object v0, p0, Lcom/android/tools/r8/internal/GN;->a:Lcom/android/tools/r8/internal/tP;

    sget-object v0, Lcom/android/tools/r8/internal/IN;->a:Lcom/android/tools/r8/internal/IN;

    iput-object v0, p0, Lcom/android/tools/r8/internal/GN;->b:Lcom/android/tools/r8/internal/IN;

    sget-object v0, Lcom/android/tools/r8/internal/JN;->b:Lcom/android/tools/r8/internal/JN;

    iput-object v0, p0, Lcom/android/tools/r8/internal/GN;->c:Lcom/android/tools/r8/internal/JN;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/MN;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/GN;->b:Lcom/android/tools/r8/internal/IN;

    sget-object v1, Lcom/android/tools/r8/internal/IN;->a:Lcom/android/tools/r8/internal/IN;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/IN;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/GN;->c:Lcom/android/tools/r8/internal/JN;

    .line 3
    sget-object v1, Lcom/android/tools/r8/internal/JN;->b:Lcom/android/tools/r8/internal/JN;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/JN;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/android/tools/r8/internal/MN;->d:Lcom/android/tools/r8/internal/MN;

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/MN;

    iget-object v1, p0, Lcom/android/tools/r8/internal/GN;->a:Lcom/android/tools/r8/internal/tP;

    iget-object v2, p0, Lcom/android/tools/r8/internal/GN;->b:Lcom/android/tools/r8/internal/IN;

    iget-object v3, p0, Lcom/android/tools/r8/internal/GN;->c:Lcom/android/tools/r8/internal/JN;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/MN;-><init>(Lcom/android/tools/r8/internal/tP;Lcom/android/tools/r8/internal/IN;Lcom/android/tools/r8/internal/JN;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/JN;->b:Lcom/android/tools/r8/internal/JN;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/JN;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/JN;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/GN;->c:Lcom/android/tools/r8/internal/JN;

    return-void
.end method
