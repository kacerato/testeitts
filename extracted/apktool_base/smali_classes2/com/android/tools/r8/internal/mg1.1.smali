.class public final synthetic Lcom/android/tools/r8/internal/mg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/H5;

.field public final synthetic b:Lcom/android/tools/r8/internal/fB;

.field public final synthetic c:Lcom/android/tools/r8/internal/dX;

.field public final synthetic d:Lcom/android/tools/r8/internal/ns0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mg1;->a:Lcom/android/tools/r8/graph/H5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mg1;->b:Lcom/android/tools/r8/internal/fB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/mg1;->c:Lcom/android/tools/r8/internal/dX;

    iput-object p4, p0, Lcom/android/tools/r8/internal/mg1;->d:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/mg1;->a:Lcom/android/tools/r8/graph/H5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mg1;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v2, p0, Lcom/android/tools/r8/internal/mg1;->c:Lcom/android/tools/r8/internal/dX;

    iget-object v3, p0, Lcom/android/tools/r8/internal/mg1;->d:Lcom/android/tools/r8/internal/ns0;

    check-cast p1, Lcom/android/tools/r8/internal/l3;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/l3;)V

    return-void
.end method
