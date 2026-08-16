.class public final synthetic Lcom/android/tools/r8/internal/qD0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/M;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/EI;

.field public final synthetic b:Lcom/android/tools/r8/internal/ga;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/internal/ga;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qD0;->a:Lcom/android/tools/r8/internal/EI;

    iput-object p2, p0, Lcom/android/tools/r8/internal/qD0;->b:Lcom/android/tools/r8/internal/ga;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/qD0;->a:Lcom/android/tools/r8/internal/EI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qD0;->b:Lcom/android/tools/r8/internal/ga;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    return-object p1
.end method
