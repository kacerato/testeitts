.class public final synthetic Lcom/android/tools/r8/internal/ES0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/LinkedHashMap;

.field public final synthetic b:Lcom/android/tools/r8/internal/BU;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/internal/BU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ES0;->a:Ljava/util/LinkedHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ES0;->b:Lcom/android/tools/r8/internal/BU;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ES0;->a:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ES0;->b:Lcom/android/tools/r8/internal/BU;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/internal/PA;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/QA;->a(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/PA;)V

    return-void
.end method
