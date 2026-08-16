.class public abstract Lcom/android/tools/r8/diagnostic/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/diagnostic/internal/j;->a:Lcom/android/tools/r8/internal/hC;

    return-void
.end method


# virtual methods
.method public final getDiagnosticMessage()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/android/tools/r8/diagnostic/internal/k;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getReferencedFromContexts()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/diagnostic/internal/j;->a:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method
