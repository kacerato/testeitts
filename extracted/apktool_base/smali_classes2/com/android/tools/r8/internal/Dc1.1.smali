.class public final synthetic Lcom/android/tools/r8/internal/Dc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/hE;

.field public final synthetic c:Lcom/android/tools/r8/internal/AA;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/hE;Lcom/android/tools/r8/internal/AA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dc1;->b:Lcom/android/tools/r8/internal/hE;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Dc1;->c:Lcom/android/tools/r8/internal/AA;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dc1;->b:Lcom/android/tools/r8/internal/hE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Dc1;->c:Lcom/android/tools/r8/internal/AA;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/hE;->a(Lcom/android/tools/r8/internal/AA;Ljava/util/List;)Lcom/android/tools/r8/internal/iE;

    move-result-object p1

    return-object p1
.end method
