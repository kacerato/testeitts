.class public LSj/k$b;
.super LSj/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSj/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LLi/e0;

    invoke-direct {v0}, LLi/e0;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LSj/k;-><init>(LBi/b;Ljava/security/spec/PSSParameterSpec;)V

    return-void
.end method
