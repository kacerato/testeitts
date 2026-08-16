.class public final synthetic Lcom/android/tools/r8/internal/co1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/o3;

.field public final synthetic c:Lcom/android/tools/r8/internal/VJ;

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;

.field public final synthetic e:Lcom/android/tools/r8/internal/ns0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/o3;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/co1;->b:Lcom/android/tools/r8/internal/o3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/co1;->c:Lcom/android/tools/r8/internal/VJ;

    iput-object p3, p0, Lcom/android/tools/r8/internal/co1;->d:Lcom/android/tools/r8/graph/H5;

    iput-object p4, p0, Lcom/android/tools/r8/internal/co1;->e:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/co1;->b:Lcom/android/tools/r8/internal/o3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/co1;->c:Lcom/android/tools/r8/internal/VJ;

    iget-object v2, p0, Lcom/android/tools/r8/internal/co1;->d:Lcom/android/tools/r8/graph/H5;

    iget-object v3, p0, Lcom/android/tools/r8/internal/co1;->e:Lcom/android/tools/r8/internal/ns0;

    check-cast p1, Lcom/android/tools/r8/internal/wX;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/wX;)Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    return-object p1
.end method
