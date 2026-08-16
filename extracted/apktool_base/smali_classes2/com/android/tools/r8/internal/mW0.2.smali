.class public final synthetic Lcom/android/tools/r8/internal/mW0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/c40;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Su;

.field public final synthetic b:Lcom/android/tools/r8/internal/kB;

.field public final synthetic c:Lcom/android/tools/r8/internal/d40;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Su;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/d40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mW0;->a:Lcom/android/tools/r8/internal/Su;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mW0;->b:Lcom/android/tools/r8/internal/kB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/mW0;->c:Lcom/android/tools/r8/internal/d40;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/mW0;->a:Lcom/android/tools/r8/internal/Su;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mW0;->b:Lcom/android/tools/r8/internal/kB;

    iget-object v2, p0, Lcom/android/tools/r8/internal/mW0;->c:Lcom/android/tools/r8/internal/d40;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/Su;->a(Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/d40;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)V

    return-void
.end method
