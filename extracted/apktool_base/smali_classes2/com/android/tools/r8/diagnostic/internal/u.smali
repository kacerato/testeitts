.class public final synthetic Lcom/android/tools/r8/diagnostic/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/diagnostic/internal/i;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/diagnostic/internal/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/diagnostic/internal/u;->b:Lcom/android/tools/r8/diagnostic/internal/i;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/diagnostic/internal/u;->b:Lcom/android/tools/r8/diagnostic/internal/i;

    check-cast p1, Lcom/android/tools/r8/diagnostic/DefinitionContext;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/diagnostic/internal/i;->a(Lcom/android/tools/r8/diagnostic/DefinitionContext;)Lcom/android/tools/r8/diagnostic/internal/i;

    return-void
.end method
