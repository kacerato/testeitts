.class public final synthetic Lcom/android/tools/r8/internal/PY0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/bI;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic b:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/PY0;->a:Lcom/android/tools/r8/internal/Hz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/PY0;->b:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/PY0;->a:Lcom/android/tools/r8/internal/Hz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/PY0;->b:Lcom/android/tools/r8/internal/Hz;

    check-cast p2, Lcom/android/tools/r8/internal/N8;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/VS;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;ILcom/android/tools/r8/internal/N8;)Lcom/android/tools/r8/internal/N8;

    move-result-object p1

    return-object p1
.end method
