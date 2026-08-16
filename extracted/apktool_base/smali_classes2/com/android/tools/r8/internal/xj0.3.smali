.class public final Lcom/android/tools/r8/internal/xj0;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# instance fields
.field public final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/xj0;->b:Ljava/util/function/Consumer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/ZQ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    const-string v0, "it"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/xj0;->b:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/tools/r8/internal/iv0;->a:Lcom/android/tools/r8/internal/iv0;

    return-object p1
.end method
