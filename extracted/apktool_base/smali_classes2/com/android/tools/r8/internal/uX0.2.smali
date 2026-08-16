.class public final synthetic Lcom/android/tools/r8/internal/uX0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Rc;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Rc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uX0;->b:Lcom/android/tools/r8/internal/Rc;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uX0;->b:Lcom/android/tools/r8/internal/Rc;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Tc;->a(Lcom/android/tools/r8/internal/Rc;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
