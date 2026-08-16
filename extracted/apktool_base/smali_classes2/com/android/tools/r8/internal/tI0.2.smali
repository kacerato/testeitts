.class public final synthetic Lcom/android/tools/r8/internal/tI0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/I10;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/I10;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tI0;->b:Lcom/android/tools/r8/internal/I10;

    iput-object p2, p0, Lcom/android/tools/r8/internal/tI0;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/tI0;->b:Lcom/android/tools/r8/internal/I10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/tI0;->c:Ljava/util/Set;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/I10;->a(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method
