.class public final synthetic Lu/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/dex/n;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/j1;->b:Lcom/android/tools/r8/dex/n;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lu/j1;->b:Lcom/android/tools/r8/dex/n;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/n;->a(Ljava/util/Map$Entry;)V

    return-void
.end method
