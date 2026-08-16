.class public final synthetic Lcom/android/tools/r8/k3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lv$a;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/R8AssistantCommand;

.field public final synthetic b:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/R8AssistantCommand;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/k3;->a:Lcom/android/tools/r8/R8AssistantCommand;

    iput-object p2, p0, Lcom/android/tools/r8/k3;->b:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/k3;->a:Lcom/android/tools/r8/R8AssistantCommand;

    iget-object v1, p0, Lcom/android/tools/r8/k3;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v1}, Lcom/android/tools/r8/R8Assistant;->b(Lcom/android/tools/r8/R8AssistantCommand;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method
