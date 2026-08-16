.class public final Lcom/android/tools/r8/shaking/Y1;
.super Lcom/android/tools/r8/shaking/a2;
.source "SourceFile"


# instance fields
.field public final b:[B


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/a2;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Y1;->b:[B

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$KeepSpec;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y1;->b:[B

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$KeepSpec;->parseFrom([B)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$KeepSpec;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/tools/r8/ResourceException;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/a2;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v1
.end method
