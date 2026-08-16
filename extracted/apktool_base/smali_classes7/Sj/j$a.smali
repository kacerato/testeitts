.class public LSj/j$a;
.super LSj/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSj/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "RSASSA-PSS"

    invoke-static {}, LSj/j;->a()Lhi/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LSj/j;-><init>(Ljava/lang/String;Lhi/b;)V

    return-void
.end method
