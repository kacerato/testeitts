.class public final synthetic Lcom/android/tools/r8/internal/QF0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/QF0;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/QF0;->a:Ljava/util/Collection;

    check-cast p1, Lcom/android/tools/r8/internal/Nm;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Gc;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Nm;)V

    return-void
.end method
