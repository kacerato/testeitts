.class public final synthetic Lcom/android/tools/r8/shaking/Oc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Collection;

.field public final synthetic c:Lcom/android/tools/r8/shaking/i;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;Lcom/android/tools/r8/shaking/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Oc;->b:Ljava/util/Collection;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Oc;->c:Lcom/android/tools/r8/shaking/i;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Oc;->b:Ljava/util/Collection;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Oc;->c:Lcom/android/tools/r8/shaking/i;

    check-cast p1, Lcom/android/tools/r8/shaking/x1;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Collection;Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/shaking/x1;)V

    return-void
.end method
