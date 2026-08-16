.class public final synthetic Lu/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Xr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/dex/k;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/k;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/F0;->a:Lcom/android/tools/r8/dex/k;

    iput-object p2, p0, Lu/F0;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lu/F0;->a:Lcom/android/tools/r8/dex/k;

    iget-object v1, p0, Lu/F0;->b:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/dex/t0;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/dex/k;->a(Ljava/util/List;Lcom/android/tools/r8/dex/t0;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1
.end method
