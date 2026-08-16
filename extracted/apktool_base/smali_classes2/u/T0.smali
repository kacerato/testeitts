.class public final synthetic Lu/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Ljava/util/Collection;

.field public final synthetic b:Lcom/android/tools/r8/internal/pb0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;Lcom/android/tools/r8/internal/pb0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/T0;->a:Ljava/util/Collection;

    iput-object p2, p0, Lu/T0;->b:Lcom/android/tools/r8/internal/pb0;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lu/T0;->a:Ljava/util/Collection;

    iget-object v1, p0, Lu/T0;->b:Lcom/android/tools/r8/internal/pb0;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/dex/k;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/pb0;I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
