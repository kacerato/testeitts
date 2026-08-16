.class public final synthetic Lcom/android/tools/r8/internal/JL0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/gL;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/gL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/JL0;->a:Lcom/android/tools/r8/internal/gL;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/JL0;->a:Lcom/android/tools/r8/internal/gL;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/gL;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
