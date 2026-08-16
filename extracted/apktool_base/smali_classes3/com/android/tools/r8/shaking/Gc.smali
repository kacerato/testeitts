.class public final synthetic Lcom/android/tools/r8/shaking/Gc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Gc;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Gc;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Gc;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Gc;->b:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method
