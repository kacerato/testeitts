.class Lorg/eclipse/jdt/internal/core/nd/db/Package;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static PLUGIN_ID:Ljava/lang/String; = "org.eclipse.jdt.core"

.field public static final STATUS_DATABASE_TOO_LARGE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createStatus(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/eclipse/core/runtime/IStatus;
    .locals 3

    new-instance v0, Lorg/eclipse/core/runtime/Status;

    const/4 v1, 0x4

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/db/Package;->PLUGIN_ID:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Package;->createStatus(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Package;->log(Lorg/eclipse/core/runtime/IStatus;)V

    return-void
.end method

.method public static log(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "Error"

    invoke-static {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/db/Package;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/db/Package;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static log(Lorg/eclipse/core/runtime/IStatus;)V
    .locals 1

    .line 5
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/Plugin;->getLog()Lorg/eclipse/core/runtime/ILog;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/eclipse/core/runtime/ILog;->log(Lorg/eclipse/core/runtime/IStatus;)V

    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/eclipse/core/runtime/Status;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/db/Package;->PLUGIN_ID:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, p0, v2}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Package;->log(Lorg/eclipse/core/runtime/IStatus;)V

    return-void
.end method
