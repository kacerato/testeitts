.class public Lorg/eclipse/jdt/internal/core/nd/db/DBStatus;
.super Lorg/eclipse/core/runtime/Status;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 6

    .line 1
    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/db/Package;->PLUGIN_ID:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IOException"

    const/4 v1, 0x4

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 2
    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/db/Package;->PLUGIN_ID:Ljava/lang/String;

    const-string v4, "Error"

    const/4 v5, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
