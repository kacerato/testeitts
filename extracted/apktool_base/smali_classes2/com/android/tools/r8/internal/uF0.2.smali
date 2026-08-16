.class public final synthetic Lcom/android/tools/r8/internal/uF0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/zE;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/zE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uF0;->b:Lcom/android/tools/r8/internal/zE;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uF0;->b:Lcom/android/tools/r8/internal/zE;

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method
