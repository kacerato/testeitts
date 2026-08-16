.class public final synthetic Lcom/android/tools/r8/internal/nz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/IdentityHashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/nz0;->b:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nz0;->b:Ljava/util/IdentityHashMap;

    check-cast p1, Lcom/android/tools/r8/internal/o50;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Aj;->a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/o50;)V

    return-void
.end method
