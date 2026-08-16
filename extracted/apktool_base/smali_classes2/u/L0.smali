.class public final synthetic Lu/L0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/lang/StringBuilder;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/L0;->b:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lu/L0;->c:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lu/L0;->b:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/L0;->c:Lcom/android/tools/r8/graph/y;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/dex/k;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
