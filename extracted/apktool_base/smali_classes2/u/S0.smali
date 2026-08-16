.class public final synthetic Lu/S0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/dex/k;

.field public final synthetic c:Lcom/android/tools/r8/graph/w5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/k;Lcom/android/tools/r8/graph/w5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/S0;->b:Lcom/android/tools/r8/dex/k;

    iput-object p2, p0, Lu/S0;->c:Lcom/android/tools/r8/graph/w5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lu/S0;->b:Lcom/android/tools/r8/dex/k;

    iget-object v1, p0, Lu/S0;->c:Lcom/android/tools/r8/graph/w5;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
