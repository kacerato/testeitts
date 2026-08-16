.class public final synthetic Lcom/android/tools/r8/A3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/function/Consumer;

.field public final synthetic c:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/A3;->b:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/tools/r8/A3;->c:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/A3;->b:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/tools/r8/A3;->c:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/tools/r8/shaking/o3$a;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/R8Command$Builder;->x(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/o3$a;)V

    return-void
.end method
