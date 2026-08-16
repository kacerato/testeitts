.class public final Lcom/android/tools/r8/synthesis/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/GlobalSyntheticsConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/g50;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/g50;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/h;->a:Lcom/android/tools/r8/internal/g50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/tools/r8/ByteDataView;Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/h;->a:Lcom/android/tools/r8/internal/g50;

    invoke-virtual {p2}, Lcom/android/tools/r8/references/ClassReference;->getBinaryName()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".globals"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/g50;->a(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/h;->a:Lcom/android/tools/r8/internal/g50;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/g50;->a(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method
