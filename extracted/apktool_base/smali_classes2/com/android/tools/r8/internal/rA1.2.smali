.class public final synthetic Lcom/android/tools/r8/internal/rA1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/UB;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/UB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rA1;->b:Lcom/android/tools/r8/internal/UB;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/rA1;->b:Lcom/android/tools/r8/internal/UB;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/yU;->a(Lcom/android/tools/r8/internal/UB;Ljava/util/Map$Entry;)V

    return-void
.end method
