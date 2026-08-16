.class public final synthetic Lu/L1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/dex/v;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/L1;->a:Lcom/android/tools/r8/dex/v;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lu/L1;->a:Lcom/android/tools/r8/dex/v;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/v;->a(Lcom/android/tools/r8/graph/H5;)I

    move-result p1

    return p1
.end method
