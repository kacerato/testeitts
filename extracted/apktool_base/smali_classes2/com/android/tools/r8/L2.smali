.class public final synthetic Lcom/android/tools/r8/L2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/R8;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/L2;->b:Lcom/android/tools/r8/R8;

    iput-object p2, p0, Lcom/android/tools/r8/L2;->c:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/L2;->b:Lcom/android/tools/r8/R8;

    iget-object v1, p0, Lcom/android/tools/r8/L2;->c:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v1}, Lcom/android/tools/r8/R8;->o(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
