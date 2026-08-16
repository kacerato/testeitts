.class public final synthetic Lcom/android/tools/r8/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/ER;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ER;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/c3;->a:Lcom/android/tools/r8/internal/ER;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/c3;->a:Lcom/android/tools/r8/internal/ER;

    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/ER;->a(Ljava/lang/String;[B)Lcom/android/tools/r8/internal/ER;

    return-void
.end method
