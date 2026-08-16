.class public final synthetic Lu/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/dex/C;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/d;->b:Lcom/android/tools/r8/dex/C;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu/d;->b:Lcom/android/tools/r8/dex/C;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/C;->c()Lcom/android/tools/r8/graph/z5;

    move-result-object v0

    return-object v0
.end method
