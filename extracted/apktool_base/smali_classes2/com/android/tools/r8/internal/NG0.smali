.class public final synthetic Lcom/android/tools/r8/internal/NG0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Ef0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ef0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/NG0;->b:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/NG0;->b:Lcom/android/tools/r8/internal/Ef0;

    check-cast p1, Lcom/android/tools/r8/profile/art/diagnostic/HumanReadableArtProfileParserErrorDiagnostic;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method
