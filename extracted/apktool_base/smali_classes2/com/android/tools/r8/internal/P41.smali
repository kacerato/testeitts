.class public final synthetic Lcom/android/tools/r8/internal/P41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Yi$a;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Yi$a;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/P41;->a:Lcom/android/tools/r8/internal/Yi$a;

    iput-object p2, p0, Lcom/android/tools/r8/internal/P41;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/P41;->a:Lcom/android/tools/r8/internal/Yi$a;

    iget-object v1, p0, Lcom/android/tools/r8/internal/P41;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/ad;->a(Lcom/android/tools/r8/internal/Yi$a;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/v50;

    move-result-object v0

    return-object v0
.end method
