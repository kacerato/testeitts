.class public final synthetic Lcom/android/tools/r8/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/w4;

.field public final synthetic b:Lcom/android/tools/r8/internal/nJ;

.field public final synthetic c:Lcom/android/tools/r8/dex/c;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/w4;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/dex/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/t1;->a:Lcom/android/tools/r8/graph/w4;

    iput-object p2, p0, Lcom/android/tools/r8/t1;->b:Lcom/android/tools/r8/internal/nJ;

    iput-object p3, p0, Lcom/android/tools/r8/t1;->c:Lcom/android/tools/r8/dex/c;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/t1;->a:Lcom/android/tools/r8/graph/w4;

    iget-object v1, p0, Lcom/android/tools/r8/t1;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, p0, Lcom/android/tools/r8/t1;->c:Lcom/android/tools/r8/dex/c;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/D8;->c(Lcom/android/tools/r8/graph/w4;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/dex/c;)Lcom/android/tools/r8/graph/h;

    move-result-object v0

    return-object v0
.end method
