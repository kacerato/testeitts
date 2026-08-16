.class public final synthetic Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/ft0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ft0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/A;->b:Lcom/android/tools/r8/internal/ft0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/A;->b:Lcom/android/tools/r8/internal/ft0;

    check-cast p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;

    invoke-static {v0, p1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;)V

    return-void
.end method
