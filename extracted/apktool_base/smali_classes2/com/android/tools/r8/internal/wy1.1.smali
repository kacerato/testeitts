.class public final synthetic Lcom/android/tools/r8/internal/wy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/IH;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/IH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wy1;->b:Lcom/android/tools/r8/internal/IH;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wy1;->b:Lcom/android/tools/r8/internal/IH;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/xK;->a(Lcom/android/tools/r8/internal/IH;Ljava/lang/Object;)V

    return-void
.end method
