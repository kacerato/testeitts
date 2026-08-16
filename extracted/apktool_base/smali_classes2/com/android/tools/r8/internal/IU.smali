.class public final Lcom/android/tools/r8/internal/IU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/iW;


# instance fields
.field public final a:[Lcom/android/tools/r8/internal/iW;


# direct methods
.method public varargs constructor <init>([Lcom/android/tools/r8/internal/iW;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/IU;->a:[Lcom/android/tools/r8/internal/iW;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/IU;->a:[Lcom/android/tools/r8/internal/iW;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lcom/android/tools/r8/internal/iW;->b(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, p1}, Lcom/android/tools/r8/internal/iW;->a(Ljava/lang/Class;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "No factory is available for message type: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/Class;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/IU;->a:[Lcom/android/tools/r8/internal/iW;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/android/tools/r8/internal/iW;->b(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
