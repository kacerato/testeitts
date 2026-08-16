.class public final synthetic Lcom/android/tools/r8/internal/eP0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/O10;

.field public final synthetic b:[Lcom/android/tools/r8/graph/M2;

.field public final synthetic c:Lcom/android/tools/r8/internal/G10;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/O10;[Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/G10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/eP0;->a:Lcom/android/tools/r8/internal/O10;

    iput-object p2, p0, Lcom/android/tools/r8/internal/eP0;->b:[Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/eP0;->c:Lcom/android/tools/r8/internal/G10;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/eP0;->a:Lcom/android/tools/r8/internal/O10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/eP0;->b:[Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/eP0;->c:Lcom/android/tools/r8/internal/G10;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/O10;->a([Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/G10;I)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method
