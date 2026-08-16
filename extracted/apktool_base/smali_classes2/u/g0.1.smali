.class public final synthetic Lu/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/dex/a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/g0;->b:Lcom/android/tools/r8/dex/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lu/g0;->b:Lcom/android/tools/r8/dex/a;

    check-cast p1, Lcom/android/tools/r8/internal/vJ;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/a;->a(Lcom/android/tools/r8/internal/vJ;)V

    return-void
.end method
