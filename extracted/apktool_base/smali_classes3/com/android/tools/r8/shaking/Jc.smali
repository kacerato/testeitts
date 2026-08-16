.class public final synthetic Lcom/android/tools/r8/shaking/Jc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Jc;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Jc;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Jc;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Jc;->b:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Map;Ljava/util/Set;)V

    return-void
.end method
