.class public final synthetic Lu/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/dex/n0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/n0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/x1;->b:Lcom/android/tools/r8/dex/n0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lu/x1;->b:Lcom/android/tools/r8/dex/n0;

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/n0;->a(Lcom/android/tools/r8/graph/L2;)Z

    return-void
.end method
