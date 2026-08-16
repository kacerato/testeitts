.class public final synthetic Lcom/android/tools/r8/internal/JN0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/NA;

.field public final synthetic b:Lcom/android/tools/r8/internal/BU;

.field public final synthetic c:Lcom/android/tools/r8/internal/IA;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/NA;Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/JN0;->a:Lcom/android/tools/r8/internal/NA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/JN0;->b:Lcom/android/tools/r8/internal/BU;

    iput-object p3, p0, Lcom/android/tools/r8/internal/JN0;->c:Lcom/android/tools/r8/internal/IA;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/JN0;->a:Lcom/android/tools/r8/internal/NA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/JN0;->b:Lcom/android/tools/r8/internal/BU;

    iget-object v2, p0, Lcom/android/tools/r8/internal/JN0;->c:Lcom/android/tools/r8/internal/IA;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    check-cast p2, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/NA;->b(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
