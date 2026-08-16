.class public final synthetic Lcom/android/tools/r8/internal/Jg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/TW;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/TW;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Jg1;->b:Lcom/android/tools/r8/internal/TW;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jg1;->b:Lcom/android/tools/r8/internal/TW;

    check-cast p1, Lcom/android/tools/r8/internal/jX;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/kX;->a(Lcom/android/tools/r8/internal/TW;Lcom/android/tools/r8/internal/jX;)V

    return-void
.end method
