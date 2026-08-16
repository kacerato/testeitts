.class public final synthetic Lu/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/naming/r0;

.field public final synthetic b:Ljava/util/TreeMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/r0;Ljava/util/TreeMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/G0;->a:Lcom/android/tools/r8/naming/r0;

    iput-object p2, p0, Lu/G0;->b:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lu/G0;->a:Lcom/android/tools/r8/naming/r0;

    iget-object v1, p0, Lu/G0;->b:Ljava/util/TreeMap;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/naming/r0;Ljava/util/TreeMap;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V

    return-void
.end method
