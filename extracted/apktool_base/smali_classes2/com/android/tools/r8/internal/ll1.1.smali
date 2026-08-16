.class public final synthetic Lcom/android/tools/r8/internal/ll1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Uq0;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/ll0;

.field public final synthetic c:Lcom/android/tools/r8/internal/Ef0;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/Ef0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ll1;->b:Lcom/android/tools/r8/internal/ll0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ll1;->c:Lcom/android/tools/r8/internal/Ef0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/ll1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ll1;->b:Lcom/android/tools/r8/internal/ll0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ll1;->c:Lcom/android/tools/r8/internal/Ef0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ll1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/ml0;->a(Lcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/Ef0;Ljava/lang/String;)Lcom/android/tools/r8/internal/ll0;

    move-result-object v0

    return-object v0
.end method
