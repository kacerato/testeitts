.class public final synthetic Lcom/android/tools/r8/internal/DC0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/android/tools/r8/shaking/s2;


# direct methods
.method public synthetic constructor <init>(ZLcom/android/tools/r8/shaking/s2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/DC0;->b:Z

    iput-object p2, p0, Lcom/android/tools/r8/internal/DC0;->c:Lcom/android/tools/r8/shaking/s2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/DC0;->b:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/DC0;->c:Lcom/android/tools/r8/shaking/s2;

    check-cast p1, Lcom/android/tools/r8/graph/G5;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/DM;->a(ZLcom/android/tools/r8/shaking/s2;Lcom/android/tools/r8/graph/G5;)V

    return-void
.end method
