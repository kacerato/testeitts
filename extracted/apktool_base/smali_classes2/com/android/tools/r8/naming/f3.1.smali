.class public final synthetic Lcom/android/tools/r8/naming/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Kb;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Kb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/f3;->a:Lcom/android/tools/r8/internal/Kb;

    iput-object p2, p0, Lcom/android/tools/r8/naming/f3;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/f3;->a:Lcom/android/tools/r8/internal/Kb;

    iget-object v1, p0, Lcom/android/tools/r8/naming/f3;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/tools/r8/naming/V;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/naming/k;->a(Lcom/android/tools/r8/internal/Kb;Ljava/lang/String;Lcom/android/tools/r8/naming/V;)V

    return-void
.end method
