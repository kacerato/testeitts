.class public final synthetic Lu/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Xr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/dex/l;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/android/tools/r8/dex/t0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/l;Ljava/util/List;Lcom/android/tools/r8/dex/t0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/e1;->a:Lcom/android/tools/r8/dex/l;

    iput-object p2, p0, Lu/e1;->b:Ljava/util/List;

    iput-object p3, p0, Lu/e1;->c:Lcom/android/tools/r8/dex/t0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lu/e1;->a:Lcom/android/tools/r8/dex/l;

    iget-object v1, p0, Lu/e1;->b:Ljava/util/List;

    iget-object v2, p0, Lu/e1;->c:Lcom/android/tools/r8/dex/t0;

    check-cast p1, Lcom/android/tools/r8/dex/t0;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/dex/l;->a(Ljava/util/List;Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/dex/t0;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1
.end method
