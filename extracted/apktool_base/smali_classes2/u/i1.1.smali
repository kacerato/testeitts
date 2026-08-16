.class public final synthetic Lu/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/gL;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/gL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/i1;->b:Lcom/android/tools/r8/internal/gL;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lu/i1;->b:Lcom/android/tools/r8/internal/gL;

    check-cast p1, Lcom/android/tools/r8/internal/z20;

    invoke-static {v0, p1}, Lcom/android/tools/r8/dex/n;->a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/z20;)V

    return-void
.end method
