.class public final synthetic Lcom/android/tools/r8/graph/Rh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Lcom/android/tools/r8/internal/ns0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Rh;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Rh;->b:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/Rh;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Rh;->b:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/XR;

    move-result-object v0

    return-object v0
.end method
