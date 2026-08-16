.class public final synthetic Lcom/android/tools/r8/internal/ao1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Vf;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Vf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ao1;->b:Lcom/android/tools/r8/internal/Vf;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ao1;->b:Lcom/android/tools/r8/internal/Vf;

    check-cast p1, Ljava/util/function/Function;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/ZC;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method
