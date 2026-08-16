.class public abstract Lcom/android/tools/r8/internal/n60;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/l60;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/tools/r8/internal/n60;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    new-instance v0, Lcom/android/tools/r8/internal/l60;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/l60;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/n60;->a:Lcom/android/tools/r8/internal/l60;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
