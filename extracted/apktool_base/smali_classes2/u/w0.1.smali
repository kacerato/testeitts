.class public final synthetic Lu/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/dex/h0;

.field public final synthetic b:Lcom/android/tools/r8/dex/g0;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lcom/android/tools/r8/internal/RR;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/h0;Lcom/android/tools/r8/dex/g0;Ljava/util/Map;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/w0;->a:Lcom/android/tools/r8/dex/h0;

    iput-object p2, p0, Lu/w0;->b:Lcom/android/tools/r8/dex/g0;

    iput-object p3, p0, Lu/w0;->c:Ljava/util/Map;

    iput-object p4, p0, Lu/w0;->d:Lcom/android/tools/r8/internal/RR;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lu/w0;->a:Lcom/android/tools/r8/dex/h0;

    iget-object v1, p0, Lu/w0;->b:Lcom/android/tools/r8/dex/g0;

    iget-object v2, p0, Lu/w0;->c:Ljava/util/Map;

    iget-object v3, p0, Lu/w0;->d:Lcom/android/tools/r8/internal/RR;

    check-cast p1, Lcom/android/tools/r8/internal/vo0;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/dex/h0;->a(Lcom/android/tools/r8/dex/g0;Ljava/util/Map;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/vo0;)V

    return-void
.end method
