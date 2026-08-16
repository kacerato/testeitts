.class public final synthetic Lcom/android/tools/r8/internal/EA1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/ya0;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Lcom/android/tools/r8/internal/Dq;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ya0;Ljava/util/Set;Lcom/android/tools/r8/internal/Dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/EA1;->a:Lcom/android/tools/r8/internal/ya0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/EA1;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/EA1;->c:Lcom/android/tools/r8/internal/Dq;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/EA1;->a:Lcom/android/tools/r8/internal/ya0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/EA1;->b:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/EA1;->c:Lcom/android/tools/r8/internal/Dq;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/ya0;->a(Ljava/util/Set;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
