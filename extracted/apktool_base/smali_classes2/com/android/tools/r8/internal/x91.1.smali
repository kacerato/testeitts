.class public final synthetic Lcom/android/tools/r8/internal/x91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/V60;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/ga;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/x91;->b:Lcom/android/tools/r8/internal/ga;

    iput-object p2, p0, Lcom/android/tools/r8/internal/x91;->c:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/x91;->b:Lcom/android/tools/r8/internal/ga;

    iget-object v1, p0, Lcom/android/tools/r8/internal/x91;->c:Lcom/android/tools/r8/graph/H5;

    check-cast p1, Lcom/android/tools/r8/internal/X9;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/X9;)Z

    move-result p1

    return p1
.end method
