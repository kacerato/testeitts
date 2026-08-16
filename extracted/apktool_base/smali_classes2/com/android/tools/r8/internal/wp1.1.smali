.class public final synthetic Lcom/android/tools/r8/internal/wp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/p80;

.field public final synthetic b:Lcom/android/tools/r8/internal/ft0;

.field public final synthetic c:Lcom/android/tools/r8/naming/b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/p80;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/naming/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wp1;->a:Lcom/android/tools/r8/internal/p80;

    iput-object p2, p0, Lcom/android/tools/r8/internal/wp1;->b:Lcom/android/tools/r8/internal/ft0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/wp1;->c:Lcom/android/tools/r8/naming/b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/wp1;->a:Lcom/android/tools/r8/internal/p80;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wp1;->b:Lcom/android/tools/r8/internal/ft0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/wp1;->c:Lcom/android/tools/r8/naming/b;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/p80;->a(Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/naming/b;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
