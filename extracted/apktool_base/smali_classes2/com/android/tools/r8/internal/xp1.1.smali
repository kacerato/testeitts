.class public final synthetic Lcom/android/tools/r8/internal/xp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ft0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/p80;

.field public final synthetic b:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/p80;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/xp1;->a:Lcom/android/tools/r8/internal/p80;

    iput-object p2, p0, Lcom/android/tools/r8/internal/xp1;->b:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/xp1;->a:Lcom/android/tools/r8/internal/p80;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xp1;->b:Ljava/util/HashSet;

    check-cast p1, Lcom/android/tools/r8/naming/b;

    check-cast p2, Lcom/android/tools/r8/naming/k;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/tools/r8/internal/p80;->a(Ljava/util/HashSet;Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/naming/k;Ljava/lang/String;)V

    return-void
.end method
