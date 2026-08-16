.class public final synthetic Lcom/android/tools/r8/internal/kJ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Yx0;

.field public final synthetic c:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/kJ0;->b:Lcom/android/tools/r8/internal/Yx0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/kJ0;->c:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/kJ0;->b:Lcom/android/tools/r8/internal/Yx0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/kJ0;->c:Lcom/android/tools/r8/graph/A2;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/J70;->a(Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method
