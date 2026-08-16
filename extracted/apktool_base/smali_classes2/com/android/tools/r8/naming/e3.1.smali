.class public final synthetic Lcom/android/tools/r8/naming/e3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Kb;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Kb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/e3;->b:Lcom/android/tools/r8/internal/Kb;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/e3;->b:Lcom/android/tools/r8/internal/Kb;

    check-cast p1, Lcom/android/tools/r8/naming/mappinginformation/e;

    invoke-static {v0, p1}, Lcom/android/tools/r8/naming/k;->a(Lcom/android/tools/r8/internal/Kb;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    return-void
.end method
