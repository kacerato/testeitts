.class public LSj/k$z;
.super LSj/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSj/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "z"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    new-instance v0, LLi/e0;

    invoke-direct {v0}, LLi/e0;-><init>()V

    new-instance v7, Ljava/security/spec/PSSParameterSpec;

    const/16 v5, 0x40

    const/4 v6, 0x1

    const-string v2, "SHA3-512"

    const-string v3, "SHAKE256"

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-direct {p0, v0, v7}, LSj/k;-><init>(LBi/b;Ljava/security/spec/PSSParameterSpec;)V

    return-void
.end method
