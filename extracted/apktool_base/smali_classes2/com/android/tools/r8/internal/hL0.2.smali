.class public final synthetic Lcom/android/tools/r8/internal/hL0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Xr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Ur0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ur0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/hL0;->a:Lcom/android/tools/r8/internal/Ur0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hL0;->a:Lcom/android/tools/r8/internal/Ur0;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/Ur0;Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
